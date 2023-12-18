<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Formulario.aspx.cs" Inherits="Ajax.Formulario" %>

<asp:Content ID="BodyContent"  ContentPlaceHolderID="MainContent" runat="server">

    <div class="jumbotron">
         <h3 class="display-4">Formulario</h3>
        <p class="lead">Algún comentario!</p>
    </div>

    <asp:Panel ID="panel" ClientIDMode="Static" runat="server">
        <div id="alerta" ClientIDMode="Static" runat="server" class="alert alert-primary"  style="visibility: hidden;"> </div>
        <div id="alerta2" ClientIDMode="Static" runat="server" class="alert alert-primary"  > </div>

        <div class="form p-2 m-2">
            <div class="form-inline col-12">
                <label class="col-3" for="tbNombre" >Nombre</label>
                <asp:TextBox ID="tbNombre" ClientIDMode="Static" CssClass="form-control col-8" runat="server"/>
            </div>

            <div class="text-center">
                <asp:Button ID="btnPrueba" Text="Prueba" OnClick="btnPrueba_Click" CssClass="btn btn-primary" runat="server"/>
                <asp:Button ID="btnPrueba2" Text="Prueba2" OnClick="btnPrueba2_Click" CssClass="btn btn-primary" runat="server"/>
            </div>
        </div>
    </asp:Panel>

</asp:Content>
