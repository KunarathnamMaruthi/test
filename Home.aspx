<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="WebApplication2.Home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div style="font-weight: 700">
            <p>
                Products<asp:DataList ID="DataList1" runat="server" DataKeyField="ItemID" DataSourceID="SqlDataSource1" RepeatColumns="3" RepeatDirection="Horizontal">
                    <ItemTemplate>
                        <br />
                        ItemID:
                        <asp:Label ID="ItemIDLabel" runat="server" Text='<%# Eval("ItemID") %>' />
                        <br />
                        ItemName:
                        <asp:Label ID="ItemNameLabel" runat="server" Text='<%# Eval("ItemName") %>' />
                        <br />
                        Price:
                        <asp:Label ID="PriceLabel" runat="server" Text='<%# Eval("Price") %>' />
                        <br />
                        <asp:ImageButton ID="ImageButton1" runat="server" Height="128px" ImageUrl='<%# Eval("Url", "~\\Img\\thumb_{0}") %>' PostBackUrl='<%# Eval("ItemID", "~\\Details.aspx?id={0}") %>' Width="181px" />
                        <br />
                        <br />
                    </ItemTemplate>
                </asp:DataList>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT [ItemID], [ItemName], [Price], [Url] FROM [Products]"></asp:SqlDataSource>
            </p>
        </div>
    </form>
</body>
</html>
