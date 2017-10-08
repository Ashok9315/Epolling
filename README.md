INTRODUCTION

1.1 OVERVIEW OF THE PROJECT
	
The Main purpose of the system is make the polling system completely automated and to increase interest in users. Some people hesitate   to vote due to weather conditions in different areas during the election, youngsters having no charm to cast the vote. People who are outside of their area do not want to come to their area for just casting the votes due to the expenses and trouble of transportation. Same situation is also for those who are on duty during the election, they do not have any interest to cast their vote during job or they do not have facility to submit their vote.
Users are well aware of available online services and, from the last few years, the use of internet has increased. Youngsters have developed interest in using internet for various purposes. After looking above factors, the decision for online polling is more natural than before. The expenditure of an election be decreased and it cover people of all ages. It will be a facility for the people who have different problems such as mentioned earlier. 

1.2 LITERATURE SURVEY

To offer an online polling system, it was necessary to study the current computerized voting system or voting machines working in different countries. Technology can include punched cards, optical scan voting systems and specialized voting kiosks (including self‐contained direct‐ recording electronic voting systems, or DRE). It can also involve transmission of ballots and votes via telephones, private computer networks, or via the Internet. 
Electronic voting helps voters to cast votes in an election through computerized equipment.  Sometimes this term is used to take votes over Internet. 
Expensive and Time consuming: The process of collecting data and entering this data into the database takes too much time and is expensive to conduct, for example, time and money is spent in printing data capture forms, in preparing registration stations together with human resources, and there after advertising the days set for registration process including sensitizing voters on the need for registration, as well as time spent on entering this data to the database.
Too much paper work: The process involves too much paper work and paper storage, which is difficult as papers become bulky with the population size.
Errors during data entry: Errors are part of all human beings; it is very unlikely for humans to be 100 percent efficient in data entry.
Loss of registration forms: Some times, registration forms get lost after being filled in with voters’ details, in most cases, these are difficult to follow-up and therefore many remain unregistered even though they are voting age nationals and interested in exercising their right to vote.


1.3 PROPOSED SYSTEM

	The proposed system is designed in such a way to provide polling service to the people to choose their leader securely.
After  evaluating  different  electoral  systems  in  the  literature  and  some  current  in  practice  systems in various countries, it is necessary to look closer at which one can be considered to be  best among them and furthermore which one could meet the basic requirements of the present system. One of system requirement is to control the duplication of voter registration, another to facilitate the voters; and the third to eliminate counting mistakes. 
Different electronic electoral systems are implemented in many countries, but,  this system is online based instead of other existing system, polling system can use  electronic voting method which is one of the solutions so far for casting the votes, but it has  also introduced a new kind of insecurity aspect, an insecurity that partly also resides with the  user.to overcome this system added the two more authentication process one is OTP(One Time Password) authentication and Random number based authentication.
For an online system, an interactive design will be more helpful for each voter. The end user will feel more at ease with an easy system rather than running a more complete system. Some prototypes are designed which are quite easy for the voters to cast the vote. In addition, the web portal is responsive to latest mobile devices.




 
1.4 OBJECTIVES:

The E-Polling system shall reduce the time spend making long queues at the polling stations during voting. It shall also enable the voters to vote from any part of the globe as explained since this is an online application available on the internet. Cases of vote miscounts shall also be solved since at the backend of this system resides a well-developed database using SQL Server that can provide the correct data once it is correctly queried. Since the voting process shall be open as early as possible, the voters shall have ample time to decide when and whom to vote.
The main objectives of system for E-Polling system are:
	The objective of E-Polling system is to help the organization in automating the whole manual processing of the existing system.
	The main objective to develop the system is to make the accurate & efficient decisions in different tasks at different time at different situations. The existing system is manual so members of the unit generally face many embarrassing situations many times. Now they need to automate the whole process to make it more easy and accurate.
	System should support multi-user environment.
	System should be fully automated. 
	System should provide concrete security features like creating users and assigning privileges to users of the system.
	System should be capable to keep track of all the detailed descriptions of the client and the whole details of services offered by the client organization. 
	Various outputs (reports) should be available online any time. 
	System should be able to handle extremely large volumes of data (i.e. Large database support)
 
 
1.5 SCOPE:

It is focused on studying the existing system of voting and to make sure that the peoples vote is counts, for fairness in the elective positions. This is also will produce:
	Less effort and less labour intensive, as the primary cost and focus primary on creating, managing, and running a secure web-voting portal.
	Increasing number of voters as individuals will find it easier and more convenient to vote, especially those abroad.
	Advanced technology- It is an advanced technology used now a days. It increases the number of users, which is very necessary for current generation.
	Internet: It is an online facility and hence very useful for the users. Voters can vote from anywhere at any time.
	E-Mails:  System can send the Random number and OTP to a particular user for authentication. 


 
