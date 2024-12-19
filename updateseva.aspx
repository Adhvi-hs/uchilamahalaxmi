<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="updateseva.aspx.cs" Inherits="Temple.updateseva" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" Height="254px" Width="707px">
                <Columns>
                    <asp:BoundField DataField="SINo" HeaderText="SINo" SortExpression="SINo" />
                    <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
                    <asp:BoundField DataField="description" HeaderText="description" SortExpression="description" />
                    <asp:BoundField DataField="price" HeaderText="price" SortExpression="price" />
                </Columns>
            </asp:GridView>
            

        </div>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:uchilaConnectionString %>" ProviderName="<%$ ConnectionStrings:uchilaConnectionString.ProviderName %>" SelectCommand="SELECT * FROM [addseva]"></asp:SqlDataSource>
    </form>
</body>
</html>
