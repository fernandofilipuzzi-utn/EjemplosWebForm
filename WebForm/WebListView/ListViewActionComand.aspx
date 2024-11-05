<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ListViewActionComand.aspx.cs" Inherits="WebListView.ListViewActionComand" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <asp:ListView ID="lw" runat="server" OnItemCommand="lw_ItemCommand">
            <LayoutTemplate>
                <table>
                    <asp:PlaceHolder ID="itemPlaceHolder" runat="server"/>
                <table>
            </LayoutTemplate>
            <ItemTemplate>
                <tr>
                    <td><asp:Label ID="lbId" runat="server" Text='<%# Eval("Id") %>' /></td>
                    <td><asp:Label ID="lbFecha" runat="server" Text='<%# Eval("Fecha","{0:dd/MM/yyyy}") %>' /></td>
     
                    <td>
                        <asp:Button ID="btnAction" runat="server" Text="Action" CommandName="ActionCommand"
                                        CommandArgument='<%# Eval("Id") %>' />
                    </td>
                </tr>
            </ItemTemplate>
        </asp:ListView >
    </form>
</body>
</html>