CHAPTER 2

REQUIREMENTS SPECIFICATION


2.1 INTRODUCTION

	This portal was primarily developed with the objective to create a user friendly and easily accessible portal to provide polling services for users over the Internet, making the voters access the election poll by sitting at one place.

2.2 OVERALL DESCRIPTION

The proposed system is expected to perform the below functions:

•	Facilitate user registration into the system.
•	Enables user login to the system.
•	Helps the user to select a particular election and vote to decided candidate.
•	Facilitates the user to vote the candidate securely using OTP authentication.
•	Helps the Admin to Manage election.
•	Enables the candidate to apply on each election and select symbol for him. 
•	Enable all the users to view result after completion of each election.

				






 
2.3 SYSTEM REQUIREMENTS

2.3.1 HARDWARE AND SOFTWARE REQUIREMENTS

HARDWARE:

▪	Processor			-	Intel Core i7 2.7GHz
▪	RAM				-	4 GB
▪	HARD DISK			-	100 GB
▪	Graphics Adapter		-	Nvidia Quadro 4000M
▪	CD ROM Drive		-	52X Max


SOFTWARE:

▪	Operating System		-	Window 10
▪	Back end 			-	SQL Server
▪	Front end 	                        -           HTML & CSS
▪	Languages used		-	C#
▪	Tools				-	Visual studio 2017
▪	Web Server			-	Apache IIS










 
2.3.3 PERFORMANCE AND QUALITY REQUIREMENTS

The system shall allow the users to access the system from the Internet using HTML or derivative technologies. The uses web browser as an interface. This application is user friendly and self-explanatory. Quality attributes like secure authentication using One Time Password (OTP) and application session management using firewall block will assure the quality of the system. Database has ben designed with numerus clustered and un-clustered index to ensure the high performance of database. Regular test cases will be prepared and testing will be performed on the developed system to ensure adherence to given requirements and to resolve any defects. 
CHAPTER 3

SYSTEM DESIGN AND IMPLEMENTATION


3.1 DETAILED DESIGN

3.1.1 SYSTEM ARCHITECTURE

	This System consist of various entities and corresponding process and action carried out on the entities. All the System entitles and their action were visually represented in below diagram.
 
Fig 3.1 System Architecture
 
3.1.2 ENTITY RELATIONSHIP DIAGRAM

An entity-relationship (ER) diagram is a specialized graphic diagram that illustrates the inter-relationships between entities in a database. An entity-relationship model in database management system is an abstract and conceptual representation of data.

This System have six entities as below
•	USERS
•	SSELECTED CANDIDATES
•	CANDIDATES
•	VOTES
•	SLTSYMBOL
•	ELECTIONS
























 


Fig 3.2 Entity Relationship Diagram
 
3.1.3 USE CASE DIAGRAM

Use case diagrams are usually referred to as behaviour diagrams used to describe a set of actions (use cases) that some system or systems (subject) should or can perform in collaboration with one or more external users of the system (actors).
In this system actor play a role on various action. Below are the Actors in system,
•	Voter
•	Admin
•	candidate
 
				Fig 3.3 Use Case Diagram
 
3.1.4 SEQUENCE DIAGRAM

A sequence diagram is an interaction diagram that shows how objects operate with one another and in what order. It is a construct of a message sequence chart.
The entire users share login Activity. It will be returned back if authentication failed for the users. Signed user can navigate to various paged and modules to system until their session expires.
Voter activity will be having various subordinate calls like OTP (One Time Password) authentication and selecting the elections. This activity can respond to candidate action if user is candidate.
All the users will have access to result and stat modules where user can view the election result and statistics on that election.

 
Fig 3.4 Sequence Diagram
 
3.1.5 ACTIVITY DIAGRAM

Activity diagram is UML behaviour diagram which shows flow of control or object flow with emphasis on the sequence and conditions of the flow. The actions coordinated by activity models can be initiated because other actions finish executing, because objects and data become available, or because some events external to the flow occur. Activity contains activity nodes which could be: 
•	action
•	object
•	control
There are actions that invoke activities - either directly using call behaviour action or indirectly with call operation action. 
As a behaviour activity could have pre- and post-condition constraints. If present, these are shown with the keywords «precondition» and «post condition», respectively. 
The keyword «single Execution» is used for activities that execute as a single shared execution (singleton), otherwise, each invocation executes in its own space. 
User Activity: User is end user or voter who can vote on desired election to desired candidate. User can select the election and apply for vote and it is mandatory to verify the OTP received in personal mobile number. User can also view the result and statistics of election.
 
