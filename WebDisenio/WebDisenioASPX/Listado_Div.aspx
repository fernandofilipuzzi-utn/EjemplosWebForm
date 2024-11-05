<%@ Page Title="" Language="C#" MasterPageFile="~/SiteSimple.Master" AutoEventWireup="true" CodeBehind="Listado_Div.aspx.cs" Inherits="WebDisenioASPX.Listado_Div" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="container m-3">

        <div class="jumbotron m-3">
            <h3>Ejemplo de tabla (Div)</h3>
        </div>

        <div class="row m-3">

            <table class="table">
                <asp:ListView ID="lv" OnItemDataBound="lv_ItemDataBound" runat="server">

                    <LayoutTemplate>
                        <div class="list-group">

                            <div class="list-group-item">
                                <div class="col-4">Columna 1</div>
                                <div class="col-4">Columna 2</div>
                                <div class="col-4">Columna 3</div>
                            </div>

                            <asp:PlaceHolder ID="itemPlaceHolder" runat="server" />
                        </div>
                    </LayoutTemplate>

                    <ItemTemplate>
                        <div class="list-group-item">
                            <div class="col-4">
                                <asp:Label Text='<%# Eval("Columna1") %>' runat="server" />
                            </div>
                            <div class="col-4">
                                <asp:Label Id="lbColumna2" runat="server"></asp:Label>
                            </div>
                            <div class="col-4">
                                <asp:Label Text='<%# Eval("Columna3") %>' runat="server" />
                            </div>
                        </div>
                    </ItemTemplate>
                </asp:ListView>
            </table>



            <%-- 
         <table id="lv" class="table table-hover">
             <thead class="thead-dark">
                 <tr>
                     <th scope="col">Columna 1</th>
                     <th scope="col">Columna 2</th>
                     <th scope="col">Columna 3</th>
                 </tr>
             </thead>

             <tbody>
                 <tr>
                     <td>celda 1</td>
                     <td>celda 2</td>
                     <td>celda 3</td>
                 </tr>
                 <tr>
                     <td>celda 4</td>
                     <td>celda 5</td>
                     <td>celda 6</td>
                 </tr>
             <tbody>
         </table>
            --%>
        </div>
    </div>
</asp:Content>
