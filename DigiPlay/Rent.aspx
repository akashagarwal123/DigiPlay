<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Rent.aspx.cs" Inherits="DigiPlay.Rent" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>

             <center>
                 <br />
                 <br />
                 <asp:Label ID="Label2" runat="server" Text="Rent Products" style="color:darkblue;font-family:Algerian;font-size:xx-large"></asp:Label>
                 <br />
                 <br />
                 <asp:Label ID="Label1" runat="server" Text="Stock Id"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                 <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                 <br />
                 <br />
                 <br />
                 <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Check Stock" />
&nbsp;&nbsp;&nbsp;
                 <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Rent" />

                 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

                 <a href="index.aspx" style="text-decoration:none">Cancel</a>
                 <br />
                 <br />
                 <br />
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
        </div>
    </form>
</body>
</html>
