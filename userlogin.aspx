<%@ Page Title="" Language="C#" MasterPageFile="~/login.Master" AutoEventWireup="true" CodeFile="userlogin.aspx.cs" Inherits="Temple.userlogin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <!DOCTYPE html>
<!-- Created By CodingLab - www.codinglabweb.com -->
<html lang="en" dir="ltr">
  <head>
    <meta charset="UTF-8">
    <title> Login Form | CodingLab </title>
    <link rel="stylesheet" href="ulogin.css">
   <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.2/css/all.min.css"/>
   </head>
<body>
<form runat ="server" >
  <div class="main_div">
    <div class="title">Login Form</div>
   <%-- <div class="social_icons">
      <a href="#"><i class="fab fa-facebook-f"></i> <span>Facebook</span></a>
      <a href="#"><i class="fab fa-twitter"></i><span>Twitter</span></a>
    </div>--%>
    <form action="#">
      <div class="input_box">
          <asp:TextBox ID="TextBox1" runat="server" placeholder="Email or Phone" ></asp:TextBox>
        <%--<input type="text" >--%>
        <div class="icon"><i class="fas fa-user"></i></div>
      </div>
      <div class="input_box">
        <asp:TextBox ID="TextBox2" runat="server" TextMode ="Password"  placeholder="Password" ></asp:TextBox>
        <%--<input type="password"  required>--%>
        <div class="icon"><i class="fas fa-lock"></i></div>
      </div>
      <div class="option_div">
        <%--<div class="check_box">
          <input type="checkbox">
          <span>Remember me</span>
        </div>--%>
        <div class="forget_div">
          <a href="userforgot.aspx">Forgot password?</a>
        </div>
      </div>
      <div class="input_box button">
        <asp:Button ID="Button1" runat="server" Text="Login" OnClick ="Button1_Click" PostBackUrl ="~/lhomepage.aspx" />
        <%--<input type="submit" value="Login">--%>
      </div>
      <div class="sign_up">
        Not a member? <a href="userregister.aspx" >Signup now</a>
      </div>
    </form>
  </div>
</form>  
</body>
</html>
</asp:Content>
