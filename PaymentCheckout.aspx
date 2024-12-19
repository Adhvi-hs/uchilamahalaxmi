<%@ Page Title="" Language="C#" MasterPageFile="~/lhome.Master" AutoEventWireup="true" CodeFile="PaymentCheckout.aspx.cs" Inherits="Temple.PaymentCheckout" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>Payment Checkout Form</title>
	<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.4.2/css/all.css">
	<link rel="stylesheet" href="paymentcheckout.css">
     <link rel="stylesheet" href="popup.css" />
    <!-- Fontawesome CDN Link -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.0/css/all.min.css"/>

</head>
<body>
	

<form runat ="server">
<div class="wrapper">
  <div class="payment">
   <%-- <div class="payment-logo">
      <p>p</p>
    </div>
    --%>
    
    <h2>Payment</h2>
    <div class="form">
      <div class="card space icon-relative">
        <asp:Label ID="Label3" runat="server" Text="Amount"></asp:Label>
        <asp:Label ID="Label1" runat="server"  class="input" ></asp:Label>
       </div> 
      <div class="card space icon-relative">
        <asp:Label ID="Label2" runat="server" Text="Token id:"></asp:Label>
        <asp:Label ID="Label4" runat="server"  class="input" ></asp:Label>
      </div> 
      <div class="card space icon-relative">
        <label class="label"></label>
        <label class="label">Card holder:</label>
        <asp:TextBox ID="TextBox1" runat="server" class="input" placeholder="Name"></asp:TextBox>
        <i class="fas fa-user"></i>
      </div>
      <div class="card space icon-relative">
        <label class="label">Card number:</label>
        <asp:TextBox ID="TextBox2" runat="server" class="input" data-mask="0000 0000 0000 0000" placeholder="Card Number"></asp:TextBox>    
        <%--<asp:RegularExpressionValidator ID="RegularExpressionValidator1" ValidationExpression ="^[1-9][0-9]{3}(-[0-9]{4}){3}$" ControlToValidate="TextBox2" runat="server" ErrorMessage="Invalid"></asp:RegularExpressionValidator>--%>
        <i class="far fa-credit-card"></i>
      </div>
      <div class="card-grp space">
        <div class="card-item icon-relative">
          <label class="label">Expiry date:</label>
          <asp:TextBox ID="TextBox3" runat="server" class="input" name="expiry-data"   placeholder="00 / 00" MaxLength ="5" ></asp:TextBox>
          <%--<input type="text" class="input" data-mask="00 / 00"  placeholder="00 / 00">--%>
          <i class="far fa-calendar-alt"></i>
        </div>
        <div class="card-item icon-relative">
          <label class="label">CVC:</label>
          <asp:TextBox ID="TextBox4" runat="server" class="input" data-mask="000" placeholder="000"></asp:TextBox> 
          <%--<input type="text" class="input" >--%>
          <i class="fas fa-lock"></i>
        </div>
        </div>
         <div  class="card space icon-relative" >
        <asp:Label ID="Label5" runat="server" Text="" ForeColor ="Red" ></asp:Label>
      </div> 
        <div>
       <asp:Button ID="Button1" runat="server" class="btn" Text="Pay" OnClick ="Button1_Click" />
       </div> 
       <%--<div class="popup" id="popup">
           <img src="images/404-tick.png" />
           <h2>Thank You</h2>
           <p>Your payment is successfully recieved</p>
           <button type="button" onclick="closePopup()">OK</button>
       </div> --%>  
  </div>
</div>
<%--<script>
    let popup = document.getElementById("popup");

    function openPopup(){
        popup.classList.add("open-popup");
    }
    function closePopup() {
        popup.classList.remove("open-popup");
    }
       </script>--%>
<%--$('#myModal').on('shown.bs.modal', function () {
  $('#myInput').trigger('focus')
})--%>
	<script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery.mask/1.14.15/jquery.mask.min.js"></script>
</form>
</body>
</html>
</asp:Content>
