<%@ Page Language="C#" AutoEventWireup="true" CodeFile="voting.aspx.cs" Inherits="voting" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <title>Matdaan - Voting</title>
    <link href="http://fonts.googleapis.com/css?family=Roboto:400,100,100italic,300,300italic,400italic,500,500italic,700,700italic,900,900italic" rel="stylesheet" type="text/css" />
    <link href='http://fonts.googleapis.com/css?family=Raleway:400,300,200,500,600,700' rel='stylesheet' type='text/css' />
    <link href="http://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.97.6/css/materialize.min.css" />
    <link href="Content/material-cards.css" rel="stylesheet" type="text/css"/>
    <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css" />
    <%--<link href="Content/bootstrap.min.css" rel="stylesheet" type="text/css"/>--%>
    <style>
        img {
            vertical-align: middle;
        }
        .img-responsive,
        .thumbnail > img,
        .thumbnail a > img,
        .carousel-inner > .item > img,
        .carousel-inner > .item > a > img {
        display: block;
        max-width: 100%;
        height: auto;
        }
        .img-rounded {
            border-radius: 6px;
        }
        .img-thumbnail {
            display: inline-block;
            max-width: 100%;
            height: auto;
            padding: 4px;
            line-height: 1.42857143;
            background-color: #fff;
            border: 1px solid #ddd;
            border-radius: 4px;
            -webkit-transition: all .2s ease-in-out;
            -o-transition: all .2s ease-in-out;
            transition: all .2s ease-in-out;
        }
        .img-circle {
            border-radius: 50%;
        }
    </style>

</head>
<body>
    <form id="form1" runat="server">
        <nav class="teal" role="navigation">
        <div class="nav-wrapper container">
            <a id="logo-container" href="Default.aspx" class="brand-logo">E-POLLING</a>
            <ul class="right hide-on-med-and-down">
                <li><a href="Elections.aspx">ELECTIONS</a></li>
                <li><a href="Register.aspx">REGISTER</a></li>
                <li><a href="Contact.aspx">CONTACT</a></li>
                <li style="text-transform:uppercase;">
                    <asp:LoginStatus ID="LoginStatus2" runat="server"/></li>
            </ul>

     
        </div>
    </nav>
        <asp:Label ID="Label1" runat="server" CssClass=" red-text"></asp:Label>
        <asp:Label ID="Label2" runat="server" CssClass="" ForeColor="#00CC00"></asp:Label>

        <br /> <br />
        <div class="container">
            <div class="row">
                <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" DataSourceID="SqlDataSource1">
                    <Columns>
                        <asp:BoundField DataField="cid" HeaderText="Candidate ID" SortExpression="cid" />
                        <asp:BoundField DataField="name" HeaderText="Candidate ID" SortExpression="cid" />
                        

                        <asp:ImageField DataImageUrlField="photo" HeaderText="PHOTO" DataImageUrlFormatString="profile/{0}" >
                            <ControlStyle Height="50px" Width="45px" />
                        </asp:ImageField>
                        <asp:ImageField DataImageUrlField="symbol" DataImageUrlFormatString="{0}" HeaderText="SYMBOL">
                            <ControlStyle Height="50px" Width="45px" />
                        </asp:ImageField>
                        

                        <asp:TemplateField HeaderText="">
                                <ItemTemplate>
                                    <asp:LinkButton runat="server" ID="vote" OnClick="vote_Click">VOTE</asp:LinkButton>
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

                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:votingConnectionString3 %>" SelectCommand="SELECT DISTINCT a.cid, a.eid, a.ename, b.fname + ' ' + b.lname AS name, b.photo, b.symbol FROM selected_candidates AS a INNER JOIN users1 AS b ON a.cid = b.adharid WHERE (a.eid = @eid)">
                    <SelectParameters>
                        <asp:QueryStringParameter Name="eid" QueryStringField="id" Type="Int32" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </div>
        </div>

    </form>

    <script src="Scripts/jquery-1.10.2.min.js" type="text/javascript"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.97.6/js/materialize.min.js"></script>
    <script src="Scripts/init.js" type="text/javascript"></script>
    <%--<script src="Scripts/bootstrap.min.js" type="text/javascript"></script>--%>
    <script>
    $(function() {
        $('.material-card > .mc-btn-action').click(function () {
            var card = $(this).parent('.material-card');
            var icon = $(this).children('i');
            icon.addClass('fa-spin-fast');
            if (card.hasClass('mc-active')) {
                card.removeClass('mc-active');
                window.setTimeout(function() {
                    icon
                        .removeClass('fa-arrow-left')
                        .removeClass('fa-spin-fast')
                        .addClass('fa-bars');
                }, 800);
            } else {
                card.addClass('mc-active');
                window.setTimeout(function() {
                    icon
                        .removeClass('fa-bars')
                        .removeClass('fa-spin-fast')
                        .addClass('fa-arrow-left');
                }, 800);
            }
        });
    });
</script>
</body>
</html>
