<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Card.aspx.cs" Inherits="WebApplication2.Card" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>ShoppingCard</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            Shopping Cart</div>
        <p>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False">
                <Columns>
                    <asp:BoundField DataField="ItemId" HeaderText="ItemId" />
                    <asp:BoundField DataField="Name" HeaderText="Name" />
                    <asp:BoundField DataField="Image" HeaderText="Image">
                    <ControlStyle Height="100px" Width="100px" />
                    </asp:BoundField>
                    <asp:BoundField DataField="Price" HeaderText="Price" />
                    <asp:BoundField DataField="Quantity" HeaderText="Quantity" />
                    <asp:BoundField DataField="SubTotal" HeaderText="SubTotal" />
                    <asp:CommandField ShowDeleteButton="True" />
                </Columns>
            </asp:GridView>
        </p>
        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
&nbsp;
        <br />
        <asp:LinkButton ID="LinkButton1" runat="server" PostBackUrl="~/Home.aspx">Home</asp:LinkButton>
    &nbsp;&nbsp;
        <asp:LinkButton ID="Order" runat="server" OnClick="Order_Click" PostBackUrl="~/PlaceOrder.aspx">Order</asp:LinkButton>
    </form>
</body>
</html>
