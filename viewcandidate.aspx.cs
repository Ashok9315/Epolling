using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class viewcandidate : System.Web.UI.Page
{
    SqlConnection con;
    string user_id;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Request.QueryString["id"] != null)
        {
            user_id = Request.QueryString["id"].ToString();
        }
       
        Label3.Text = "";
        Label4.Text = "";
        Label5.Text = "";
        Label6.Text = "";
        Label7.Text = "";
        Label8.Text = "";
        Label9.Text = "";
        Label10.Text = "";
        Label11.Text = "";
        Label12.Text = "";
        Label13.Text = "";
        Label14.Text = "";

        string str = ConfigurationManager.ConnectionStrings["votingdatabase"].ToString();
        con = new SqlConnection(str);
        con.Open();

        string c = "select * from users1 where adharid='" + user_id + "'";
        SqlCommand cmd = new SqlCommand(c, con);
        SqlDataReader dr = cmd.ExecuteReader();
        dr.Read();

        Label3.Text = dr.GetString(1);
        Label4.Text = dr.GetString(2);
        Label5.Text = dr.GetString(3);
        Label6.Text = dr.GetString(4);
        Label7.Text = dr.GetString(6);
        Label8.Text = dr.GetString(7);
        Label9.Text = dr.GetString(8);
        Label10.Text = dr.GetString(9);
        Label11.Text = dr.GetString(10);
        Label12.Text = dr.GetString(11);
        Label13.Text = dr.GetString(12);
        string tgender= dr.GetString(13);
        if (tgender.Contains('m'))
        {
            tgender = "MALE";
        }
        else
        {
            tgender = "FEMALE";
        }
        Label14.Text = tgender;
        Image1.ImageUrl = "/profile/" + dr.GetString(15);

    }
}