<%@ Page Title="" Language="C#" MasterPageFile="~/mPage.master" AutoEventWireup="true" CodeFile="clients master.aspx.cs" Inherits="clients_master" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolderstyle" Runat="Server">
     <link rel="stylesheet" href="clients.css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHeader" Runat="Server">
      <div class="page">
        <h1>CLIENTS</h1>
      </div>
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
            <a href="#"><i class="fa-solid fa-users"></i>Clients</a>
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
           <div class="class">
            <div class="admin-form">
      <label for="id">ID</label>
        <asp:TextBox ID="Te_iid" runat="server"  type="number" class="id"></asp:TextBox>
        <div class="buttons">
            <asp:Button ID="de_id" Class="delete" runat="server" Text="Delete" OnClick="de_id_Click" />
            <asp:Button ID="sh_id" Class="show" runat="server" Text="Show" OnClick="sh_id_Click"  />
        </div>
         <asp:GridView ID="GridView1" runat="server"></asp:GridView>
    </div>
        </div>
</asp:Content>
