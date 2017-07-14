 <%@ Page Language="C#" AutoEventWireup="true" CodeFile="addElections.aspx.cs" Inherits="addElections" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <title>E-POLLING SYSTEM</title>
    <link href="Content/fonts.googleapis.com" rel="stylesheet" type="text/css" />
  <link href="Content/materialize.min.css" rel="stylesheet" />
    <link rel="stylesheet" href="Content/icon.css" />    <%--<link href="Content/bootstrap.min.css" rel="stylesheet" type="text/css"/>--%>
    <style type="text/css">
        
        #RadioButtonList1{
            display:inline;
        }
        label{
            margin-right: 40px;
        }
    </style>
</head>
<body>

    <!--Nav bar-->
    <form id="form1" runat="server">
        <div class="navbar-fixed">

    <nav class="teal" role="navigation">
        <div class="nav-wrapper container">
            <a id="logo-container" href="Default.aspx" class="brand-logo">E-POLLING</a>
            <ul class="right hide-on-med-and-down">
                <li><a href="admin.aspx">ADMIN</a></li>
                <li><a href="addElections.aspx">ADD ELECTIONS</a></li>
                <li><a href="editElections.aspx">EDIT ELECTIONS</a></li>
                <li><a href="addCandidates.aspx">ADD CANDIDATES</a></li>
                 <li style="text-transform:uppercase;">
                    <asp:LoginStatus ID="LoginStatus2" runat="server"/></li>
            </ul>

           </div>
    </nav>
    <!--Nav bar End-->
</div>

   
        <br/>
        <br/>

    <div class="container">
        
            <div class="row">
                <div class="input-field col s6">
                    <i class="material-icons prefix">room</i>
                    <input id="etitle" type="text" class="validate" runat="server" maxlength="20" />
                    <label for="etitle">STATE</label>
                </div>          
            </div>
        <div class="row">
                <div class="input-field col s6">
                    <i class="material-icons prefix">subtitles</i>
                    <input id="edesc" type="text" class="validate" runat="server" maxlength="20" />
                    <label for="edesc">Election Description</label>
                </div>          
            </div>
            
            <div class="row">
                <div class="input-field col s6">
                    <i class="material-icons prefix">today</i>
                    <input type="date" class="datepicker" id="sdate" runat="server"/>
                    <label for="StartDate">Start Date</label>
                </div>  
                </div>
                <div class="row">
                <div class="input-field col s6">
                    <i class="material-icons prefix">schedule</i>
                    <input type="date" class="datepicker" id="edate" runat="server"/>
                    <label for="edate">End Date</label>
                </div>  

        </div>  
        <div class="row center">
                <asp:LinkButton ID="LinkButton1" runat="server" CssClass="btn btn-large waves-effect waves-light teal lighten-1 hoverable" OnClick="LinkButton1_Click"><i class="material-icons left">assignment</i>ADD ELECTION</asp:LinkButton>
            </div> 
         </form>
   
    <!--Form End-->

    <script src="Scripts/jquery-1.10.2.min.js" type="text/javascript"></script>
    <script src="Scripts/materialize.min.js"></script>
    <script src="Scripts/init.js" type="text/javascript"></script>
    <%--<script src="Scripts/bootstrap.min.js" type="text/javascript"></script>--%>
</body>
</html>
