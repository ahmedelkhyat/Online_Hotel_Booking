<%@ Page Title="" Language="C#" MasterPageFile="~/mainpage.master" AutoEventWireup="true" CodeFile="feedback master.aspx.cs" Inherits="feedback_master" %>

<asp:Content ID="Content1" ContentPlaceHolderID="Contentstyle1" Runat="Server">
     <link rel="stylesheet" href="feadback.css" />
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
     <div class="container">
      <div class="feedback-form">
        <h3>Feedback</h3>
          

        <label for="fname">First Name</label>
          <asp:TextBox ID="txt_firs" runat="server"  class="fname" name="firstname" placeholder="Your name.."></asp:TextBox>
        

        <label for="lname">Last Name</label>
          <asp:TextBox ID="txt_lastn" runat="server"  class="lname" name="lastname" placeholder="Your last name.."></asp:TextBox>
       

        <label for="pnumber">Phone Number</label>
          <asp:TextBox ID="txt_phonen" runat="server"  class="pnumber" name="phone number" placeholder="Phone Number.." TextMode="Phone" Style=" width: 100%;
           padding: 12px; border: 1px solid #ccc; border-radius: 4px; box-sizing: border-box; margin-top: 6px;
           margin-bottom: 16px; resize: vertical; background-color: #eee;"></asp:TextBox>
                        
              <label for="country">Country</label>
              <asp:DropDownList ID="Drop_coun" runat="server"  class="country" name="country" style="width: 100%; padding: 12px; border: 1px solid #ccc; border-radius: 4px;
           box-sizing: border-box; margin-top: 6px; margin-bottom: 16px; resize: vertical; background-color: #eee;">
                  <asp:ListItem Text="Egypt" Value="ir" Selected="True" />
                  <asp:ListItem Text="USA" Value="sy" />
                  <asp:ListItem Text="India" Value="lb" Enabled="false" />
                  <asp:ListItem Text="United Arab Emirates" Value="NM" />
                   <asp:ListItem Text="Syria" Value="sy" />
                  <asp:ListItem Text="Zimbawe" Value="ir" />       
                  <asp:ListItem Text="South africa" Value="lb" />
                  <asp:ListItem Text="Russia" Value="sa" />
                   <asp:ListItem Text="Pakistan" Value="kl" />
                 <asp:ListItem Text="Bangladesh" Value="hj" />
              </asp:DropDownList>
                  
        
          <label for="subject">Subject</label>
          <asp:TextBox ID="txt_msg" runat="server"  name="subject" placeholder="Write something.." style="height: 200px" TextMode="MultiLine"  class="subject"></asp:TextBox>
       
          
          <asp:Button ID="Butto_1" runat="server" Text="Submit" class="button" OnClick="Butto_1_Click"  />
           
</div>
     </div>
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
