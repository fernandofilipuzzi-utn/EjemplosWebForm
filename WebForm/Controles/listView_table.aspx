<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master"
            AutoEventWireup="true" CodeBehind="listView_table.aspx.cs" 
    Inherits="Controles.listView_table" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
        
    <div class="container">
        
        <table class="table">
            <asp:ListView ID="lvwListado"  runat="server">
                <LayoutTemplate>
                     <thead class="thead-dark table-striped">
                        <tr>
                            <th scope="col">Dni</th>
                            <th scope="col">Nombre</th>
                        </tr>
                    </thead>
                    <tbody>
                        <asp:PlaceHolder ID="itemPlaceholder"  runat="server"/>
                    </tbody>
                </LayoutTemplate>        
                <ItemTemplate>
                    <tr>
                        <td> <asp:Label  Text='<%# Eval("Dni") %>' runat="server"/></td>
                        <td> <asp:Label  Text='<%# Eval("Nombre") %>' runat="server"/></td>
                    </tr>
                </ItemTemplate>
            </asp:ListView>
         </table>


    </div>
</asp:Content>
