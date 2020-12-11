<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Wallet.aspx.cs" Inherits="DigiPlay.Wallet" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <center>
    <form id="form1" runat="server">
        <div>

            <div style="color:darkblue;font-family:Algerian;font-size:xx-large">WALLET</div><br />
            <br />
            <br />
            Enter Amount&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TextBox1" runat="server" style="margin-left: 1px"></asp:TextBox>
            <br />
            <br />
             Payment Method&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:DropDownList ID="DropDownList1" runat="server" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
                <asp:ListItem>GPay</asp:ListItem>
                <asp:ListItem>Phone Pay</asp:ListItem>
                <asp:ListItem>PayTm</asp:ListItem>
                <asp:ListItem>AmazonPay</asp:ListItem>
            </asp:DropDownList>
            <br />
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button1" runat="server" Text="Add Money" style="padding:4px 7px 2px 4px;color:yellow;background-color:red;border-radius:9px 9px 9px 9px" OnClick="Button1_Click"/>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <a href="index.aspx" style="padding:4px 7px 2px 4px;color:whitesmoke;background-color:black" style="padding:4px 7px 2px 4px;color:whitesmoke;background-color:black;text-decoration:none" >Cancel</a>
            <br />
            <br />
            <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
        </div>
    </form>
        </center>
</body>
</html>
