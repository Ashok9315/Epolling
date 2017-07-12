using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Net.Mail;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class otp : System.Web.UI.Page
{
    static int election_id;
    static string title1 = "";


    static string resultotp = "";
    protected void Page_Load(object sender, EventArgs e)
    {
        election_id = Convert.ToInt32(Request.QueryString["id"]);
        title1 = Request.QueryString["title"];
    }

    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        if (otp1.Value.ToString() == resultotp.ToString())
        {
            Response.Redirect("voting.aspx?id=" + election_id + "&title=" + title1);

        }
        else
        {
            lblOTP.Text = "Please Enter the Valid OTP";
        }
    }

    protected void LinkButton2_Click(object sender, EventArgs e)
    {
        int election_id;
        string title1 = "";

        election_id = Convert.ToInt32(Request.QueryString["id"]);
        title1 = Request.QueryString["title"];

        string alphabets = "ABCDEFGHIJKLMNOPQRSTUVWXYZ";

        string numbers = "1234567890";

        string characters = numbers;

        characters += alphabets + numbers;

        int length = 5;
        string otp = string.Empty;
        for (int i = 0; i < length; i++)
        {
            string character = string.Empty;
            do
            {
                int index = new Random().Next(0, characters.Length);
                character = characters.ToCharArray()[index].ToString();
            } while (otp.IndexOf(character) != -1);
            otp += character;
        }
        resultotp = otp;
        sendmail(getemailid(Context.User.Identity.Name), "Yout OTP has enerated *do not reply*", "OTP:" + resultotp);
        lblOTP.Text = "";
    }
    
    private void sendmail(string email, string subject, string body)
    {
        try
        {
            MailMessage mail = new MailMessage();
            SmtpClient SmtpServer = new SmtpClient("smtp.gmail.com");

            mail.From = new MailAddress("ashok9315@gmail.com");
            mail.To.Add(email);
            mail.Subject = subject;
            mail.Body = body;

            SmtpServer.Port = 587;
            SmtpServer.Credentials = new System.Net.NetworkCredential("ashok9315@gmail.com", "Syntel_757");
            SmtpServer.EnableSsl = true;

            SmtpServer.Send(mail);

        }
        catch (Exception ex)
        {


        }
    }


    private string getemailid(string adharid)
    {
        SqlConnection con;
        string str = ConfigurationManager.ConnectionStrings["votingdatabase"].ToString();
        con = new SqlConnection(str);
        con.Open();

        string c = "select email from users1 where adharid='" + adharid + "'";
        SqlCommand cmd1 = new SqlCommand(c, con);
        SqlDataReader dr = cmd1.ExecuteReader();
        dr.Read();
        string email = dr.GetString(0);
        dr.Close();
        return email;
    }
}