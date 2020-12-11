<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Buy.aspx.cs" Inherits="DigiPlay.Buy" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">

        <center>

        <div>
            <asp:Label ID="Label4" runat="server" style="color:darkblue;font-family:Algerian;font-size:xx-large" Text="Buy an Equipment"></asp:Label>
            <br />
            <br />
            <br />
            <asp:Label ID="Label1" runat="server" Text="Stock ID"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            <br />
            <br />
            <asp:Label ID="Label2" runat="server" Text="Phone Number "></asp:Label>
            <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            <br />
            <br />
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Check Stock" style="color:white;background-color:black;padding:12px 12px 12px 12px;border-radius:19px 19px 19px 19px"/>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button2" runat="server" Text="Buy" OnClick="Button2_Click"  style="color:white;background-color:black;padding:12px 12px 12px 12px;border-radius:19px 19px 19px 19px" />
           &nbsp;&nbsp;&nbsp;
           <a href="index.aspx" style="color:white;background-color:black;padding:12px 12px 12px 12px;border-radius:19px 19px 19px 19px;text-decoration:none">Cancel</a>
            <br />
            <br />
            <asp:Label ID="Label3" runat="server" Text=""></asp:Label>
            <br />
            <br />
        </div></center>
        <center>
               <asp:DataList ID="DataList1" runat="server" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" ForeColor="Black" GridLines="Vertical">
                   <AlternatingItemStyle BackColor="#CCCCCC" />
                   <FooterStyle BackColor="#CCCCCC" />
                   <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                <ItemTemplate>
                    <table border="1" style="color:forestgreen;border-color:antiquewhite;background-color:lavenderblush">
                        <tr>
                            <th>Stock ID</th>
                            <th>Product Name</th>
                            <th>Product Price</th>
                            <th>Quantity Avaialble </th>
                        
                        </tr>
                        <tr>
                            <td><%#Eval("stock_id")%></td>
                            <td><%#Eval("product_Name")%></td>
                            <td><%#Eval("product_price")%></td>
                            <td><%#Eval("quantity_available")%></td>
                            


                           
                        </tr>
                    </table>
                </ItemTemplate>
                   <SelectedItemStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
            </asp:DataList>
    </center>
    </form>
</body>
</html>
