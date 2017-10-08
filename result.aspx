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
