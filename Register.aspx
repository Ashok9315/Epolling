<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Register.aspx.cs" Inherits="images_Register" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <title>E-POLLING SYSTEM</title>
    <link href="Content/fonts.googleapis.com" rel="stylesheet" type="text/css" />
  <link href="Content/materialize.min.css" rel="stylesheet" />
    <link rel="stylesheet" href="Content/icon.css" />    <link href="Content/material-cards.css" rel="stylesheet" type="text/css"/>
    <link rel="stylesheet" href="Content/font-awesome.min.css" />
    <%--<link href="Content/bootstrap.min.css" rel="stylesheet" type="text/css"/>--%>
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
                <li><a href="Elections.aspx">ELECTIONS</a></li>
                <li><a href="Register.aspx">REGISTER</a></li>
                <li><a href="admin.aspx">ADMIN</a></li>
                
    
            </ul>

            <ul id="nav-mobile" class="side-nav">
                
                <li><a href="default.aspx">LOGIN</a></li>
                
                <li>
                  
            </ul>
        
        </div>
    </nav>
    <!--Nav bar End-->
</div>

    <div id="index-banner" class="parallax-container">
        <div class="section no-pad-bot">
            <div class="container">
                <br/><br/>
                <h1 class="header center white-text">REGISTER HERE</h1>
                <br/><br/>
            </div>
        </div>
        <div class="parallax"><img src="images/flag.jpg" alt="Unsplashed background img 1" /></div>
    </div>


    <div class="container">
        
            <div class="row">
                <div class="input-field col s6">
                    <i class="material-icons prefix">account_circle</i>
                    <input id="firstname" type="text" class="validate" runat="server" maxlength="20" />
                    <label for="firstname">First Name</label>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Cannot be empty!" ControlToValidate="firstname" CssClass="red-text"></asp:RequiredFieldValidator>
                </div>
                <div class="input-field col s6">
                    <i class="material-icons prefix">account_circle</i>
                    <input id="lastname" type="text" class="validate" runat="server" maxlength="20"/>
                    <label for="lastname">Last Name</label>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Cannot be empty!" ControlToValidate="lastname" CssClass="red-text"></asp:RequiredFieldValidator>
                </div>
            </div>
            <div class="row">
                <div class="input-field col s6">
                    <i class="material-icons prefix">perm_identity</i>
                    <input id="adharno" type="text" class="validate" runat="server" maxlength="15" />
                    <label for="adharno">Adhar number</label>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Cannot be empty!" ControlToValidate="adharno" CssClass="red-text"></asp:RequiredFieldValidator>
                </div>
                <div class="input-field col s6">
                    <i class="material-icons prefix">location_on</i>
                    <input id="state" type="text" class="validate" runat="server" maxlength="30"/>
                    <label for="state">State</label>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Cannot be empty!" ControlToValidate="state" CssClass="red-text"></asp:RequiredFieldValidator>
                </div>
            </div>
            <div class="row">
                <div class="input-field col s6">
                    <i class="material-icons prefix">phone</i>
                    <input id="mobile" type="text" class="validate" runat="server" maxlength="10" pattern="^[789]\d{9}$" title="mob"/>
                    <label for="mobile">Mobile</label>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ErrorMessage="Cannot be empty!" ControlToValidate="mobile" CssClass="red-text"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Not valid mobile number!" ValidationExpression="^[789]\d{9}$" ControlToValidate="mobile" CssClass="red-text"></asp:RegularExpressionValidator>
                </div>
                <div class="input-field col s6">
                    <i class="material-icons prefix">email</i>
                    <input id="email" type="email" class="validate" runat="server" />
                    <label for="email">Email</label>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ErrorMessage="Cannot be empty!" ControlToValidate="email" CssClass="red-text"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ErrorMessage="Not a valid email address!" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ControlToValidate="email" CssClass="red-text"></asp:RegularExpressionValidator>
                </div>              
            </div>
            <div class="row">
                <div class="input-field col s6">
                    <i class="material-icons prefix">today</i>
                    <input type="date" class="datepicker" id="birthdate" runat="server"/>
                    <label for="birthdate">Birthdate</label>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="Cannot be empty!" ControlToValidate="birthdate" CssClass="red-text"></asp:RequiredFieldValidator>

                </div>
                <div class="input-field col s6">
            Photo: <asp:FileUpload ID="photo" runat="server" Class="" /> 
                    
                </div>
 
            </div>
            <div class="row">
                <div class="input-field col s6">
                    <input id="District" type="text" runat="server" maxlength="20" />
                    <label for="District">District</label>

                </div>
                <div class="input-field col s6">
                      <input id="city" type="text" runat="server" maxlength="20" />
                    <label for="city">city/town</label>
                </div>
            </div>
            <div class="row">
                <div class="input-field col s6">
                      <input id="pincode" type="text" runat="server" maxlength="20" />
                    <label for="pincode">pincode</label>
                </div>
                <div class="input-field col s6">
                      <input id="Area" type="text" runat="server" maxlength="20" />
                    <label for="Area">Area</label>
                </div>  
            </div>
            <div class="row">
                <div class="input-field col s6">
                      <input id="Address" type="text" runat="server" maxlength="20" />
                    <label for="Address">House No,Street</label>
                </div>             
                <div class="row center input-field col s6">
 
                        <asp:RadioButtonList ID="gender" runat="server" RepeatDirection="Horizontal" RepeatLayout="Flow">
                            <asp:ListItem Value="m" Selected="True"><i class="material-icons left">wc</i>Male</asp:ListItem>
                            <asp:ListItem Value="f"><i class="material-icons left">wc</i>Female</asp:ListItem>
                        </asp:RadioButtonList>  
                </div>
                
            </div>
            <div class="row center">
                <div class="col s4 offset-s4 input-field">
                    <i class="material-icons prefix">fingerprint</i>
                    <input id="pass" type="password" class="validate" runat="server"/>
                    <label for="pass">Password</label>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ErrorMessage="Password is required." ControlToValidate="pass" CssClass="red-text"></asp:RequiredFieldValidator>
                </div>
            </div>
            <br />
            <div class="row center">
                <asp:LinkButton ID="LinkButton1" runat="server" CssClass="btn btn-large waves-effect waves-light teal lighten-1 hoverable" OnClick="LinkButton1_Click"><i class="material-icons left">person_add</i>Submit</asp:LinkButton>
            </div>  
        </div>       
         </form>
   
    <!--Form End-->

    <script src="Scripts/jquery-1.10.2.min.js" type="text/javascript"></script>
    <script src="Scripts/materialize.min.js"></script>
    <script src="Scripts/init.js" type="text/javascript"></script>
    <%--<script src="Scripts/bootstrap.min.js" type="text/javascript"></script>--%>
</body>
</html>
