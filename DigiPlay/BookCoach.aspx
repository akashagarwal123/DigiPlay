<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="BookCoach.aspx.cs" Inherits="DigiPlay.BookCoach" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <center>

                <asp:Label ID="Label2" runat="server" Text="Booking Coach" style="font-family:Algerian;font-size:xx-large;color:darkblue"></asp:Label>

                <br />

                <br />
                Booking ID
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                <br />
                <br />
                <br />

                <asp:Button ID="Button1" runat="server" Text="Check Availability" style="padding:40x 7px 4px 7px ; border-radius:17px;background-color:yellow;color:maroon" OnClick="Button1_Click"></asp:Button>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" style="padding:40x 7px 4px 7px ; border-radius:17px;background-color:yellow;color:maroon" Text="Book Now" />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <a href="index.aspx" style="padding:4x 7px 4px 7px ; border-radius:17px;background-color:indianred;color:yellow;text-decoration:none">Cancel</a>
                <br />
                <br />
                <asp:Label ID="Label1" runat="server" Text=""></asp:Label>

               <asp:DataList ID="DataList1" runat="server" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Vertical">
                   <AlternatingItemStyle BackColor="White" />
                   <FooterStyle BackColor="#CCCC99" />
                   <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
                   <ItemStyle BackColor="#F7F7DE" />
                <ItemTemplate>
                    <table border="1" style="color:forestgreen;border-color:antiquewhite;background-color:lavenderblush">
                        <tr>
                            <th>Booking ID</th>
                            <th>Coach Name</th>
                            <th>Coach Address</th>
                            <th>City</th>
                            <th>Status</th>
                            <th>Country</th>
                             <th>Phone Number</th>
                            <th>ID Proof</th>
                            <th>Booked Date</th>
                            <th>Returned Date</th>
                            <th>Availability Status</th>
                            <th>Price</th>
                        </tr>
                        <tr>
                            <td><%#Eval("coach_booking_id")%></td>
                            <td><%#Eval("Coach_Name")%></td>
                            <td><%#Eval("Coach_Adress")%></td>
                            <td><%#Eval("City")%></td>
                            <td><%#Eval("State")%></td>
                            <td><%#Eval("Coountry")%></td>
                            <td><%#Eval("Phone_Numhber")%></td>
                            <td><%#Eval("Coach_ID_Proof")%></td>
                            <td><%#Eval("coach_book_in")%></td>
                            <td><%#Eval("coach_check_out")%></td>
                             <td><%#Eval("Status")%></td>
                            <td><%#Eval("price")%></td>


                           
                        </tr>
                    </table>
                </ItemTemplate>
                   <SelectedItemStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
            </asp:DataList>
    </center>
        </div>
    </form>
</body>
</html>
