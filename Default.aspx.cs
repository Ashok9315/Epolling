﻿using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Net.Mail;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    SqlConnection con;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Request.QueryString["uid"] != null)
        {
            string msg = "You have successfully registered " + Request.QueryString["uid"].ToString() + ". Please Login.";
            Label1.Text = msg;
        }
        else
            Label1.Text = null;
    }

    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        string str = ConfigurationManager.ConnectionStrings["votingdatabase"].ToString();
        con = new SqlConnection(str);
        con.Open();

        SqlCommand cmd = new SqlCommand("select * from users1 where adharid='" + username.Value + "' and password='" + password.Value +"'" + " and radomno='" + randomid.Value + "'", con);
        SqlDataReader dr = cmd.ExecuteReader();
        if (dr.Read() == true)
        {
            string rand1 = dr.GetString(16).ToString();
            string rand2 = dr.GetString(16);
            if (randomid.Value.ToString() == dr.GetString(16).ToString())
            {
                
                FormsAuthentication.SetAuthCookie(username.Value, true);
                Response.Redirect("Elections.aspx");
            }
            else
            {
                Label1.Text = "Wrong Password! Try again.";
            }
        }
        else
        {
            Label1.Text = "No user with this Username found. Please Register.";
        }

        con.Close();
    }

    protected void LinkButton2_Click(object sender, EventArgs e)
    {
        Response.Redirect("admin.aspx");
    }
}

  