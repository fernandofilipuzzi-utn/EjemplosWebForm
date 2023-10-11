<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true"
    CodeBehind="formulario.aspx.cs" Inherits="Controles.formulario" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <div class="container">

        <!-- container y body-content centra y limita el ancho de la ventana-->

        <div class="form-group">
            <label for="tbDNI" class="form-label">DNI:</label>
            <asp:TextBox ID="tbDni" type="text" CssClass="form-control" placeholder="Escribe tu DNI" runat="server" />
        </div>

        <div class="form-group">
            <label for="tbNombre" class="form-label">Nombre:</label>
            <asp:TextBox ID="tbNombre" type="text" CssClass="form-control" placeholder="Escribe tu nombre" runat="server" />
        </div>

        <div>
            <label for="fuFichero" class="form-label">Fichero:</label>
            <asp:FileUpload ID="fuFichero" OnServerClick="fileUpload_ServerClick"
                CssClass="form-control"
                aria-describedby="inputGroupFileAddon01"
                runat="server" />
        </div>

        <div class="col-12 text-center">
            <asp:Button ID="btnEnviar" type="submit"
                class="btn btn-primary mx-auto" OnClick="btnEnviar_Click" runat="server" Text="Enviar" />
        </div>
    </div>
</asp:Content>
