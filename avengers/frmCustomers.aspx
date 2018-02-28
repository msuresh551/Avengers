<%@ Page Title="" Language="C#" MasterPageFile="~/Users.master" AutoEventWireup="true"
    CodeFile="frmCustomers.aspx.cs" Inherits="frmCustomers" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <table>
        <tr>
            <td>
                <asp:GridView ID="gvCustomers" runat="server">
                </asp:GridView>
            </td>
        </tr>
    </table>
</asp:Content>
