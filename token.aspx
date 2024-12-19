<%@ Page Title="" Language="C#" MasterPageFile="~/lhome.Master" AutoEventWireup="true" CodeFile="token.aspx.cs" Inherits="Temple.token" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title></title>
</head>
<body style="height: 562px; width: 1411px; font-weight: 700; ">
    <form id="form1" runat="server">
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
              <asp:Button ID="Button1" runat="server" onClick="Button1_Click" Text="Pay Now" Width="165px" Height="54px" style="background-color: #F07857;" PostBackUrl="~/PaymentCheckout.aspx"  />
      <br />
          </center>   
      <br />
      <br />   
  </div>
        </div>
    </form>
</body>
</html>
</asp:Content>
