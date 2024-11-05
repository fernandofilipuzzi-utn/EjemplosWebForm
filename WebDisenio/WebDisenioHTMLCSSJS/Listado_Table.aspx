<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Listado_Table.aspx.cs" Inherits="WebDisenioHTMLCSSJS.Listado_Table" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <div class="container m-3">

        <div class="jumbotron m-3">
            <h3> Registrate </h3>
        </div>

        <div class="row m-3">

            <table class="table table-hover">

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

        </div>
    </div>
</asp:Content>
