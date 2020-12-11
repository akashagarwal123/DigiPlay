<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ForgetPassword.aspx.cs" Inherits="DigiPlay.ForgetPassword" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body style="background-image:url(http://www.larutadelsorigens.cat/filelook/full/80/801586/vector-graphics-wallpaper.jpg)">
    <form id="form1" runat="server">
    <div align="right">
        <asp:Button ID="Button2" runat="server" Text="GO_BACK" PostBackUrl="~/Login.aspx" ForeColor="Red" BackColor="LemonChiffon" />
    </div>
        <div align="center">
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <table border="1" style="background-color:lightgoldenrodyellow;border-style:inset;border-color:indianred;color:darkred">
            <caption style="font-family:Algerian;background-color:darkred;color:lightgoldenrodyellow">Change Password</caption>
            <tr>
                <th>
                    <asp:Label ID="Label1" runat="server" Text="ID"></asp:Label></th>
                    <th>
                        <asp:Label ID="Label2" runat="server" Text="FEILDS"></asp:Label></th>
                <th>
                    <asp:Label ID="Label3" runat="server" Text="FILL"></asp:Label></th>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label4" runat="server" Text="(1)"></asp:Label></td>
                <td>
                    <asp:Label ID="Label5" runat="server" Text="Old Password"></asp:Label></td>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox></td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label7" runat="server" Text="(2)"></asp:Label></td>
                <td>
                    <asp:Label ID="Label6" runat="server" Text="New Password"></asp:Label></td>
                <td>
                    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox></td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label8" runat="server" Text="(3)"></asp:Label></td>
                <td>
                    <asp:Label ID="Label9" runat="server" Text="Confirm Password"></asp:Label></td>
                <td>
                    <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                </td>
            </tr>
             <tr>
                <td>
                    <asp:Label ID="Label10" runat="server" Text="(3)"></asp:Label></td>
                <td>
                    <asp:Label ID="Label11" runat="server" Text="Phone Number"></asp:Label></td>
                <td>
                    <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td colspan="3" align="center">
                    <asp:Button ID="Button1" runat="server" Text="SUBMIT" BackColor="Yellow" ForeColor="DarkBlue" OnClick="Button1_Click" />
                </td>
            </tr>
        </table>
<br />
<asp:Label ID="lblMessage" runat="server" />

    
    </div>
    </form>
</body>
</html>
