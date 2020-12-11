<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="BookGround.aspx.cs" Inherits="DigiPlay.BookGround" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <center>
        <div>
            <asp:Label ID="Label10" runat="server" Text="Booking Ground" style="font-family:Algerian;font-size:xx-large;color:darkblue"></asp:Label>
            <br />
            <br />
            <asp:Label ID="Label1" runat="server" Text="Booking Id"></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            <br />
            <br />
            <asp:Label ID="Label2" runat="server" Text="Ground Name"></asp:Label>
            &nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            <br />
            <br />
            <asp:Label ID="Label3" runat="server" Text="Ground Address"></asp:Label>
            &nbsp;<asp:TextBox ID="TextBox3" runat="server" OnTextChanged="TextBox3_TextChanged"></asp:TextBox>
            <br />
            <br />
            <asp:Label ID="Label4" runat="server" Text="City"></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
            <br />
            <br />
            <asp:Label ID="Label5" runat="server" Text="State"></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
            <br />
            <br />
            <asp:Label ID="Label6" runat="server" Text="Country"></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
            <br />
            <br />
            <asp:Label ID="Label7" runat="server" Text="Entry Date"></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>
            <br />
            <br />
            <asp:Label ID="Label8" runat="server" Text="Exit Date"></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TextBox8" runat="server"></asp:TextBox>
            <br />
            <br />
            &nbsp;&nbsp;
            <asp:Button ID="Button1" runat="server" Text="Book" style="padding:4px 7px 2px 4px; color:darkgreen;background-color:lawngreen;border-radius:17px 17px 17px 17px " OnClick="Button1_Click" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button2" runat="server" Text="Check Availability" style="padding:4px 7px 2px 4px; color:darkgreen;background-color:lawngreen;border-radius:17px 17px 17px 17px " OnClick="Button2_Click"  />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <a href="index.aspx"  style="padding:4px 7px 2px 4px; color:yellow;background-color:red;border-radius:17px 17px 17px 17px;text-decoration:none" >Cancel</a>
            <br />
            <br />
        </div>
        </center>
         <center>
               <asp:DataList ID="DataList1" runat="server" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Vertical">
                   <AlternatingItemStyle BackColor="White" />
                   <FooterStyle BackColor="#CCCC99" />
                   <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
                   <ItemStyle BackColor="#F7F7DE" />
                <ItemTemplate>
                    <table border="1" style="color:forestgreen;border-color:antiquewhite;background-color:lavenderblush">
                        <tr>
                            <th>Booking ID</th>
                            <th>Ground Name</th>
                            <th>Ground Address</th>
                            <th>City</th>
                            <th>Status</th>
                            <th>Country</th>
                            <th>Booked Date</th>
                            <th>Returned Date</th>
                            <th>Availability Status</th>
                        </tr>
                        <tr>
                            <td><%#Eval("ground_booking_id")%></td>
                            <td><%#Eval("Ground_Name")%></td>
                            <td><%#Eval("Ground_address")%></td>
                            <td><%#Eval("City")%></td>
                            <td><%#Eval("State")%></td>
                            <td><%#Eval("Country")%></td>
                            <td><%#Eval("check_in")%></td>
                            <td><%#Eval("check_out")%></td>
                             <td><%#Eval("Availability_Status")%></td>


                           
                        </tr>
                    </table>
                </ItemTemplate>
                   <SelectedItemStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
            </asp:DataList>
    </center>
    </form>
   
</body>
</html>
