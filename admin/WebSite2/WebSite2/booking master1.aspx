<%@ Page Title="" Language="C#" MasterPageFile="~/mainpage.master" AutoEventWireup="true" CodeFile="booking master1.aspx.cs" Inherits="booking_master1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="Contentstyle1" Runat="Server">
          <link rel="stylesheet" href="booking.css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Contentheadernav" Runat="Server">
         <a href="index master.aspx">Home</a>
        <a href="index master.aspx">Gallery</a>
        <a href="index master.aspx">Services</a>
        <a href="#">Booking</a>
         <a href="about master.aspx">About</a>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="Contentheader" Runat="Server">
     <asp:Label ID="Label2" runat="server" Text="Label" class="user-name" ></asp:Label>
     <asp:Button ID="Button1" runat="server" Text="log out" class="logout" OnClick="But11_vr_Click" /> 
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="contentbody" Runat="Server">
     <section class="master">
      <div class="container">
        <div class="booking-now">
          <div class="details">
            <h2>Booking Now</h2>
            <div class="booking-form">
                            
              <form class="master-form">
                <div class="booking-form">
                  <label for="fname">Full Name: </label>
                    <asp:TextBox ID="Tex_fname" runat="server" placeholder="Enter your full name" class="fname" name="fname" ></asp:TextBox>
                  
                  <label for="number">Phone Number: </label>
                    <asp:TextBox ID="Tex_num" runat="server"  placeholder="Enter your number" class="number" name="number"  TextMode="Phone"></asp:TextBox>
                 
                  <label for="email">E-Mail: </label>
                    <asp:TextBox ID="Tex_mal" runat="server"  placeholder="Enter your email"  class="email" name="email"  TextMode="Email"></asp:TextBox>
                 
                  <label for="arrival"> Arrival Date: </label>
                    <asp:TextBox ID="Tex_datrr" runat="server"  placeholder="Enter your  Arrival date" class="arrival" name="arrival" TextMode="Date"></asp:TextBox>
                  
                  <label for="departure"> Departure Date: </label>
                    <asp:TextBox ID="Tex_datda" runat="server" placeholder="Enter your Departure date" class="departure" name="departure"  TextMode="Date"></asp:TextBox>

                    <label for="type"> Room type:</label>
                    <asp:DropDownList ID="DropDownList1" runat="server" Class="type">
                        <asp:ListItem Text="single"  value="n" Selected="True" />
                        <asp:ListItem Text="double" Value="vc" />
                    </asp:DropDownList>

                    <asp:Button ID="But_reset" runat="server" Text="Reset" class="reset" type="reset" OnClick="But_reset_Click"  />
                    <asp:Button ID="But_submit" runat="server" Text="Submit" class="submit" type="submit" OnClick="But_submit_Click" />
      
                </div>
               </form>
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

