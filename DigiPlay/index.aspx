<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="DigiPlay.index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
     <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>
<body>
     <nav class="navbar navbar-default" style="background-color:rgba(0,0,0.1,1);">
    <div class="container-fluid">
      <div class="navbar-header">
        <img src="images/logo.png" alt="Chicago" style="height:2cm;width:5cm;">
      </div>
      <ul class="nav navbar-nav">
        <li><a href="BookGround.aspx" style="height:2cm;width:4cm;color:white">Book a Ground</a></li>
        <li><a href="BookCoach.aspx" style="height:2cm;width:4cm;color:white">Book a Coach</a></li>
        <li><a href="Buy.aspx" style="height:2cm;width:5cm;color:white">Buy an Equipment</a></li>
        <li><a href="Wallet.aspx" style="height:2cm;width:5cm;color:white">Add Money</a></li>
        <li>
            <a href="" style="height:2cm;width:5cm;color:white">Wallet
            <asp:DataList ID="DataList1" runat="server">
                <ItemTemplate>
                    <table border="1" style="color:forestgreen;border-color:antiquewhite;background-color:lavenderblush">
                        <tr>
                            <td><%#Eval("Amount")%></td>
                        </tr>
                    </table>
                </ItemTemplate>
            </asp:DataList></a>
        </li>
          <li><a href="Login.aspx" style="height:2cm;width:5cm;color:white">Logout</a></li>
          <li><a href="Rent.aspx" style="height:2cm;width:5cm;color:white">Rent Equipments</a></li>
      </ul>
    </div>
  </nav>
    <form id="form1" runat="server">
        <div>
        </div>
    </form>
    <br />
    <center>
    <div>
        <asp:Label ID="Label2" runat="server"  style="color:darkblue;font-family:Algerian;font-size:xx-large" Text="Your change is our priority, let's play together."></asp:Label>
    </div>
        </center>
    <br />
    <div class="container">
  <div id="myCarousel" class="carousel slide" data-ride="carousel">
    <!-- Indicators -->
    <ol class="carousel-indicators">
      <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
      <li data-target="#myCarousel" data-slide-to="1"></li>
      <li data-target="#myCarousel" data-slide-to="2"></li>
    </ol>

    <!-- Wrapper for slides -->
    <div class="carousel-inner">
      <div class="item active">
        <img src="https://youthincmag.com/wp-content/uploads/2016/08/Sports.jpg" alt="Los Angeles" style="width:100%;">
      </div>

      <div class="item">
        <img src="https://cdnuploads.aa.com.tr/uploads/Contents/2020/07/03/thumbs_b_c_146a0fc5cedd02e9545c27bcabb8f254.jpg?v=093525" alt="Chicago" style="width:100%;">
      </div>
    
      <div class="item">
        <img src="https://images.unsplash.com/photo-1552667466-07770ae110d0?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxzZWFyY2h8M3x8dGVhbSUyMHNwb3J0fGVufDB8fDB8&w=1000&q=80" alt="New york" style="width:100%;">
      </div>
    </div>

    <!-- Left and right controls -->
    <a class="left carousel-control" href="#myCarousel" data-slide="prev">
      <span class="glyphicon glyphicon-chevron-left"></span>
      <span class="sr-only">Previous</span>
    </a>
    <a class="right carousel-control" href="#myCarousel" data-slide="next">
      <span class="glyphicon glyphicon-chevron-right"></span>
      <span class="sr-only">Next</span>
    </a>
  </div>
</div>
    <br /><br />
    <footer>
        <div class="footer" style="background-color:navy">
            <center>
  <div class="row" style="justify-content: center;">
    
      <!-- <b style="font-size:0.5cm ; color:white">DigiPlay</b> -->
      <img src="images/logo.png" alt="Chicago" style="height:2cm;width:6cm; ">
  </div></center>
  <div class="row">
    <!-- Grid column -->
    <div class="col-md-4 mx-auto "style="margin-left:4% ;margin-top:2%">
      <b style="font-size:0.5cm ; color:white">Features</b>
      <p style="font-size:0.4cm ; color:white">About</p>
      <p style="font-size:0.4cm ; color:white">How it works</p>
      <p style="font-size:0.4cm ; color:white">Career</p>
      <p style="font-size:0.4cm ; color:white">Terms and Conditions</p>
 </div>
 <div class="col-md-2 mx-auto" style="margin-top:2% ">

  <!-- Links -->
   <b style="font-size:0.5cm ; color:white">Quick Links</b>
        <li><a href="BookGround.aspx" style="height:2cm;width:5cm;color:white">Book a Ground</a></li>
        <li><a href="BookCoach.aspx" style="height:2cm;width:5cm;color:white">Book a Coach</a></li>
        <li><a href="Buy.aspx" style="height:2cm;width:5cm;color:white">Buy an Equipment</a></li>
     <li><a href="Rent.aspx" style="height:2cm;width:5cm;color:white">Rent Equipments</a></li>
        <li><a href="Wallet.aspx" style="height:2cm;width:5cm;color:white">Add Money</a></li>
</div>
 
 <div class="col-md-2 mx-auto" style="margin-top:2%">
  <b style="font-size:0.5cm ; color:white">Register</b><br>
  <a href="Registration.aspx" style="height:2cm;width:5cm;color:white">Register as a sportsman</a>
</div>

</div><br>
<div class="col text-center" style="color:white"><!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
  Copyright &copy;<script>document.write(new Date().getFullYear());</script> All rights reserved | This template is made <i class="fa fa-heart-o" aria-hidden="true"></i> by <b style="color:cornsilk;">@DigiPlay</b>
  <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. --> </div>
    </footer>
</body>
</html>