USER ACTITVITY:
 
Fig 3.5 Activity Diagram :(User)
 
Admin Activity: Administrator act as facilitator for the polling system. Administrator has full access to add, update or delete the election. And also administrator has select the each candidate by verifying the personal details of each candidate applied for election.

ADMIN ACTIVITY:
 
Fig 3.6 Activity Diagram :(Admin)
 
Candidate Activity: Candidate is user who can apply on any election. Candidate can able to select his party symbol in system if a candidature is verified and selected by admin.

                     
Fig 3.7 Activity Diagram :(Candidate)
 
3.1.6 COLLABORATION DIAGRAM:
A collaboration diagram resembles a flowchart that portrays the roles, functionality and behaviour of individual objects as well as the overall operation of the system in real time. Objects are shown as rectangles with naming labels inside. These labels are preceded by colons and may be underlined. The relationships between the objects are shown as lines connecting the rectangles. The messages between objects are shown as arrows connecting the relevant rectangles along with labels that define the message sequencing. 
Collaboration diagrams are best suited to the portrayal of simple interactions among relatively small numbers of objects. As the number of objects and messages grows, a collaboration diagram can become difficult to read. Several vendors offer software for creating and editing collaboration diagrams. 

Admin Collaboration:

 
Fig 3.8 Collaboration Diagram :(Admin)
 
Candidate Collaboration:

 
Fig 3.9 Collaboration Diagram :(Candidate)

Voter Collaboration:
 
Fig 3.10 Collaboration Diagram :(Voter)
 
3.1.7 DATA FLOW DIAGRAM
A data flow diagram (DFD) is a graphical representation of the "flow" of data through an information system, modelling its process aspects. A DFD is often used as a preliminary step to create an overview of the system without going into detail, which can later be elaborated.
 
Fig 3.11 User level data Flow Diagram

 
Fig 3.12 Admin level data Flow Diagram
 

3.1.7 DATABASE TABLE DESIGN
			
NO	FIELD NAME	CONSTRAINT	DATA TYPE
1	ID	PRIMARY KEY	INT
2	ADHARID	UNIQUE	VARCHAR(30)
3	FNAME	NOT NULL	VARCHAR(30)
4	LNAME	NOT NULL	VARCHAR(30)
5	STATE	NOT NULL	VARCHAR(30)
6	MOBILE	NOT NULL	VARCHAR(30)
7	EMAIL	NOT NULL	VARCHAR(30)
8	BDATE	NOT NULL	VARCHAR(30)
9	DISTRICT	NOT NULL	VARCHAR(30)
10	CITY	NOT NULL	VARCHAR(30)
11	PIN	NOT NULL	VARCHAR(30)
12	AREA	NOT NULL	VARCHAR(30)
13	STREET	NOT NULL	VARCHAR(30)
14	GENDER	NOT NULL	VARCHAR(30)
15	PASSWORD	NOT NULL	VARCHAR(30)
16	PHOTO	NOT NULL	VARCHAR(100)
17	RADOMNO	NOT NULL	VARCHAR(100)
18	SYMBOL	NOT NULL	VARCHAR(30)

Table 3.1 Table USER

	
NO	FIELD NAME	CONSTRAINT	DATA TYPE
1	ID	NOT NULL	INT
2	TITLE	NOT NULL	NVARCHAR(30)
3	STARTTIME	NOT NULL	DATETIME
4	ENDTIME	NOT NULL	DATETIME
5	DESCRIPTIONELECTION	NOT NULL	NVARCHAR(100)
6	BME	NOT NULL	INT

Table 3.2 Table ELECTIONS
 
NO	FIELD NAME	CONSTRAINT	DATA TYPE
1	CID	NOT NULL	NVARCHAR(15)
2	EID	NOT NULL	INT
3	ENAME	NOT NULL	NVARCHAR(30)

Table 3.3 Table CANDIDATE

NO	FIELD NAME	CONSTRAINT	DATA TYPE
1	CID	NOT NULL	NVARCHAR(15)
2	EID	NOT NULL	INT
3	ENAME	NOT NULL	NVARCHAR(30)

Table 3.4 Table SELECTED_CANDIDATE

NO	FIELD NAME	CONSTRAINT	DATA TYPE
1	EID	NOT NULL	INT
2	TITLE	NOT NULL	NVARCHAR(30)
3	CANDIDATE	NOT NULL	NVARCHAR(15)
4	VOTER	NOT NULL	NVARCHAR(15)

Table 3.5 Table VOTES

NO	FIELD NAME	CONSTRAINT	DATA TYPE
1	NAME	NOT NULL	VARCHAR(30)
2	STATUS	NOT NULL	VARCHAR(30)

