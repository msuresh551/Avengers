<%@ Page Title="" Language="C#" MasterPageFile="~/Users.master" AutoEventWireup="true"
    CodeFile="Contactus.aspx.cs" Inherits="Contactus" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="keywords" content="corporate blue, theme, free templates, website templates, CSS, HTML" />
    <meta name="description" content="Corporate Blue Theme is a free website template provided by tooplate.com" />
    <link href="tooplate_style.css" rel="stylesheet" type="text/css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <script type="text/javascript">
        changeBackground("Contact");
    
    </script>
    <div id="tooplate_content">
        <h2>
            Contact Information</h2>
        <div class="cleaner_h40">
        </div>
        <div class="col_w460">
            <div id="contact_form">
                <h4>
                    Quick Contact Form</h4>
                <form method="post" name="contact" action="#">
                <label for="author">
                    Name:</label>
                <input type="text" id="author" name="author" class="required input_field" />
                <div class="cleaner_h10">
                </div>
                <label for="email">
                    Email:</label>
                <input type="text" class="validate-email required input_field" name="email" id="email" />
                <div class="cleaner_h10">
                </div>
                <label for="subject">
                    Subject:</label>
                <input type="text" class="validate-subject required input_field" name="subject" id="subject" />
                <div class="cleaner_h10">
                </div>
                <label for="text">
                    Message:</label>
                <textarea id="text" name="text" rows="0" cols="0" class="required"></textarea>
                <div class="cleaner_h10">
                </div>
                <input type="submit" value="Send" id="submit" name="submit" class="submit_btn float_l" />
                <input type="reset" value="Reset" id="reset" name="reset" class="submit_btn float_r" />
                </form>
            </div>
        </div>
        <div class="col_w460 last_col">
            <h4>
                Mailing Addresses</h4>
            <h6>
                Company Name 1</h6>
            MJCET
            <br />
            Panjagutta<br />
            Hyderabad<br />
            <br />
            Tel: 010-020-6600<br />
            Fax: 010-020-4400
            <div class="hr_divider">
            </div>
            <br />
            <h6>
                Company Name 2</h6>
            MJCET,
            <br />
            Panjagutta<br />
            Hyderabad<br />
            <br />
            Tel: 010-022-5520<br />
            Fax: 010-044-4240
        </div>
        <div class="cleaner">
        </div>
    </div>
    <div class="cleaner">
    </div>
    <div class="cleaner">
    </div>
</asp:Content>
