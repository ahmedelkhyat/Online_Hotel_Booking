<%@ Page Title="" Language="C#" MasterPageFile="~/mainpage.master" AutoEventWireup="true" CodeFile="about master.aspx.cs" Inherits="about_master" %>

<asp:Content ID="Content1" ContentPlaceHolderID="Contentstyle1" Runat="Server">
     <link rel="stylesheet" href="about.css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Contentheadernav" Runat="Server">
     <a href="index master.aspx">Home</a>
        <a href="index master.aspx">Gallery</a>
        <a href="index master.aspx">Services</a>
        <a href="booking master1.aspx">Booking</a>
         <a href="#">About</a>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="Contentheader" Runat="Server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="contentbody" Runat="Server">
      <section>
      <video autoplay loop class="video-background" muted>
        <source src="images/video.mp4" type="video/mp4" />
      </video>
      <div class="abouts">
        <div class="abouta">
          <h1>About Luxury Hotels</h1>
          <p>
            Luxury Hotels, is an Indian hospitality chain of leased and
            franchised hotels, homes and living spaces. Founded in 2020 by
            Vineet Kumar, Luxury initially consisted mainly of budget hotels.
            The startup expanded globally with thousands of hotels, vacation
            homes and millions of rooms in India, Malaysia, UAE, Nepal, China,
            Brazil, Mexico, UK, Philippines, Japan, Saudi Arabia, Sri Lanka,
            Indonesia, Vietnam, the United States and more. Nestled beside an
            18-hole golf course minutes from the slopes, Hotel Park City is
            consistently acclaimed among the best hotels in Park City, Utah.
            Among our most recent accolades, our AAA Four Diamond resort has
            proudly been rated a “Top Ski Hotel” by Conde Nast Traveler, and our
            Ruth’s Chris Steak House is the #1 rated Ruth’s Chris Steak House in
            the western U.S. We’ve also been placed in the Certificate of
            Excellence Hall of Fame by TripAdvisor and earned the Certificate of
            Excellence (TripAdvisor), a Platinum Choice Award (Smart Meetings
            Magazine), recognition as a “Most Admired Company” (Utah Business
            Magazine) and more
          </p>
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