Table 3.6 Table SLTSYMBOL





 
3.2 IMPLEMENTATION

3.2.1 MODULES IN THE SYSTEM

The proposed system consists of two modules,
	User Module
	Administrator Module

3.2.1.1 USER (VOTER) MODULE:
	User module consists of various functional attributes of system like polling and candidate nomination. Voter can use the polling module to right their vote and candidate can stand on election by nominating himself on any election. The user module constitutes five sub-module:

Authentication & Voting: Each voter is provided with unique username, password and random number via mail by the administrator. The voter uses the username and password for login and exercise the fundamental right of voting. If incorrect username and password entered, the access to is denied to the user. And also voter is allowed to vote only once.  This is the security feature provided against external access of the system.
After login the voter enters the voter home page, which provides the links.

Candidate List: This facilitates the voter to view the candidate names, the constituency name, their symbol and their party name.

Vote: This provides the voter with a list of candidate with in his/her constituency along with selection option (radio button) to select the preferred candidate from the list. If the voting date is before termination date, the vote goes valid else goes invalid.



 
View Results:
This provides user friendly reports representation of the votes obtained by each candidate. It includes the percentage of the votes obtained by each candidate. But the result can be viewed only after the termination date of the election.

Logout:
This provides an option for the voter to quit the session on any page.


3.2.1.2 ADMINISTRATOR MODULE:
Administrator interface consists of a login name and unique password using which admin can login into the Online Voting System. Administrator has the main control of the system. By logging into the page, it can perform the following tasks.

Select Candidate: Here the admin can add the list of candidates in the election. The candidates will be added to the list only after completing the procedures.

Add Election:   Here the election to be conducted is selected. To add an election the constituency should be selected and termination date of election should be specified.

Candidate List:  The list of candidates participating in the election can be seen. It includes the candidates name, party name and party symbol.  
 
The sub-modules of administrator are:
	Voting Structure
	Voters Registration
	Candidate Registration
	Counting & Categorization of Results

 
Voting Structure: Here the eligible voters who are permitted to login to the system can utilize the right to vote. Each voter can register a single vote to a candidate’s favor in his/her constituency. The security measures taken within the system prevents them from exercising their votes again i.e. the second vote by the same user goes invalid. The starting and ending dates of the election are specified by the administrator. The user must have an identity card and he must be in voters list. 

Voters Registration: The registration procedure of all the eligible voters .This registration process is done by the administrator. According to voters database each voter is provided with a unique identification codes which includes username and password. 
The details of the voters include username, password, name, address, gender, constituency, image etc. With the voter registration, thus producing the voter list with the given information of the voters. The voter list can be viewed by anyone accessing the webpage. The admin can view the voter list with in his homepage.

Candidate Registration: The registration of the candidates in each constituency is done by the administrator. The details of the candidate include name, address, gender, his/her constituency, party and   image. With the candidate registration, thus producing the candidate list with the given information of the candidates. The candidate list can be viewed by admin and the vote within their respective homepages. According to candidates database (manual) each details of   the candidates are stored in database controlled by the admin including candidate’s details. 

Counting & Categorization of Results: When the voter votes, the number of votes obtained by the selected candidate is incremented by 1.The result is published only after the voting process is over. It is accessible from the next day after the termination date. Here system depict the result in the graphical representation according to the percentage of vote obtained by the candidate. When the user clicks the “STAT” link, after the termination date of the election voter can view the result in their respective pages.

 
3.2.2 PROGRAM CODE 

Default.aspx.cs
using System;
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

  
Register.aspx.cs:
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

Addelectioms.aspx.cs
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

Selectsymbol.aspx.xs

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

 
Viewcandidate.aspx.cs:

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

 
Voting.aspx.cs:

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

Otp.asp.cs:

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

 
Sample Design Code:
<%@ Page Language="C#" AutoEventWireup="true" CodeFile="result.aspx.cs" Inherits="result" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <title>E-POLLING SYSTEM</title>
    <link href="Content/fonts.googleapis.com" rel="stylesheet" type="text/css" />
  <link href="Content/materialize.min.css" rel="stylesheet" />
    <link rel="stylesheet" href="Content/icon.css" />    <link href="Content/material-cards.css" rel="stylesheet" type="text/css"/>
    <link rel="stylesheet" href="Content/font-awesome.min.css" />
