<%@ Page Language="C#" AutoEventWireup="true" CodeFile="adminlogin.aspx.cs" Inherits="Temple.WebForm2" %>

  <!DOCTYPE html>
<!-- Created By CodingLab - www.codinglabweb.com -->
<html lang="en" dir="ltr">
  <head>
    <meta charset="UTF-8">
    <title></title>
    <link rel="stylesheet" href="ulogin.css">
   <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.2/css/all.min.css"/>
   </head>
<body>
<form runat ="server" >
  <div class="main_div">
    <div class="title">Admin Login Form</div>
   <%-- <div class="social_icons">
      <a href="#"><i class="fab fa-facebook-f"></i> <span>Facebook</span></a>
      <a href="#"><i class="fab fa-twitter"></i><span>Twitter</span></a>
    </div>--%>
    <form action="#">
      <div class="input_box">
          <asp:TextBox ID="TextBox1" runat="server" placeholder="Email or Phone" ></asp:TextBox>
          <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="TextBox1" ErrorMessage="Enter Proper Email" ForeColor="Red" SetFocusOnError="True" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>

        <%--<input type="text" >--%>
        <div class="icon"><i class="fas fa-user"></i></div>
      </div>
      <div class="input_box">
        <asp:TextBox ID="TextBox2" runat="server" placeholder="Password" TextMode ="Password" ></asp:TextBox>
        <%--<input type="password"  required>--%>
        <div class="icon"><i class="fas fa-lock"></i></div>
      </div>
      <div class="option_div">
        <%--<div class="check_box">
          <input type="checkbox">
          <span>Remember me</span>
        </div>--%>
        <div class="forget_div">
          <a href="adminforgot.aspx" >Forgot password?</a>
        </div>
      </div>
      <div class="input_box button">
        <asp:Button ID="Button1" runat="server" Text="Login" OnClick ="Button1_Click" />
        <%--<input type="submit" value="Login">--%>
      </div>
         <div class="input_box">
             <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
        
      </div>
    </form>
  </div>
</form>  
</body>
</html>
