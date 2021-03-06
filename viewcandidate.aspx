﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="viewcandidate.aspx.cs" Inherits="viewcandidate" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <title>E-POLLING - View Candidate</title>
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
            <a id="logo-container" href="Default.aspx" class="brand-logo" style="left: -46px; top: 0px">E-POLLING</a>
            <ul class="right hide-on-med-and-down">
                <li><a href="addElections.aspx">ADD ELECTIONS</a></li>
                <li><a href="editElections.aspx">EDIT ELECTIONS</a></li>
                <li><a href="addCandidates.aspx">ADD CANDIDATES</a></li>
                 <li style="text-transform:uppercase;">
                    <asp:LoginStatus ID="LoginStatus2" runat="server"/></li>
            </ul>

        
        </div>
    </nav>
    <!--Nav bar End-->
    <br /> <br />

    <div class="container">
        <h4><strong>Candidate Details:</strong></h4>
        <br />
        <p>&nbsp;<asp:Image ID="Image1" runat="server" ImageUrl="" Height="110px" Width="124px" />
                        </p>
        <div class="row">
                <div class="col s6">
                        
                        
                        <p><b>Adhar ID:     </b>
                            <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>
                        </p>
                        <p><b>First Name:     </b>
                            <asp:Label ID="Label4" runat="server" Text="Label"></asp:Label>
                        </p>
                        <p><b>Last Name :     </b>
                            <asp:Label ID="Label5" runat="server" Text="Label"></asp:Label>
                        </p>
                        <p><b>State:     </b>
                            <asp:Label ID="Label6" runat="server" Text="Label"></asp:Label>
                        </p>
                        <p><b>Email:     </b>
                            <asp:Label ID="Label7" runat="server" Text="Label"></asp:Label>
                        </p>
                </div>
                <div class="col s6">
                        <p><b>DOB:     </b>
                            <asp:Label ID="Label8" runat="server" Text="Label"></asp:Label>
                        </p>
                        <p><b>District:     </b>
                            <asp:Label ID="Label9" runat="server" Text="Label"></asp:Label>
                        </p>
                        <p><b>City:     </b>
                            <asp:Label ID="Label10" runat="server" Text="Label"></asp:Label>
                        </p>
                       <p><b>Pin:     </b>
                            <asp:Label ID="Label11" runat="server" Text="Label"></asp:Label>
                        </p>
                        <p><b>Area:     </b>
                            <asp:Label ID="Label12" runat="server" Text="Label"></asp:Label>
                        </p>
                        <p><b>Street:     </b>
                            <asp:Label ID="Label13" runat="server" Text="Label"></asp:Label>
                        </p>
                        <p><b>Gender:     </b>
                            <asp:Label ID="Label14" runat="server" Text="Label"></asp:Label>
                        </p>
                </div>
            </div>
    </div>



    <script src="Scripts/jquery-1.10.2.min.js" type="text/javascript"></script>
    <script src="Scripts/materialize.min.js"></script>
    <script src="Scripts/init.js" type="text/javascript"></script>
</form></body>
</html>
