using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class voting : System.Web.UI.Page
{
    SqlConnection con;
    int election_id;
    string title;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Request.QueryString["id"] != null)
        {
            election_id = Convert.ToInt32(Request.QueryString["id"]);
            title = Request.QueryString["title"].ToString();
        }
        Label1.Text = "";
    }
    protected void vote_Click(object sender, EventArgs e)
    {
        string str = ConfigurationManager.ConnectionStrings["votingdatabase"].ToString();
        con = new SqlConnection(str);
        con.Open();

        GridViewRow grdrow = (GridViewRow)((LinkButton)sender).NamingContainer;
        string firstColData = grdrow.Cells[0].Text;


        

        string c = "select count(*) from votes  where eid ="+ election_id+" and voter="+Context.User.Identity.Name;
        SqlCommand cmd1 = new SqlCommand(c, con);
        SqlDataReader dr = cmd1.ExecuteReader();
        dr.Read();
        Int32 checkvote = dr.GetInt32(0);
        dr.Close();
        
        
        if (Context.User.Identity.IsAuthenticated && checkvote==0)
        {
            string command = "insert into votes values (" + election_id + ",'" + title + "','" + firstColData + "','" + Context.User.Identity.Name + "')";
            SqlCommand cmd = new SqlCommand(command, con);
            try {
                cmd.ExecuteNonQuery();
            }
            catch(SqlException e1)
            {
                Label1.Text = "Already voted!";
            }
            Label2.Text = "Voted Sucessfully";
        }
        else
            Label1.Text = "Already voted!";
        con.Close();

        LinkButton l1 = sender as LinkButton;
        l1.Visible = false;

    }
}