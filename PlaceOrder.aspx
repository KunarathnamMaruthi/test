<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PlaceOrder.aspx.cs" Inherits="WebApplication2.PlaceOrder" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Place Order</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            Place Order</div>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False">
            <Columns>
                <asp:BoundField DataField="ItemId" HeaderText="ItemId" />
                <asp:BoundField DataField="Price" HeaderText="Price" />
                <asp:BoundField DataField="Quantity" HeaderText="Quantity" />
            </Columns>
        </asp:GridView>
        <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click">place Order</asp:LinkButton>
&nbsp;
        <asp:LinkButton ID="LinkButton2" runat="server" OnClick="LinkButton2_Click">New Order</asp:LinkButton>
    </form>
</body>
</html>
