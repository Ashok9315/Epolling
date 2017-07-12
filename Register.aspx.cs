using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Net.Mail;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class images_Register : System.Web.UI.Page
{
    SqlConnection con;
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void LinkButton1_Click(object sender, EventArgs e)
    {


        string strname = adharno.Value + ".jpg";
        if (photo.HasFile)
        {

            photo.PostedFile.SaveAs(Server.MapPath("~/profile/") + strname);
        }
        string temp1 = adharno.Value + firstname.Value + lastname.Value + strname;
        int randno1 = temp1.GetHashCode();
        string str = ConfigurationManager.ConnectionStrings["votingdatabase"].ToString();
        con = new SqlConnection(str);
        con.Open();


        string command = "insert into users1 values('" + adharno.Value + "','" + firstname.Value + "','" + lastname.Value + "','" + state.Value + "','" + mobile.Value + "','" + email.Value + "','" + birthdate.Value + "','" + District.Value + "','" + city.Value + "','" + pincode.Value + "','" + Area.Value + "','" + Address.Value + "','" + gender.SelectedValue + "','" + pass.Value + "','" + strname + "','" + randno1 + "','"+"')";
        SqlCommand cmd = new SqlCommand(command, con);
        try
        {
            cmd.ExecuteNonQuery();
        }
        catch (SqlException ex)
        {
            Response.Write("Error. Check if you are already registered with same ID.");
        }
        con.Close();
        string sub1 = "Your Random Number has been Generated * Do not -reply";
        string bdy = " Random Number:" + randno1;
        sendrandomno(randno1,email.Value.ToString(),sub1,bdy);
        Response.Redirect("Default.aspx?uid=" + adharno.Value);
    }
    private void sendrandomno(int ranmdomno,string email,string subject,string body)
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
}