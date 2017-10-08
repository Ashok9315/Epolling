using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class sltsymbol : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Label1.Text=Context.User.Identity.Name;

            
            if (!IsPostBack)
            {
                Bindddl();
                BindTitle();

            }



        
    }
    private void BindTitle()
    {
        if (ddlprofile != null)
        {
            foreach (ListItem li in ddlprofile.Items)
            {
                li.Attributes["title"] = li.Value; // it ll set the value of items in dropdownlist as tooltip

            }
        }
    }
    private void Bindddl()
    {
        string str = ConfigurationManager.ConnectionStrings["votingdatabase"].ToString();
        SqlConnection con = new SqlConnection(str);
        con.Open();
        SqlCommand cmd = new SqlCommand("select * from symbollist where status =1", con);
        SqlDataAdapter adp = new SqlDataAdapter(cmd);
        DataSet ds = new DataSet();
        adp.Fill(ds);
        ddlprofile.DataTextField = "name";
        ddlprofile.DataValueField = "name";
        ddlprofile.DataSource = ds;
        ddlprofile.DataBind();
        con.Close();
    }

    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        string str = ConfigurationManager.ConnectionStrings["votingdatabase"].ToString();
        SqlConnection con = new SqlConnection(str);
        con.Open();
        SqlCommand cmd = new SqlCommand("select count(*) from selected_candidates where cid='" + Context.User.Identity.Name + "'", con);

        SqlDataReader dr = cmd.ExecuteReader();
        dr.Read();
        Int32 checkcand = dr.GetInt32(0);
        dr.Close();
        if (checkcand > 0)
        {
            string selectedsymbol = ddlprofile.SelectedValue;
            string command = "update symbollist set status='0' where name='" + selectedsymbol + "'";
            SqlCommand cmd1 = new SqlCommand(command, con);
            try
            {
                cmd1.ExecuteNonQuery();
            }
            catch (SqlException e1)
            {
                Label2.Text = "error 112";
            }
            Label1.Text = "Symbol Selected Sucessfully";

            string command1 = "update users1 set symbol='" + selectedsymbol + "' where adharid='" + Context.User.Identity.Name + "'";
            SqlCommand cmd2 = new SqlCommand(command1, con);
            try
            {
                cmd2.ExecuteNonQuery();
            }
            catch (SqlException e2)
            {
                Label2.Text = "error-201";
            }

        }
        else
        {
            Label2.Text = "You have not applied for any Election- Please apply for any elecion";
        }

        con.Close();
    }
}