</head>
<body>
    <form runat="server">
    <!--Nav bar-->
        <nav class="teal" role="navigation">
            <div class="nav-wrapper container">
                <a id="logo-container" href="Default.aspx" class="brand-logo">E-POLLING</a>
                <ul class="right hide-on-med-and-down">
                    <li><a href="Elections.aspx">ELECTIONS</a></li>
                    <li><a href="Register.aspx">REGISTER</a></li>
                     <li style="text-transform:uppercase;">
                    <asp:LoginStatus ID="LoginStatus2" runat="server"/></li>
                   
                </ul>               
            </div>
        </nav>  
        <div class="container">
            <h3>STATS:</h3>
            <br />
            <h4>Results:</h4>
            <h4>Winner</h4>

            <asp:GridView ID="GridView4" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource2" CellPadding="4" ForeColor="#333333" GridLines="None">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:BoundField DataField="NAME" HeaderText="NAME" SortExpression="NAME" ReadOnly="True" />
                    <asp:BoundField DataField="STATE" HeaderText="STATE" SortExpression="STATE" />
                     <asp:ImageField DataImageUrlField="photo" HeaderText="PHOTO" DataImageUrlFormatString="profile/{0}" >
                     <ControlStyle Height="50px" Width="45px" />
                     </asp:ImageField>
                     <asp:ImageField DataImageUrlField="symbol" DataImageUrlFormatString="{0}" HeaderText="SYMBOL">
                     <ControlStyle Height="50px" Width="65px" />
                     </asp:ImageField>
                    <asp:BoundField DataField="ADHAR-ID" HeaderText="ADHAR-ID" SortExpression="ADHAR-ID" />
                    <asp:BoundField DataField="NO OF VOTES" HeaderText="NO OF VOTES" ReadOnly="True" SortExpression="NO OF VOTES" />
                </Columns>
                <EditRowStyle BackColor="#7C6F57" />
                <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#E3EAEB" />
                <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#F8FAFA" />
                <SortedAscendingHeaderStyle BackColor="#246B61" />
                <SortedDescendingCellStyle BackColor="#D4DFE1" />
                <SortedDescendingHeaderStyle BackColor="#15524A" />
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:votingdatabase %>" SelectCommand=" select top 1 * from(select fname+' '+lname as 'NAME',state as 'STATE',photo as 'PHOTO',symbol as 'SYMBOL',stat1.candidate as 'ADHAR-ID',no_of_voters as 'NO OF VOTES' from
 (SELECT candidate, COUNT(voter) AS no_of_voters  FROM  votes 
 WHERE eid = @eid GROUP BY candidate )
 as stat1,users1 as usr where stat1.candidate=usr.adharid
 )t
 ORDER BY 'NO OF VOTES' DESC">
                <SelectParameters>
                    <asp:QueryStringParameter Name="eid" QueryStringField="id" />
                </SelectParameters>
            </asp:SqlDataSource>
            <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:votingdatabase %>" SelectCommand=" select top 1 * from(select fname+' '+lname as 'NAME',state as 'STATE',photo as 'PHOTO',symbol as 'SYMBOL',stat1.candidate as 'ADHAR-ID',no_of_voters as 'NO OF VOTES' from
 (SELECT candidate, COUNT(voter) AS no_of_voters  FROM  votes 
 WHERE eid = @eid GROUP BY candidate )
 as stat1,users1 as usr where stat1.candidate=usr.adharid
 )t
 ORDER BY 'NO OF VOTES' DESC">
                <SelectParameters>
                    <asp:Parameter Name="eid" />
                </SelectParameters>
            </asp:SqlDataSource>
            <br />
                       <h4>Votes categorised by Candidate:</h4>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" CellPadding="4" ForeColor="#333333" GridLines="None">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:BoundField DataField="NAME" HeaderText="NAME" SortExpression="NAME" ReadOnly="True" />
                    <asp:BoundField DataField="STATE" HeaderText="STATE" SortExpression="STATE" />
                     <asp:ImageField DataImageUrlField="photo" HeaderText="PHOTO" DataImageUrlFormatString="profile/{0}" >
                     <ControlStyle Height="50px" Width="45px" />
                     </asp:ImageField>
                     <asp:ImageField DataImageUrlField="symbol" DataImageUrlFormatString="{0}" HeaderText="SYMBOL">
                     <ControlStyle Height="50px" Width="65px" />
                     </asp:ImageField>
                    <asp:BoundField DataField="ADHAR-ID" HeaderText="ADHAR-ID" SortExpression="ADHAR-ID" />
                    <asp:BoundField DataField="NO OF VOTES" HeaderText="NO OF VOTES" ReadOnly="True" SortExpression="NO OF VOTES" />
                </Columns>
                <EditRowStyle BackColor="#7C6F57" />
                <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#E3EAEB" />
                <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#F8FAFA" />
                <SortedAscendingHeaderStyle BackColor="#246B61" />
                <SortedDescendingCellStyle BackColor="#D4DFE1" />
                <SortedDescendingHeaderStyle BackColor="#15524A" />
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:votingdatabase %>"  SelectCommand=" select fname+' '+lname as 'NAME',state as 'STATE',photo as 'PHOTO',symbol as 'SYMBOL',stat1.candidate as 'ADHAR-ID',no_of_voters as 'NO OF VOTES' from
 (SELECT candidate, COUNT(voter) AS no_of_voters  FROM  votes 
 WHERE eid = @eid GROUP BY candidate )
 as stat1,users1 as usr where stat1.candidate=usr.adharid
 ORDER BY 'NO OF VOTES' DESC">
                <SelectParameters>
                    <asp:QueryStringParameter Name="eid" QueryStringField="id" />
                </SelectParameters>
            </asp:SqlDataSource>
        </div>
        
        <div class="container">
            <br />
            <h4>Votes categorised by Gender:</h4>
            <asp:GridView ID="GridView3" runat="server" AutoGenerateColumns="False" CellPadding="4" DataSourceID="SqlDataSource3" ForeColor="#333333" GridLines="None">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:BoundField DataField="name" HeaderText="NAME" SortExpression="name" ReadOnly="True" />
                    <asp:BoundField DataField="state" HeaderText="STATE" SortExpression="state" />
                     <asp:ImageField DataImageUrlField="photo" HeaderText="PHOTO" DataImageUrlFormatString="profile/{0}" >
                     <ControlStyle Height="50px" Width="45px" />
                     </asp:ImageField>
                     <asp:ImageField DataImageUrlField="symbol" DataImageUrlFormatString="{0}" HeaderText="SYMBOL">
                     <ControlStyle Height="50px" Width="65px" />
                     </asp:ImageField>
                    <asp:BoundField DataField="candidate" HeaderText="ADHAR-ID" SortExpression="candidate" />
                    <asp:BoundField DataField="M_votes" HeaderText="NO OF MALES" ReadOnly="True" SortExpression="M_votes" />
                    <asp:BoundField DataField="F_votes" HeaderText="NO OF FEMALES" ReadOnly="True" SortExpression="F_votes" />
                </Columns>
                <EditRowStyle BackColor="#7C6F57" />
                <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#E3EAEB" />
                <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#F8FAFA" />
                <SortedAscendingHeaderStyle BackColor="#246B61" />
                <SortedDescendingCellStyle BackColor="#D4DFE1" />
                <SortedDescendingHeaderStyle BackColor="#15524A" />
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:votingdatabase %>" ProviderName="System.Data.SqlClient"
                SelectCommand=" select fname+' '+lname as 'name',state,photo,symbol,stat1.* from (select DISTINCT vn.candidate, sq1.M_votes,sq2.F_votes
    from votes as vn
    left outer join
    (select v.eid,v.candidate,COUNT(v.voter) as M_votes from votes as v
      join users1 on v.voter = users1.adharid where users1.gender = 'M' and  v.eid= @eid
      group by v.eid,v.candidate)
      as sq1 on sq1.candidate = vn.candidate
     left outer join
     (select v.candidate,COUNT(v.voter) as F_votes from votes as v
      join users1 on v.voter = users1.adharid where users1.gender = 'F' and  v.eid= @eid
      group by v.candidate)
      as sq2 on sq2.candidate = vn.candidate
 where vn.eid = @eid) as stat1,users1 as usr
 where stat1.candidate=usr.adharid;">
                <SelectParameters>
                    <asp:QueryStringParameter Name="eid" QueryStringField="id" />
                </SelectParameters>
            </asp:SqlDataSource>
        </div>
       
    </form>

    <script src="Scripts/jquery-1.10.2.min.js" type="text/javascript"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.97.6/js/materialize.min.js"></script>
    <script src="Scripts/init.js" type="text/javascript"></script>
