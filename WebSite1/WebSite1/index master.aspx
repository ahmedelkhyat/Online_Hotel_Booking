<%@ Page Title="" Language="C#" MasterPageFile="~/mainpage.master" AutoEventWireup="true" CodeFile="index master.aspx.cs" Inherits="index_master" %>

<asp:Content ID="Content1" ContentPlaceHolderID="Contentstyle1" Runat="Server">
    <link rel="stylesheet" href="style.css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Contentheadernav" Runat="Server">
     <a href="index master.aspx">Home</a>
        <a href="#gallery">Gallery</a>
        <a href="#services">Services</a>
        <a href="booking master1.aspx">Booking</a>
         <a href="about master.aspx">About</a>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="Contentheader" Runat="Server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="contentbody" Runat="Server">
    <section class="main">
      <div>
        <h2>Perfection</h2>
        <h3>And You Are <span>Invited</span></h3>
      </div>
    </section>
    <section class="gallery" id="gallery">
      <h1 class="title"><span>Our</span> &nbsp;Gallery</h1>
      <div class="content">
        <img src="images/1.jpg" alt="Photo" />
        <img src="images/2.jpg" alt="Photo" />
        <img src="images/3.jpg" alt="Photo" />
        <img src="images/4.jpg" alt="Photo" />
        <img src="images/5.jpg" alt="Photo" />
        <img src="images/6.jpg" alt="Photo" />
      </div>
    </section>
    <section class="services" id="services">
      <h1 class="title">Services</h1>
      <div class="content">
        <div class="item">
          <div class="icon">
            <i class="fa-solid fa-utensils"></i>
          </div>
          <div class="info">
            <h3>Food Service/ Food Runner</h3>
            <p>
              the food they serve can be simple and easy to understand to every
              guests but it has it’s subtle of balance on the
              tradition,culture,modernity of the restaurant.
            </p>
          </div>
        </div>
        <div class="item">
          <div class="icon">
            <i class="fa-solid fa-water-ladder"></i>
          </div>
          <div class="info">
            <h3>Refreshment</h3>
            <p>
              Example of facilities in most hotels that are five stars and above
              are swimming pool, outdoor games pool, restaurants, lounges, bars,
              golf clubs, spa and Jacuzzi, parking garage, conference rooms ,
              banquet rooms.
            </p>
          </div>
        </div>
        <div class="item">
          <div class="icon">
            <i class="fa-solid fa-broom"></i>
          </div>
          <div class="info">
            <h3>Housekeeping</h3>
            <p>
              Housekeeping Department have a crucial role in the hotel
              operations. Currently hotel industry is growing, so customer
              service must be improved to meet the growing needs of customers.
            </p>
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

