<%@ Page Title="" Language="C#" MasterPageFile="~/Users.master" AutoEventWireup="true" CodeFile="frmCustomer.aspx.cs" Inherits="frmCustomer" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">

<script type="text/javascript">
    changeBackground("Customer");

</script>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">






<table style="min-height: 405px;">
                <tr>
                    
                    <td>
                        <table width="100px;">
                            <tr>
                                <td>
                                   Your Subcribed E - Magazines       
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:DataList ID="gvImages" runat="server" RepeatDirection="Horizontal" 
                                        RepeatColumns="3" DataSourceID="SqlDataSource1">
                                        <ItemTemplate>
                                            <%--
                                            <asp:Label ID="PosterLabel" runat="server" Text='<%# Eval("Poster") %>' />--%>
                                           <asp:Image ID="Image" runat="server" Height="300px" Width="350px" ImageUrl='<%# Bind("Poster") %>'>
                                            </asp:Image>
                                            <br />
                                            File:
                                            <asp:Label ID="FileLabel" runat="server" Text='<%# Eval("File") %>' />
                                            <br />
                                            Description:
                                            <asp:Label ID="DescriptionLabel" runat="server" 
                                                Text='<%# Eval("Description") %>' />
                                            <br />
                                            <asp:Label ID="AddIDLabel" runat="server" Text='<%# Eval("AddID") %>' Visible="false" />
                                            <asp:Label ID="AdvertiseType_IDLabel" runat="server"  Visible="false" 
                                                Text='<%# Eval("AdvertiseType_ID") %>' />
                                            <br />
                                          <asp:Button id="btnsubcribe" runat="server" Text="Unsubcribe"/>
                                        </ItemTemplate>
                                    </asp:DataList>
                                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                                        ConnectionString="<%$ ConnectionStrings:avengersConnectionString %>" 
                                        SelectCommand="SELECT [Poster], [File], [Description], [AddID], [AdvertiseType_ID] FROM [Frequency]">
                                    </asp:SqlDataSource>
<%--                                    <asp:SqlDataSource ID="Images" runat="server" ConnectionString="<%$ ConnectionStrings:hackadayConnectionString %>"
                                        SelectCommand="SELECT [Imagefile] FROM [UserImages] WHERE ([F_UserId] = @F_UserId)">
                                        <SelectParameters>
                                            <asp:SessionParameter Name="F_UserId" SessionField="ID" Type="Int32" />
                                        </SelectParameters>
                                    </asp:SqlDataSource>
--%>                                </td>
                            </tr>
                        </table>
                    </td>
                </tr>
            </table>
</asp:Content>

