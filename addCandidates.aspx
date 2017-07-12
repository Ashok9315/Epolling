﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="addCandidates.aspx.cs" Inherits="addCandidates" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <title>E-PoLLING SYSTEM</title>
    <link href="http://fonts.googleapis.com/css?family=Roboto:400,100,100italic,300,300italic,400italic,500,500italic,700,700italic,900,900italic" rel="stylesheet" type="text/css" />
    <link href="http://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.97.6/css/materialize.min.css" />
</head>
<body>
    <form id="form1" runat="server">
    <!--Nav bar-->
    <nav class="teal" role="navigation">
        <div class="nav-wrapper container">
            <a id="logo-container" href="Default.aspx" class="brand-logo" style="left: -46px; top: 0px">E-POLLING</a>
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
        <asp:Label ID="Label2" runat="server" CssClass=" red-text"></asp:Label>
        <br />
    <div class="container">
        <div class="row input-field">
            <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="title" DataValueField="id" AutoPostBack="true">
            </asp:DropDownList>
            <label>Election Title</label>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:votingConnectionString %>" SelectCommand="SELECT id, title + '-' + descriptionelection AS title FROM elections AS a"></asp:SqlDataSource>
            <br />
            <h5>Election ID for this election:</h5>
            <asp:Label ID="Label1" runat="server"></asp:Label>
            <h5>Following candidates applied for this election:</h5>
        </div>
        
        <div class="row">
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource2" CellPadding="4" ForeColor="#333333" GridLines="None">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:BoundField DataField="cid" HeaderText="Candidate ID" SortExpression="cid" />
                    <asp:BoundField DataField="adharid" HeaderText="ADHAR ID" SortExpression="cid" />
                    <asp:BoundField DataField="fname" HeaderText="FIRST NAME" SortExpression="cid" />
                    <asp:BoundField DataField="lname" HeaderText="LAST NAME" SortExpression="cid" />
                    

                    <asp:TemplateField HeaderText="">
                                <ItemTemplate>
                                    <asp:LinkButton runat="server" ID="select" OnClick="select_Click">SELECT THIS CANDIDATE</asp:LinkButton> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    <asp:LinkButton runat="server" ID="details" OnClick="details_Click">VIEW DETAILS</asp:LinkButton>
                                </ItemTemplate>
                     </asp:TemplateField>
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
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:votingConnectionString %>" ProviderName="System.Data.SqlClient" SelectCommand="select a.cid,b.adharid,b.fname,b.lname from candidates as a,users1 as b where a.cid=b.adharid and a.eid=@eid">
                <SelectParameters>
                    <asp:ControlParameter ControlID="DropDownList1" Name="eid" PropertyName="SelectedValue" Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>
        </div>
    </div>
    </form>

    <script src="Scripts/jquery-1.10.2.min.js" type="text/javascript"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.97.6/js/materialize.min.js"></script>
    <script src="Scripts/init.js" type="text/javascript"></script>
</body>
</html>
