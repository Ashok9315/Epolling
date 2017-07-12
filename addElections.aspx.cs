using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Globalization;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class addElections : System.Web.UI.Page
{
    SqlConnection con;
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }

    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        string str = ConfigurationManager.ConnectionStrings["votingdatabase"].ToString();
        con = new SqlConnection(str);
        con.Open();

        string one = sdate.Value;
        string two = edate.Value;
        DateTime dt1 = Convert.ToDateTime(one);


        DateTime dt2 = Convert.ToDateTime(two);


  
        string command = "insert into elections values('" + etitle.Value + "','" + dt1.ToString() + "','" + dt2.ToString() + "','" + edesc.Value + "','')";
        SqlCommand cmd = new SqlCommand(command, con);
        try
        {
            cmd.ExecuteNonQuery();
        }
        catch (SqlException exre)
        {
            
        }
        con.Close();
    }
}