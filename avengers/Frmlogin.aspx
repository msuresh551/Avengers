﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Frmlogin.aspx.cs" Inherits="Frmlogin" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script type="text/javascript">

        function validateLogin() {
            if (document.getElementById('txtUsername').value == "") {
                alert('Please enter Username');
                document.getElementById('txtUsername').focus();
                return false;
            }
            if (document.getElementById('txtPassword').value == "") {
                alert('Please enter Password');
                document.getElementById('txtPassword').focus();
                return false;
            }
        }

        function validate() {
            if (document.getElementById('txtRUsername').value == "") {
                alert('Please enter Username');
                document.getElementById('txtUsername').focus();
                return false;
            }
            if (document.getElementById('txtRPassword').value == "") {
                alert('Please enter Password');
                document.getElementById('txtPassword').focus();
                return false;
            }
            if (document.getElementById('confirmtxtPassword').value == "") {
                alert('Please enter Confirm Password');
                document.getElementById('confirmtxtPassword').focus();
                return false;
            }
            if (document.getElementById('txtFUllname').value == "") {
                alert('Please enter Full Name');
                document.getElementById('txtFUllname').focus();
                return false;
            }
            //validate radio


            //            if (document.getElementById("rbMale").checked == false && document.getElementById("rbFemale").checked == false) {
            //                alert('Please Select the Gender');
            //                document.getElementById('rbMale').focus();
            //                return false;
            //            }
            if (document.getElementById("rbMaleorFemale").value == "")  //Client ID of the DropDownList
            {
                alert("Please select Your Gender");
                return false;
            }

            var radio = document.getElementsByName("rbMaleorFemale"); //Client ID of the RadioButtonList1
            var status = false;
            for (var i = 0; i < radio.length; i++) {

                if (radio[i].checked) { // Checked property to check radio Button check or not
                    status = true;
                }
            }
            if (status == false) {
                alert("Please select Your Gender"); // Show the checked value
                return false;

            }
            if (document.getElementById('txtEmailID').value == "") {
                alert('Please enter Email ID');
                document.getElementById('txtEmailID').focus();
                return false;


            }
        }

    
    </script>
    <style>
        .btn
        {
            background-image: -webkit-linear-gradient(top, #3498db, #2980b9);
            background-image: -moz-linear-gradient(top, #3498db, #2980b9);
            background-image: -ms-linear-gradient(top, #3498db, #2980b9);
            background-image: -o-linear-gradient(top, #3498db, #2980b9);
            background-image: linear-gradient(to bottom, #3498db, #2980b9);
            -webkit-border-radius: 5px;
            -moz-border-radius: 5px;
            border-radius: 5px;
            font-family: Arial;
            color: #ffffff;
            font-size: 20px;
            padding: 10px 20px 10px 20px;
            text-decoration: none;
        }
        
        .btn:hover
        {
            background: #3cb0fd;
            background-image: -webkit-linear-gradient(top, #3cb0fd, #3498db);
            background-image: -moz-linear-gradient(top, #3cb0fd, #3498db);
            background-image: -ms-linear-gradient(top, #3cb0fd, #3498db);
            background-image: -o-linear-gradient(top, #3cb0fd, #3498db);
            background-image: linear-gradient(to bottom, #3cb0fd, #3498db);
            text-decoration: none;
        }
        
        .textbox
        {
            border: 1px solid #848484;
            -webkit-border-radius: 5px;
            -moz-border-radius: 5px;
            border-radius: 5px;
            outline: 0;
            height: 25px;
            padding-left: 10px;
            padding-right: 10px;
            width: 230px;
            color: #333333;
            padding: 3px;
            margin-right: 4px;
            margin-bottom: 8px;
            font-family: tahoma, arial, sans-serif;
        }
        .textbox:hover
        {
            border: 1px solid #3B99F0;
        }
    </style>
    <style type="text/css">
        .btn
        {
            background-image: linear-gradient(to bottom, #3498db, #2980b9);
            -webkit-border-radius: 5px;
            -moz-border-radius: 5px;
            border-radius: 5px;
            font-family: Arial;
            color: #ffffff;
            font-size: 20px;
            padding: 10px 20px 10px 20px;
            text-decoration: none;
            height: 55px;
        }
        
        .btn:hover
        {
            background: #3cb0fd;
            background-image: -webkit-linear-gradient(top, #3cb0fd, #3498db);
            background-image: -moz-linear-gradient(top, #3cb0fd, #3498db);
            background-image: -ms-linear-gradient(top, #3cb0fd, #3498db);
            background-image: -o-linear-gradient(top, #3cb0fd, #3498db);
            background-image: linear-gradient(to bottom, #3cb0fd, #3498db);
            text-decoration: none;
        }
        .textbox
        {
            border: 1px solid #848484;
            -webkit-border-radius: 5px;
            -moz-border-radius: 5px;
            border-radius: 5px;
            outline: 0;
            height: 25px;
            padding-left: 10px;
            padding-right: 10px;
            width: 230px;
            color: #333333;
            padding: 3px;
            margin-right: 4px;
            margin-bottom: 8px;
            font-family: tahoma, arial, sans-serif;
        }
        .textbox:hover
        {
            border: 1px solid #3B99F0;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>
    <table width="80%">
        <tr>
            <td>
                <table>
                    <%--style="height: 600px; margin-left: 100px;"--%>
                    <tr>
                        <td>
                            <img alt="Sweet Memories" title="Sweet Memories" width="400px" height="400px" src="images/Flower.jpg" />
                        </td>
                        <td>
                            <table width="100%">
                                <tr>
                                    <td>
                                        <img alt="Logo" title="Logo" src="images/Logo.png" />
                                    </td>
                                </tr>
                                <%--    <tr>
                                    <td >
                                        <td style="font-size: 30px; color: #33536d; margin: 11px 0 24px; line-height: 41px;">
                                        Your stuff, anywhere
                                    </td>
                                        
                                    </td>
                                </tr>--%>
                                <tr>
                                    <td>
                                        <asp:TextBox ID="txtUsername" placeholder="Username" onfocus="this.placeholder=''"
                                            onblur="this.placeholder='Username'" MaxLength="20" class="textbox" title="Username"
                                            runat="server"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <asp:TextBox ID="txtPassword" placeholder="Password" onfocus="this.placeholder=''"
                                            onblur="this.placeholder='Password'" MaxLength="50" CssClass="textbox" ToolTip="Password"
                                            runat="server" TextMode="Password"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <asp:Button ID="btnsubmit" CssClass="btn" runat="server" Text="Login" OnClick="btnsubmit_Click"
                                            OnClientClick="return validateLogin()" />
                                        <%--  <asp:ImageButton ID="btnSubmit"  ImageUrl="" runat="server"></asp:ImageButton>--%>
                                    </td>
                                </tr>
                                <%--
                                <%--<tr>
                                            <td>
                                                Register for New User
                                            </td>
                                        </tr>--%>
                                <%-- <tr>
                                            <td>
                                                <table width="100%;">
                                                    <tr>
                                                        <td>
                                                            Register for New User
                                                        </td>
                                                        <td>
                                                            <span style="font-size: 30px; color: #33536d; margin: 11px 0 24px; line-height: 41px;">
                                                            </span><a href="frmUserregistration.aspx" title="User Registration">
                                                                <img alt="Logo" title="Sweet Memories" width="120px" height="50px" src="images/btnSignup.jpg" /></a>
                                                        </td>
                                                    </tr>
                                                </table>
                                            </td>
                                        </tr>--%>
                            </table>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td>
                <table align="center" style="" cellpadding="0px" cellspacing="0px" width="100%;">
                    <tr>
                        <td align="center">
                            <table cellpadding="0px" cellspacing="0px" width="100%;">
                                <%--   <tr>
                        <td width="250px" align="right">
                            <img src="images/Logo.png" alt="Logo" src="Frmlogin.aspx" />
                        </td>
                        <td width="10px">
                        </td>
                        <td width="250px">
                        </td>
                    </tr>--%>
                                <tr>
                                    <td colspan="3" align="center">
                                        Please Login Here................
                                    </td>
                                </tr>
                                <tr height="20px;">
                                    <td>
                                    </td>
                                </tr>
                                <tr>
                                    <td align="right">
                                        Username :
                                    </td>
                                    <td>
                                    </td>
                                    <td align="left">
                                        <asp:TextBox ID="txtRUsername" CssClass="textbox" runat="server"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td align="right">
                                        Password :
                                    </td>
                                    <td>
                                    </td>
                                    <td align="left">
                                        <asp:TextBox ID="txtRPassword" CssClass="textbox" runat="server" TextMode="Password"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td align="right">
                                        Confirm Password:
                                    </td>
                                    <td>
                                    </td>
                                    <td align="left">
                                        <asp:TextBox ID="confirmtxtPassword" TextMode="Password" CssClass="textbox" runat="server"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td align="right">
                                        Full Name :
                                    </td>
                                    <td>
                                    </td>
                                    <td align="left">
                                        <asp:TextBox CssClass="textbox" ID="txtFUllname" runat="server"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td align="right">
                                        Gender :
                                    </td>
                                    <td>
                                    </td>
                                    <td align="left">
                                        <asp:RadioButtonList ID="rbMaleorFemale" runat="server" RepeatDirection="Horizontal">
                                            <asp:ListItem>Male</asp:ListItem>
                                            <asp:ListItem>Female</asp:ListItem>
                                        </asp:RadioButtonList>
                                    </td>
                                </tr>
                                <tr>
                                    <td align="right">
                                        Email ID :
                                    </td>
                                    <td>
                                    </td>
                                    <td align="left">
                                        <asp:TextBox CssClass="textbox" ID="txtEmailID" runat="server"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td align="right">
                                        Magazine
                                    </td>
                                    <td>
                                    </td>
                                    <td align="left">
                                        <asp:DropDownList ID="DropDownList1" runat="server" CssClass="textbox">
                                            <asp:ListItem Value="0">Select Magazine Type</asp:ListItem>
                                            <asp:ListItem Value="1">Customer</asp:ListItem>
                                            <asp:ListItem Value="2">Advertiser</asp:ListItem>
                                        </asp:DropDownList>
                                    </td>
                                </tr>
                                <tr>
                                    <td align="right">
                                        <asp:Button ID="btnRegister" CssClass="btn" OnClientClick="return validate();" runat="server"
                                            Text="Submit" OnClick="btnRegister_Click" />
                                    </td>
                                    <td>
                                    </td>
                                    <td align="left">
                                        <asp:Button ID="btnCancel" CssClass="btn" runat="server" Text="Back" OnClick="btnCancel_Click" />
                                    </td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>
    </form>
</body>
</html>