</body>
</html> 
 
Web.config:
<?xml version="1.0"?>
<configuration>
  <connectionStrings>
    <add name="votingdatabase" connectionString="Data Source=DESKTOP-89BF6AK\SQLEXPRESS;Initial Catalog=voting;User ID=sa;Password=Syntel_757" providerName="System.Data.SqlClient"/>
  </connectionStrings>  <appSettings>    <add key="ValidationSettings:UnobtrusiveValidationMode" value="None"/>
  </appSettings>  <system.web>    <authentication mode="Forms">
      <forms name="loginform" loginUrl="Default.aspx" defaultUrl="Elections.aspx"/>
    </authentication>    <authorization>      <deny users="?"/>    </authorization>    <httpRuntime targetFramework="4.6"/>
  </system.web>  
<location path="admin.aspx">
<system.web> 
<authorization><allow users="1"/><deny users="*"/>      </authorization></system.web></location>  <location path="addCandidates.aspx">    <system.web> <authorization><allow users="1"/><deny users="*"/>      </authorization></system.web></location>  <location path="addElections.aspx">    <system.web> <authorization><allow users="1"/><deny users="*"/> </authorization> </system.web></location>  <location path="editElections.aspx">    <system.web><authorization><allow users="1"/><deny users="*"/>      </authorization></system.web></location>  <location path="Register.aspx">    <system.web><authorization> <allow users="?"/></authorization>
</system.web> 
 </location>
