<%@ Page Title="" Language="C#" MasterPageFile="~/mPage.master" AutoEventWireup="true" CodeFile="admin master.aspx.cs" Inherits="admin_master" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolderstyle" Runat="Server">
     <link rel="stylesheet" href="admin.css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHeader" Runat="Server">
    <asp:Label ID="Label" runat="server" Text="label" class="user-name"></asp:Label>
    <asp:Button ID="Butt_0out" class="logout" runat="server" Text="Log Out" OnClick="Butt_0out_Click"/>
       <div class="wrapper">
      <input type="checkbox" id="btn" hidden />
      <label for="btn" class="menu-btn">
        <i class="fas fa-bars"></i>
        <i class="fas fa-times"></i>
      </label>
      <nav id="sidebar">
        <div class="title">Luxury</div>
        <ul class="list-items">
          <li>
            <a href="clients master.aspx"><i class="fa-solid fa-users"></i>Clients</a>
          </li>
          <li>
            <a href="employees master.aspx"
              ><i class="fa-solid fa-user-tie"></i>Employees</a
            >
          </li>
          <li>
            <a href="feedback! master.aspx"
              ><i class="fa-solid fa-comment"></i>Feedback</a
            >
          </li>
          <div class="icons">
            <a href="https://www.facebook.com" target="blank"
              ><i class="fa-brands fa-facebook"></i
            ></a>
            <a href="https://www.instagram.com" target="blank"
              ><i class="fa-brands fa-instagram"></i
            ></a>
            <a href="https://twitter.com" target="blank"
              ><i class="fa-brands fa-twitter"></i
            ></a>
            <a href="https://www.youtube.com" target="blank"
              ><i class="fa-brands fa-youtube"></i
            ></a>
          </div>
        </ul>
      </nav>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlacebody" Runat="Server">
     <section class="background"></section>
</asp:Content>
