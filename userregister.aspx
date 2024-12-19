<%@ Page Title="" Language="C#" MasterPageFile="~/login.Master" AutoEventWireup="true" CodeFile="userregister.aspx.cs" Inherits="Temple.userregister" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <html lang="en" dir="ltr">
  <head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title> Registration or Sign Up form in HTML CSS | CodingLab </title> 
    <link rel="stylesheet" href="register.css">
   </head>
<body>
  <div class="wrapper">
    <h2>Registration</h2>
    <form runat="server" >
      <div class="input-box">
          <asp:TextBox ID="TextBox1" runat="server" placeholder="Enter your name"></asp:TextBox>

        <%--<input type="text" placeholder="Enter your name" required>--%>
      </div>
      <div class="input-box">
        <asp:TextBox ID="TextBox2" runat="server" placeholder="Enter your email"></asp:TextBox>
        <%--<input type="text" placeholder="Enter your email" required>--%>
      </div>
      <div class="input-box">
            <asp:TextBox ID="TextBox3" runat="server" TextMode ="Password"   placeholder="Create password"></asp:TextBox>
        <%--<input type="password" placeholder="Create password" required>--%>
      </div>
      <div class="input-box">
            <asp:TextBox ID="TextBox4" runat="server" TextMode ="Password"  placeholder="Confirm password"></asp:TextBox>
        <%--<input type="password" placeholder="Confirm password" required>--%>
      </div>
     
      <div class="input-box button">
          <asp:Button ID="Button1" runat="server" OnClick ="Button1_Click" Text="Register Now" />
        <%--<input type="Submit" value="Register Now">--%>
      </div>
      <div class="text">
        <h3>Already have an account? <a href="userlogin.aspx">Login now</a></h3>
      </div>
    </form>
  </div>
</body>
</html>
</asp:Content>

