<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Registration.aspx.cs" Inherits="DigiPlay.Registration" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Register</title>
    <!-- add icon link -->
        <link rel = "icon" href =  "Images/logo.png" 
        type = "image/x-icon"/> 
</head>
<body style="background-image:url(/Images/register.jpg);">
    <center>
    <form id="form1" runat="server">
        <div>
            <br />
            <asp:Image ID="Image2" src="/Images/logo.png" runat="server" />
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
           <center>
               <div style="color:yellow;font-family:Algerian;font-size:xx-large">
               <asp:Label ID="Label13" runat="server" Text="Sign Up!!!"></asp:Label>
                   </div>
                   </center> 
            <br />
            <br />
            <br />
        </div>
        <asp:Label ID="Label1" runat="server" Text="Name" style="color:yellow;font-family:Algerian;font-size:medium"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TextBox1" runat="server" Width="305px"></asp:TextBox>
        <p>
        <asp:Label ID="Label2" runat="server" Text="Age" style="color:yellow;font-family:Algerian;font-size:medium"></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TextBox2" runat="server" Width="301px"></asp:TextBox>
        </p>
        <p>
        <asp:Label ID="Label3" runat="server" Text="Address" style="color:yellow;font-family:Algerian;font-size:medium"></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TextBox3" runat="server" Width="306px"></asp:TextBox>
        </p>
        <p>
        <asp:Label ID="Label4" runat="server" Text="Landmark" style="color:yellow;font-family:Algerian;font-size:medium"></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TextBox4" runat="server" Width="305px"></asp:TextBox>
        </p>
        <p>
        <asp:Label ID="Label5" runat="server" Text="City" style="color:yellow;font-family:Algerian;font-size:medium"></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TextBox5" runat="server" Width="305px"></asp:TextBox>
        </p>
        <p>
        <asp:Label ID="Label6" runat="server" Text="State" style="color:yellow;font-family:Algerian;font-size:medium"></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TextBox6" runat="server" Width="306px"></asp:TextBox>
        </p>
        <p>
        <asp:Label ID="Label7" runat="server" Text="Country" style="color:yellow;font-family:Algerian;font-size:medium"></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TextBox7" runat="server" Width="305px"></asp:TextBox>
        </p>
        <p>
        <asp:Label ID="Label8" runat="server" Text="Pin Code" style="color:yellow;font-family:Algerian;font-size:medium"></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TextBox8" runat="server" Width="305px"></asp:TextBox>
        </p>
        <p>
        <asp:Label ID="Label9" runat="server" Text="Post Office" style="color:yellow;font-family:Algerian;font-size:medium"></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TextBox9" runat="server" Width="305px"></asp:TextBox>
        </p>
        <p>
        <asp:Label ID="Label10" runat="server" Text="Valid ID Proof" style="color:yellow;font-family:Algerian;font-size:medium"></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TextBox10" runat="server" Width="305px"></asp:TextBox>
        </p>
        <p>
        <asp:Label ID="Label11" runat="server" Text="Phone Number" style="color:yellow;font-family:Algerian;font-size:medium"></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TextBox11" runat="server" Width="305px"></asp:TextBox>
        </p>
        <p>
        <asp:Label ID="Label12" runat="server" Text="Password" style="color:yellow;font-family:Algerian;font-size:medium"></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TextBox12" type="password" runat="server" Width="305px"></asp:TextBox>
        </p>
        <p>
            <asp:Button ID="Button1" runat="server" Text="Submit" style="padding:4px 17px 2px 14px;background-color:yellow;color:red;border-radius:9px" OnClick="Button1_Click" />
        </p>
        <p>
           <p style="padding:4px 17px 2px 14px;color:yellow;border-radius:9px" >Already Signed In
        <a href="Login.aspx" style="text-decoration:none;color:wheat">Sign In</a>
               </p>
        </p>
        <p>
            <asp:Label ID="Label14" runat="server" Text=""></asp:Label>
        </p>
    </form>
        </center>
</body>
</html>