</configuration> 
CHAPTER 4

TEST PLAN AND RESULTS
	

4.1 TEST PLAN 

Software testing is a critical element in software quality assurance and represents the ultimate review of specifications, design and coding. The testing phase involves the testing of system using various sets of data.
Below are the set of test cases that were prepared to test the effectiveness and readiness of the system.
4.1.1 TESTING OBJECTIVES
•	Testing is a process of executing a program with the intent of finding an error.
•	All test cases should be traceable to end user requirements.
•	Testing should begin on small scale and progress towards testing in large

4.1.2 TESTING STRATEGIES
The system should be tested an independent system and the test results and defects found should be recorded as a part of unit history.

4.1.3 INTEGRATION TESTING
		
	To detect defects that occurs on the interfaces of units.
	To assemble the individual units into working subsystems. 

4.1.4 VALIDATION TESTING

	4.1.4.1 COMPONENT TESTING
Also knows as unit testing, testing is carried out to identify defects in the component.
	
 
4.1.4.2 INTERFACE TESTING
Along with the interfaces, interaction between operating system, file system, hardware, and any other software system is carried out.
4.1.4.3 SYSTEM TESTING
It is carried out after the entire system is ready, to verify against the specified requirements.
4.1.4.4 ACCEPTANCE TESTING
	Testing carried out in the client / end user point of view.


Test Case No	Test Case Name	Expected	Actual	Status
TC01	To check if the user is able to login	User should be able to login	Log in successful	Pass
TC02	To check if new user is able to register	New user should be registered	New user registration successful	Pass
TC03	To check if the user is able to view the elections list	User should view the elections	User is able to view the elections	Pass
TC04	To check if the user is able to vote	User should be able to vote	User able to vote	Pass
TC05	To check if the user is able to view the Result and stat of election	User should be able to view Result and stat of election	User is able to view the Result and stat of election	Pass
TC08	To check if the admin is able to login	Admin should be able to login	Admin is able to login	Pass
TC09	To check if the admin is able to view the candidate details	Admin should be able to view the candidate details	Admin is able to view the candidate details	Pass
TC10	To check if the admin is able to Select the candidate	Admin should be able to Select the candidate	Admin is able to Select the candidate	Pass
TC11	To check if the admin is able to add election	Election should be added	Election is added successfully	Pass
TC12	To check if the admin is able to edit election	Admin should be able to edit election	Admin is able to edit election	Pass
TC13	To check if the admin is able to delete the election	Admin should be able to delete the election	Admin is able to delete the election	Pass
TC14	To check if the voter is able to receive OTP during voting process election	Voter should be able to receive OTP during voting process election	Voter is able to receive OTP during voting process election	Pass
TC15	To check if the voter is able to receive Random-id after registration	Voter should be able receive Random-id after registration	Voter is able to receive Random-id after registration	Pass
TC16	To Check if voter should not enter the polling system before election starts.	Voter should not go to polling system.	Voter is not able to enter into polling system, system throws error message “election not started”	Pass
TC17	To check if candidate can able to apply on election after election started. 	Candidate should not able apply on election.	Candidate cannot able apply on election after election started, system throws error message election stated.	Pass
TC18	To check if user can able to see the election results before completion of election.	User should no see the election results before completion of election	User cannot able see the election results before completion of election, system throws error message “election not completed.	Pass
TC19	To check if candidate able select the party symbol.	Candidate should be able to select his party symbol.	Candidate is able to select his party symbol.	Pass
TC20	To check only the approved candidate can select the party symbol.	Candidate no approved by admin should not able to select symbol. 	Candidate not approved by admin cant able select part symbol, system throws error message “please apply on election and get approved by admin”.	Pass
 
				Table 4.1 Test Cases and Status
 
4.2 RESULTS

Registration Page:
	New User has to register in this page by providing appropriate and correct personal details in this page.
	Adhar Number is mandatory for registration since it going to be used as username for the account.
On successful registration, random id will be generated and sent via mail to users personal mail id provided during registration.


 

