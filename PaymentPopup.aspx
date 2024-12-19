<%@ Page Title="" Language="C#" MasterPageFile="~/lhome.Master" AutoEventWireup="true" CodeFile="PaymentPopup.aspx.cs" Inherits="Temple.PaymentPopup" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <%--<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
    </div>
    </form>
</body>
</html>--%>
<!DOCTYPE html>
<!-- Coding By CodingNepal - codingnepalweb.com -->
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Popup Modal Box</title>
    <!-- CSS -->
    <link rel="stylesheet" href="popup.css" />
    <!-- Fontawesome CDN Link -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.0/css/all.min.css"/>
  </head>
  <body>
    <section>
      <button class="show-modal">Show Modal</button>
      <span class="overlay"></span>

      <div class="modal-box">
        <i class="fa-regular fa-circle-check"></i>
        <h2>thank you</h2>
        <h3>Payment is successfully completed.</h3>

        <div class="buttons">
          <button class="close-btn">done</button>
        </div>
      </div>
    </section>

    <script>
      const section = document.querySelector("section"),
        overlay = document.querySelector(".overlay"),
        showBtn = document.querySelector(".show-modal"),
        closeBtn = document.querySelector(".close-btn");

      showBtn.addEventListener("click", () => section.classList.add("active"));

      overlay.addEventListener("click", () =>
        section.classList.remove("active")
      );

      closeBtn.addEventListener("click", () =>
        section.classList.remove("active")
      );
    </script>
  </body>
</html>
</asp:Content>
