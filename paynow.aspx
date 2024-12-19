<%@ Page Title="" Language="C#" MasterPageFile="~/Site2.Master" AutoEventWireup="true" CodeFile="paynow.aspx.cs" Inherits="Temple.paynow" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <form action="Return.aspx" method="post" name="razorpayForm">
            <input id="razorpay_payment_id" type="hidden" name="razorpay_payment_id" />
            <input id="razorpay_order_id" type="hidden" name="razorpay_order_id" />
            <input id="razorpay_signature" type="hidden" name="razorpay_signature" />
        </form>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br />
    <br />
    <%--<form id="form1" runat="server">--%>
        <%--<div>--%>
            <div>
      <div style="width: 847px; height: 467px; margin-left: 379px; margin-top: 112px; text-align: left; background-color: #FFFFCC;">
       <center><h1 style="background-color: #F07857; color:#FFFFFF">Token</h1></center>
          <br /> 
     <center> <asp:Label ID="Label2" runat="server" style="font-size: x-large" 
          Text="Mahalaxmi Temple"></asp:Label></center>
      <br />
          <center>
       <asp:Label ID="Label10" runat="server" style="font-size: large" Text="Token Id:"></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
      <asp:TextBox ID="TextBox4" runat="server" ReadOnly="True"></asp:TextBox>
          </center>
          <br />
      <center><asp:Label ID="Label1" runat="server" style="font-size: medium" Text="Date:"></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
      <asp:TextBox ID="TextBox1" runat="server" ReadOnly="True"></asp:TextBox>
      </center>
      <br />
          <center>
      <asp:Label ID="Label4" runat="server" style="font-size: medium" Text="Timings:"></asp:Label>
&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
      <asp:Label ID="Label5" runat="server" Text="08:00 AM To 06:00 PM"></asp:Label>
      </center>
          <br />
          <center> 
              <asp:Label ID="Label6" runat="server" style="font-size: medium" Text="No. of Persons:"></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
      <asp:TextBox ID="TextBox2" runat="server" ReadOnly="True"></asp:TextBox>
          </center>
          <br />
          <center>
<asp:Label ID="Label8" runat="server" Text="Amount:"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
      <asp:TextBox ID="TextBox3" runat="server" ReadOnly="True"></asp:TextBox>
          </center>
          <br />
          <center>
              <%--<asp:Button ID="Button1" runat="server" onClick="Button1_Click" Text="Pay Now" Width="165px" Height="54px" style="background-color: #F07857;" PostBackUrl="Paynow.aspx"  />--%>
      <br />
          </center>   
      <br />
      <br />   
  </div>
        </div>
    
    <center> <button class="gem-button gem-button-size-tiny gem-button-style-outline gem-button-text-weight-normal gem-button-border-2 gem-button-empty" id="rzp-button1" style="    width: 108px;">Pay Now</button></center>
        <script src="https://checkout.razorpay.com/v1/checkout.js"></script>
        <script>
            var orderId = "<%=orderId%>"
            var options = {
                "name": "<%=product%>",
                "description": "<%=product%>",
                "order_id": orderId,
                "image": "images/logo.jpg",
                "prefill": {
                    "name": "<%=name%>",
                    "email": "<%=email%>",
                    "contact": "<%=contact%>",
                },
                "notes": {
                    "address": "<%=addressn%>",
                    "merchant_order_id": "<%=orderIds%>",
                },
                "theme": {
                    "color": "#F37254"
                }
            }
            // Boolean whether to show image inside a white frame. (default: true)
            options.theme.image_padding = false;
            options.handler = function (response) {
                document.getElementById('razorpay_payment_id').value = response.razorpay_payment_id;
                document.getElementById('razorpay_order_id').value = orderId;
                document.getElementById('razorpay_signature').value = response.razorpay_signature;
                document.razorpayForm.submit();
            };
            options.modal = {
                ondismiss: function () {
                    console.log("This code runs when the popup is closed");
                },
                // Boolean indicating whether pressing escape key 
                // should close the checkout form. (default: true)
                escape: true,
                // Boolean indicating whether clicking translucent blank
                // space outside checkout form should close the form. (default: false)
                backdropclose: false
            };
            var rzp = new Razorpay(options);
            document.getElementById('rzp-button1').onclick = function (e) {
                rzp.open();
                e.preventDefault();
            }
        </script>
</asp:Content>