Fig 4.1 Registration Page

 
Login Page:
Registered user can able to login using below login page, it is default page of the application.
Below 3 Parameters are required for successful login,
•	Adhar-ID
•	Password
•	Random-D
Random id will be generated while registration, random id can’t be changed it will be generation only once.

 

Fig 4.2 Login Page


 
Election Page:
On successful login of the users, User is redirected to Election page where user can able see the various election happened, happening and future election.
There are three options available for each election,
Apply-Candidate who wants no nominate himself has a candidate can use this link to apply. Candidate can apply only on future election.
Vote- User who wants vote their desired candidate can go through the link. User can able use this option only for currently happening election.
Stats-User can se the result and statistics for particular completed election using this link.

 
Fig 4.3 Election Page

 
OTP authentication Page:
	If user wants to go to polling page user has to bypass the One Time passowrd authentication provided by the sytem.OTP will be sent to users email id provided during registeration.
	Users has to generatte the new OTP and authenticate himself.
OTP generated will be valid only on current application session, so user should not navigate to other page or else OTP will be expired.

 
Fig 4.4 OTP authentication Page
 
Polling Page:
	In this Page User can able, all the list of candidates nominated for the election.
Each user has the Name, photo and Unique Party Symbol so that user can easily identify the desired candidate and vote for him.

 
Fig 4.5 Polling Page
 
Admin Home Page:
Only Authenticated Admin user can see this page, This page is restricted by system for other anonymous users.
This page is secured using application session and firewall restriction, so that other user cannot go through page or hacker cannot bypass this page by any attack.
Admin user has below three operation to do an this polling system,
•	Adding Elections
•	Editing Election
•	Adding Candidate to election

 
Fig 4.6 Admin Home Page

 
Add Election page:
	In this page admin user, can able to add or create new election by providing following details.
State-State where election going to happen.
Description-Short Description of the election like post can motioned here.
Start and End Date- Election starting and ending date should be mentioned by admin so that user can be able vote on this election between these dates.

 

Fig 4.7 Add Election Page
 
Edit Election Page:
	Admin can able to edit election, prepone, postpone and delete the existing election using this page.

  
Fig 4.8 Edit Election Page
 
Candidate Selection Page:
 	Admin can view and verify the nominated candidate for particular election and select the candidate for the election. 
	Admin can select the selection using drop-down available on top of page to select the election so that nominated candidate can be viewed below.
Note: Admin selection is final approval for a candidate for further role in election.
  
Fig 4.9 Candidate Selection Page






Candidate Details Page:
This page can viewed by admin for each candidate to verify the personal details, so that admin avoid fake registration in the system.

 
 
Fig 4.10 Candidate Details Page
 
Symbol Selection Page:
This page can be used only by candidate to select the unique party symbol for him. Only the approved candidate able select the symbol.
Candidate approved by the admin can able to see the entire symbol available in drop-down list. Candidate can select symbol by clicking the select symbol button.

 
Fig 4.11 Symbol Selection Page
 
Result page:
In this page, users can able see the election result and various reports generation by admin.
Below are the various report can seen in this page,
•	Winner of election
•	Votes Categorised by Candidate
•	Votes Categorised by gender

  
Fig 4.12 Result page
 
CHAPTER 5

CONCLUSION AND FUTURE WORK

This chapter summarizes the overall work done and the future implementations on the project.

5.1 CONCLUSION
	This project has been implemented in such a way that it satisfies the requirements. This application would facilitate the users with easy access to voting services available. Through this application, the user vote their right from the place where they sit.

This project is aimed to be developed as a much more efficient polling platform. The system proposed will not just convert the current manual system to an electronic equivalent but will be possible to run in parallel with the current system and thus make it easier for the people who are not able to cast their votes due to different reasons. This system will be helpful for casting votes by different electronic ways. Voters will be able to cast votes through their home PC, through polling booths, mobiles and Net cafes. This system will make voting more accessible, and hopefully create more attraction for those people who do not cast their votes today. 

5.2 FUTURE WORK
	 
In future, the database can synchronized to Adhar database instead of user registration for more efficiency and accuracy on voters details. Separate instance of database for various region can be created to avoid performance issues. More secure way of authentication as fingerprint authentication by synchronizing Adhar database will add an advantage to the system. 


 
REFERENCES

Books:
1.	ASP .NET Programming with C# & SQL Server by Don Gosselin, Cengage Learning (CL) India, 2010.
2.	Programming ASP.NET by Jesse Liberty, Dan Hurwitz, O’Reilly Media, Inc., 2006.

Websites:
1.	www.w3schools.com
2.	www.microsoft.com 
3.	http://materializecss.com
4.	www.tutorialspoint.com
5.	http://www.electionguide.org/digest/academic-research/
6.	https://www.asp.net/learn

