<%@ Page Title="" Language="C#" MasterPageFile="~/mainpage.master" AutoEventWireup="true" CodeFile="login master1.aspx.cs" Inherits="login_master1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="Contentstyle1" Runat="Server">
           <link rel="stylesheet" href="login.css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Contentheadernav" Runat="Server">
         <a href="index master.aspx">Home</a>
        <a href="index master.aspx">Gallery</a>
        <a href="index master.aspx">Services</a>
        <a href="booking master1.aspx">Booking</a>
         <a href="about master.aspx">About</a>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="Contentheader" Runat="Server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="contentbody" Runat="Server">
    <section class="class">
      <div class="loging">
        <div class="log">
          <h2>log in</h2>
          <div class="loging-form">
            <div class="logform">

               <label for="uname"><b class="label">E-Mail</b></label>
                <asp:TextBox ID="Test_mail" runat="server"  placeholder="Enter E-Mail" class="uname" name="uname" required TextMode="Email"></asp:TextBox>
              
             <label for="password" class="label"><b class="pass">Password</b></label>
                <asp:TextBox ID="Test_pass" runat="server"  placeholder="Enter password" class="password" name="password" required TextMode="Password"></asp:TextBox>

                <asp:Button ID="Button_log" runat="server" Text="Log In" class="submit" OnClick="Button_log_Click" />

              <p>
                Not a Member?
                <span><a class="sign" href="signup master.aspx">Sign Up</a></span>
              </p>
            </div>
          </div>
        </div>
      </div>
    </section>
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="script" Runat="Server">
    <script src="jquery-3.6.0.min.js"></script>
    <script src="jquery.nicescroll.js"></script>
    <script>
      $("html").niceScroll({
        cursorcolor: "#2b2b2c",
        cursorwidth: "20px",
        cursorborder: "1px solid #ca813a",
        cursorborderradius: "5px",
      });
    </script>
</asp:Content>

