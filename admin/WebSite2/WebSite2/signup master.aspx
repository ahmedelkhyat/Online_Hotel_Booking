<%@ Page Title="" Language="C#" MasterPageFile="~/mainpage.master" AutoEventWireup="true" CodeFile="signup master.aspx.cs" Inherits="signup_master" %>

<asp:Content ID="Content1" ContentPlaceHolderID="Contentstyle1" Runat="Server">
     <link rel="stylesheet" href="signup.css" />
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
     <section class="sign-up">
      <div class="register">
        <h1>Sign Up</h1>
              
               <div class="form"  runat="server">
                   
          <label for="fname">Full Name</label>
                   <asp:TextBox ID="Txt_name" class="name" runat="server"  placeholder="Full Name" required=""></asp:TextBox>

          <label for="email">E-Mail</label>
                   <asp:TextBox ID="Txt_email" class="email" runat="server"  placeholder="Email Address" required="" TextMode="Email"></asp:TextBox>
          
          <label for="password">Password</label>
                   <asp:TextBox ID="Txt_password" class="password" runat="server" placeholder="Password"  required="" TextMode="Password" ></asp:TextBox>
         
                  
           <label for="date">Birthday</label>
                   <asp:TextBox ID="Txt_date" class="date" runat="server" required="" TextMode="Date"></asp:TextBox>

                     <a href="booking master1.aspx"></a>
                   <asp:Button ID="but_sign" runat="server" Text="Sign Up"  type="submit" class="submit" OnClick="but_sign_Click"   />
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

