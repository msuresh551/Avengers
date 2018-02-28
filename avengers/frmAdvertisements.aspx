<%@ Page Title="" Language="C#" MasterPageFile="~/Users.master" AutoEventWireup="true"
    CodeFile="frmAdvertisements.aspx.cs" Inherits="frmAdvertisements" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <script type="text/javascript">
        changeBackground("Advertisement");
    
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
    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <table align="center" style="" cellpadding="0px" cellspacing="0px" width="100%;">
        <tr>
            <td align="center">
                <table cellpadding="0px" cellspacing="0px" width="100%;">
                    <tr>
                        <td width="250px">
                            <img src="images/Logo.png" alt="Logo" src="index.html" />
                        </td>
                        <td width="10px">
                        </td>
                        <td width="250px">
                        </td>
                    </tr>
                    <tr>
                        <td colspan="3" align="center">
                           <h1>
                            Add New Magazine Here</h1>
                        </td>
                    </tr>
                    <tr height="20px;">
                        <td>
                        </td>
                    </tr>
                    <tr>
                        <td align="right">
                            Name of The magazine :
                        </td>
                        <td>
                        </td>
                        <td align="left">
                            <asp:TextBox ID="txtMTitle" CssClass="textbox" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr height="50px">
                        <td align="right">
                            Description:
                        </td>
                        <td>
                        </td>
                        <td align="left">
                            <asp:TextBox ID="txtMDescripiton" CssClass="textbox" runat="server" Height="100px"
                                TextMode="MultiLine"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td align="right">
                            Price:
                        </td>
                        <td>
                        </td>
                        <td align="left">
                            <asp:TextBox CssClass="textbox" Enabled="false" Text="500" ID="txtPrice" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td align="right" colspan="3" align="center">
                            <table align="center">
                                <tr>
                                    <td>
                                        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                                            <ContentTemplate>
                                                <asp:Button ID="btnSumit" OnClientClick="return validate();" runat="server" Text="Submit"
                                                    OnClick="btnSumit_Click" Height="38px" Width="94px" />
                                            </ContentTemplate>
                                        </asp:UpdatePanel>
                                    </td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                    <tr>
                        <td  colspan="3" align="center">
                            <h1>
                                Update Your Daily/Weekly/Yearly Magazine</h1>
                        </td>
                        <td>
                        </td>
                    </tr>
                    <tr>
                        <td align="right" style="padding-right: 30px;">
                            Select Your magazine:
                        </td>
                        <td>
                        </td>
                        <td>
                            <asp:DropDownList ID="ddlMagazineType" runat="server" CssClass="textbox"     DataSourceID="SqlDataSource1"
                                DataTextField="AdvertisementTitle" DataValueField="Id">
                            </asp:DropDownList>
                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:avengersConnectionString %>"
                                SelectCommand="SELECT [Id], [AdvertisementTitle] FROM [Advertisements] WHERE ([UserID] = @UserID)">
                                <SelectParameters>
                                    <asp:SessionParameter Name="UserID" SessionField="ID" Type="Int32" />
                                </SelectParameters>
                            </asp:SqlDataSource>
                        </td>
                    </tr>
                    <tr>
                        <td align="center" colspan="3">
                            <asp:UpdatePanel ID="UpdatePanel2" runat="server">
                                <Triggers>
                                    <asp:PostBackTrigger ControlID="txtFreq" />
                                </Triggers>
                                <ContentTemplate>
                                    <table style="height: 380px" cellpadding="0px" cellspacing="0px">
                                        <tr>
                                            <td style="margin-left: 200px">
                                                <table cellpadding="5px" cellspacing="0px">
                                                    <tr style="height: 25px;">
                                                        <td colspan="2">
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td style="padding-left: 50px;">
                                                            Upload your Poster
                                                        </td>
                                                        <%--colspan="1" style="padding-left: 100px; padding-bottom: 20px;"--%>
                                                        <td >
                                                            <asp:FileUpload ID="MY_FileUpload" multiple accept='image/*' runat="server" />
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td style="padding-left: 50px;">
                                                            Title of the Week/Month/Year
                                                        </td>
                                                        <td>
                                                            <asp:TextBox runat="server" ID="txtOptional" CssClass="textbox"></asp:TextBox>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td style="padding-left: 50px;">
                                                            Description
                                                        </td>
                                                        <td>
                                                            <asp:TextBox runat="server" ID="txtDescription" CssClass="textbox" TextMode="MultiLine" Height="50px"></asp:TextBox>
                                                        </td>
                                                    </tr>

                                                    <tr>
                                                        <td style="padding-left: 50px;">
                                                            Web Site URL
                                                        </td>
                                                        <td>
                                                            <asp:TextBox runat="server" ID="txtUrl" CssClass="textbox" ></asp:TextBox>
                                                        </td>
                                                    </tr>



                                                    <tr>
                                                        <td colspan="2" style="padding-top: 20px; padding-left: 200px">
                                                            <asp:Button ID="txtFreq" runat="server"  Text="Submit" OnClick="txtFreq_Click" 
                                                                Height="38px" Width="86px" />
                                                        </td>
                                                    </tr>
                                                    <tr style="height: 250px;">
                                                        <td colspan="2">
                                                        </td>
                                                    </tr>
                                                </table>
                                            </td>
                                        </tr>
                                    </table>
                                </ContentTemplate>
                            </asp:UpdatePanel>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>
</asp:Content>
