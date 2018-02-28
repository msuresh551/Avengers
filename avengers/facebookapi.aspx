<%@ Page Title="" Language="C#" MasterPageFile="~/Users.master" AutoEventWireup="true" CodeFile="facebookapi.aspx.cs" Inherits="facebookapi" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">


<script type="text/javascript">    (function (d, s, id) {
        var js, fjs = d.getElementsByTagName(s)[0];
        if (d.getElementById(id)) return;
        js = d.createElement(s); js.id = id;
        js.src = "//connect.facebook.net/en_US/sdk.js#xfbml=1&version=v2.0";
        fjs.parentNode.insertBefore(js, fjs);
    } (document, 'script', 'facebook-jssdk'));</script>


</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">



<div class="fb-like" data-href="http://csharpdotnethub.blogspot.in/" data-width="10" data-layout="standard" data-action="like" data-show-faces="true" data-share="true"></div>

<div id="fb-root"></div>


</asp:Content>

