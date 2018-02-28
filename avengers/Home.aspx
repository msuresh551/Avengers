<%@ Page Title="" Language="C#" MasterPageFile="~/Users.master" AutoEventWireup="true"
    CodeFile="Home.aspx.cs" Inherits="Home" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <script type="text/javascript">
        changeBackground("Home");
    
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>
            <script type="text/javascript">
                (function (d, s, id) {
                    var js, fjs = d.getElementsByTagName(s)[0];
                    if (d.getElementById(id)) return;
                    js = d.createElement(s); js.id = id;
                    js.src = "//connect.facebook.net/en_US/sdk.js#xfbml=1&version=v2.0";
                    fjs.parentNode.insertBefore(js, fjs);
                } (document, 'script', 'facebook-jssdk'));</script>
            <table style="min-height: 405px;">
                <tr>
                    <td>
                        <table width="100px;">
                            <tr>
                                <td>
                                    All Advertizements Magazines
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:UpdatePanel ID="testing" runat="server">
                                        <ContentTemplate>
                                            <asp:DataList ID="gvImages" runat="server" RepeatDirection="Horizontal" RepeatColumns="3"
                                                OnItemCommand="gvImages_ItemCommand">
                                                <ItemTemplate>

                                                    <asp:Image ID="Image" runat="server" Height="300px" Width="350px" ImageUrl='<%# Bind("Poster") %>'>
                                                    </asp:Image>
                                                    <br />
                                                    Title:
                                                    <asp:Label ID="Label1" runat="server" Text='<%# Eval("Title") %>' />
                                                    <br />
                                                    File:
                                                    <asp:Label ID="FileLabel" runat="server" Text='<%# Eval("File") %>' />
                                                    <br />
                                                    Description:
                                                    <asp:Label ID="DescriptionLabel" runat="server" Text='<%# Eval("Description") %>' />
                                                    
                                                    <br />
                                                    <a href='<%# Eval("Image_url") %>' target="_blank">Get More Details</a>
                                                    <br />
                                                    
                                                    <div class="fb-like" data-href='<%# Eval("Image_url") %>' data-width="10" data-layout="standard"
                                                        data-action="like" data-show-faces="true" data-share="true">
                                                    </div>
                                                    <br />
                                                   
                                                   <%-- <asp:Label ID="AddID" runat="server" Text='<%# Eval("AddID") %>' Visible="false" />--%>
                                                    <asp:Label ID="AdvertiseType_ID" runat="server" Visible="false" Text='<%# Eval("AdvertiseType_ID") %>' />
                                                    <asp:Button ID="btnsubcribe" runat="server" Text="Subscribe" CommandName="subscribe" />
                                                    <asp:Button ID="btnUnsubscribe" CommandName="Unsubscribe" runat="server" Visible="false"
                                                        Text="UnSubscribe" />
                                                </ItemTemplate>
                                            </asp:DataList>
                                            
                                        </ContentTemplate>
                                    </asp:UpdatePanel>
                                    <%-- <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                                        ConnectionString="<%$ ConnectionStrings:avengersConnectionString %>" 
                                        SelectCommand="SELECT [Poster], [File], [Description], [AddID], [AdvertiseType_ID],Image_url FROM [Frequency]">
                                    </asp:SqlDataSource>--%>
                                </td>
                            </tr>
                        </table>
                    </td>
                </tr>
            </table>
            <div id="fb-root">
            </div>
        </ContentTemplate>
    </asp:UpdatePanel>
</asp:Content>
