<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Details.aspx.cs" Inherits="WebApplication2.Details" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1>Produc Details</h1>
            <p>
                <asp:DataList ID="DataList1" runat="server" DataKeyField="ItemID" DataSourceID="SqlDataSource1">
                    <ItemTemplate>
                        ItemID:
                        <asp:Label ID="ItemIDLabel" runat="server" Text='<%# Eval("ItemID") %>' />
                        <br />
                        ItemName:
                        <asp:Label ID="ItemNameLabel" runat="server" Text='<%# Eval("ItemName") %>' />
                        <br />
                        Description:
                        <asp:Label ID="DescriptionLabel" runat="server" Text='<%# Eval("Description") %>' />
                        <br />
                        Price:
                        <asp:Label ID="PriceLabel" runat="server" Text='<%# Eval("Price") %>' />
                        <br />
                        <br />
                        <asp:ImageButton ID="ImageButton1" runat="server" Height="110px" ImageUrl='<%# Eval("Url", "~//Img//{0}") %>' Width="146px" />
                        <br />
                        Quantity:<asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
<br />
                    </ItemTemplate>
                </asp:DataList>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT * FROM [Products] WHERE ([ItemID] = ?)">
                    <SelectParameters>
                        <asp:QueryStringParameter Name="ItemID" QueryStringField="id" Type="Int32" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </p>
        </div>
        <p>
            <asp:LinkButton ID="LinkButton1" runat="server" PostBackUrl="~/Home.aspx">Home</asp:LinkButton>
&nbsp;&nbsp;&nbsp;
            <asp:LinkButton ID="LinkButton2" runat="server" OnClick="LinkButton2_Click" PostBackUrl="~/Card.aspx">Add to Cart</asp:LinkButton>
        &nbsp;&nbsp;
            <asp:LinkButton ID="LinkButton3" runat="server" PostBackUrl="~/Card.aspx">ViewCart</asp:LinkButton>
        </p>
    </form>
</body>
</html>
