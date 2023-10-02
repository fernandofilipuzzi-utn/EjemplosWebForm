<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true"
        CodeBehind="formulario.aspx.cs" Inherits="Controles.formulario" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <div class="container">

        <!-- container y body-content centraliza y limita el ancho de la ventana-->
        <div class="form-group">
            <label>DNI:</label>
            <asp:TextBox id="tbDni" type="text" CssClass="form-control" placeholder="Escribe tu DNI" runat="server"/>
        </div>

        <div class="form-group">
            <label>Nombre:</label> 
            <asp:TextBox id="tbNombre" type="text" CssClass="form-control" placeholder="Escribe tu nombre" runat="server"/>           
        </div>

         <button type="submit" class="btn btn-primary">Enviar</button>
    </div>

</asp:Content>
