<%@ Page Title="" Language="C#" MasterPageFile="~/mPage.master" AutoEventWireup="true" CodeFile="add master.aspx.cs" Inherits="add_master" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolderstyle" Runat="Server">
    <link rel="stylesheet" href="add.css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHeader" Runat="Server">
     <div>
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
      <section class="class">
      <div class="container">
        <div class="booking-now">
          <div class="details">
            <h2>Register</h2>
            <div class="booking-form">
              <form class="master-form">
                <div class="booking-form">
                 
                 
                  <label for="name">Name</label>
                    <asp:TextBox ID="name_add" runat="server"  type="text"
                    placeholder="Enter Name"
                    class="name"
                    name="name"
                    required></asp:TextBox>
                  
                  <label for="address">Address</label>
                    <asp:TextBox ID="address_add" runat="server"  type="text"
                    placeholder="Enter Address"
                    class="address"
                    name="address"
                    required ></asp:TextBox>
                 
                  <label for="salary">Salary</label>
                    <asp:TextBox ID="salary_add" runat="server" type="number"
                    placeholder="Enter Salary"
                    class="salary"
                    name="salary"
                    required TextMode="Number"></asp:TextBox>
                 
                  <label for="phone">Phone</label>
                    <asp:TextBox ID="phone_add" runat="server"  type="number"
                    placeholder="Enter Phone"
                    class="phone"
                    name="phone"
                    required TextMode="Number"></asp:TextBox>
                 
                 
                    <asp:Button ID="resert_add" runat="server" Text="Reset" class="reset" type="reset" OnClick="resert_add_Click" />
                     <asp:Button ID="submit_add" runat="server" Text="Add"  class="submit" type="submit" OnClick="submit_add_Click"/>
                    
                </div>
              </form>
            </div>
          </div>
        </div>
      </div>
    </section>
</asp:Content>

