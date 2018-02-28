<%@ Page Title="" Language="C#" MasterPageFile="~/Users.master" AutoEventWireup="true"
    CodeFile="UpdateProfile.aspx.cs" Inherits="UpdateProfile" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
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
    <script type="text/javascript">
        changeBackground("UserProfile");
    </script>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <%--<asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>--%>
    <table align="center" style="" cellpadding="0px" cellspacing="0px" width="100%;">
        <tr>
            <td align="center">
                <table cellpadding="0px" cellspacing="0px" width="100%;">
                    <tr>
                        <td width="250px">
                            <img src="images/Logo.png" alt="Logo" src="Frmlogin.aspx" />
                        </td>
                        <td width="10px">
                        </td>
                        <td width="250px">
                        </td>
                    </tr>
                    <tr>
                        <td colspan="3" align="center">
                            <h2>Update Profile</h2>
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
                            <asp:TextBox ID="txtUsername" CssClass="textbox" runat="server" ReadOnly="true"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td align="right">
                            Mobile No :
                        </td>
                        <td>
                        </td>
                        <td align="left">
                            <asp:TextBox CssClass="textbox" ID="txtmobile" runat="server"></asp:TextBox>
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
                            Billing Address :
                        </td>
                        <td>
                        </td>
                        <td align="left">
                            <asp:TextBox CssClass="textbox" ID="txtbill" runat="server" TextMode="MultiLine"
                                Height="80px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td align="right">
                            Temparary Address :
                        </td>
                        <td>
                        </td>
                        <td align="left">
                            <asp:TextBox CssClass="textbox" ID="txtaddresstemp" runat="server" TextMode="MultiLine"
                                Height="80px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td align="center" colspan="3">
                            <table align="center">
                                <tr>
                                    <td align="center">
                                        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                                            <ContentTemplate>
                                                <asp:Button ID="btnSumit" CssClass="btn" OnClientClick="return validate();" runat="server"
                                                    Text="update" OnClick="btnSumit_Click" />
                                            </ContentTemplate>
                                        </asp:UpdatePanel>
                                    </td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>
</asp:Content>
