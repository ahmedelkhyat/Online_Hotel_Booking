<%@ Page Title="" Language="C#" MasterPageFile="~/mPage.master" AutoEventWireup="true" CodeFile="log_in master.aspx.cs" Inherits="log_in_master" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolderstyle" Runat="Server">
      <link rel="stylesheet" href="log_in.css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHeader" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlacebody" Runat="Server">
    <section class="class">
      <div class="loging">
        <div class="log">
          <h2>Log In</h2>
          <div class="loging-form">
            <div class="logform">
              <label for="uname" class="label"><b>E-Mail</b></label>
                <asp:TextBox ID="TextBox11" runat="server"  placeholder="Enter E-Mail"
                class="uname"
                name="uname"
                required
                TextMode="Email"></asp:TextBox>
              <label for="password" class="label"><b class="pass">Password</b></label>
                <asp:TextBox ID="TextBox1" runat="server"   placeholder="Enter password"
                class="password"
                name="password"
                required
                TextMode="Password"></asp:TextBox>
                <asp:Button ID="Button1" runat="server" Text="log in" class="submit" OnClick="Button1_Click" />
            </div>
          </div>
        </div>
      </div>
    </section>
</asp:Content>
