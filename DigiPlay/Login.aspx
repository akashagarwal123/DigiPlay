<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="DigiPlay.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>DigiPlay</title>
    <!-- add icon link -->
        <link rel = "icon" href =  "Images/logo.png" 
        type = "image/x-icon"/> 
</head>
<body style="background-image:url(https://wallpaper.wiki/wp-content/uploads/2017/05/wallpaper.wiki-Desktop-1080P-3D-Images-HD-PIC-WPE0014783.jpg)">
    <form id="form1" runat="server">
    <div align="center">

        <asp:Label ID="Label16" runat="server" Text="DigiPlay" style="color:whitesmoke;font-family:Algerian;font-size:xx-large;font-display:fallback"></asp:Label>

        <br />
        <br />
        <br />

        <br />
           <asp:Image ID="Image3" src="/Images/logo.png" runat="server" />
        <br />

        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
        <br />

    <fieldset style="background-image:url(https://i.imgur.com/zHqyI.jpg)">
        <legend style="color:red" align="center">LOGIN</legend>
       <table border="1" style="background-color:lavenderblush;border-color:blue;color:forestgreen">
          <tr>
            <th>S.NO.</th>
           <th>ENTERIES</th>
           <th>FILL</th>
           <tr>
        <td><asp:Label ID="S1" runat="server" Text="(1)"></asp:Label></td>
        <td>Phone Number</td>
        <td><asp:TextBox ID="TextBox15" AutoCompleteType="Email" CausesValidation="true" ForeColor="ForestGreen" runat="server" style="margin-left: 125px" Width="172px"></asp:TextBox></td>
           </tr>
        <tr>
        <td><asp:Label ID="S2" runat="server" Text="(2)"></asp:Label></td>
        <td><asp:Label ID="Password" runat="server" Text="Password"></asp:Label></td>
        <td><asp:TextBox ID="TextBox16" TextMode="Password" runat="server" ForeColor="ForestGreen" style="margin-left: 125px" Width="172px"></asp:TextBox></td>
        </tr>
           </table>
                   <br/>
      <div align="center">
         <asp:ImageButton ID="ImageButton1" BackColor="Wheat" BorderColor="#000066" BorderWidth="1" BorderStyle="Inset" runat="server" ImageUrl="http://www.clker.com/cliparts/p/F/C/X/z/M/sumbit-hi.png" style="margin-left: 41px" Height="42px" Width="122px" OnClick="ImageButton1_Click" />
    </div>
        <br />
        <a href="Registration.aspx" style="color:whitesmoke;outline:hidden;text-decoration:none">New User! CLICK HERE.</a>
        <br />
         <br />
         <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/ForgetPassword.aspx" ForeColor="LightPink">Forgot Password</asp:HyperLink>
          </fieldset>
     <div align="center">
        <asp:Label ID="Label15" runat="server" ForeColor="Red"></asp:Label>
         <br />
    </div>
    </div>
            </form>
</body>
</html>
