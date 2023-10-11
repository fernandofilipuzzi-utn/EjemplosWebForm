<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true"
    CodeBehind="formulario.aspx.cs" Inherits="Controles.formulario" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <div class="container">

        <!-- container y body-content centra y limita el ancho de la ventana-->

        <div class="form-group">
            <label for="tbDNI">DNI:</label>
            <asp:TextBox ID="tbDni" type="text" CssClass="form-control" placeholder="Escribe tu DNI" runat="server" />
        </div>

        <div class="form-group">
            <label for="tbNombre">Nombre:</label>
            <asp:TextBox ID="tbNombre" type="text" CssClass="form-control" placeholder="Escribe tu nombre" runat="server" />
        </div>

        <div class="form-group">
            <label for="tbNombre">Fichero:</label>
            <div class="input-group">
                <asp:FileUpload ID="fuFichero" OnServerClick="fileUpload_ServerClick"
                                CssClass="form-control"
                                aria-describedby="inputGroupFileAddon01"
                                runat="server" />
                <label id="inputGroupFile01" class="input-group-text" for="fuFichero">Debe seleccionar un fichero</label>
             </div>
        </div>

        <div class="form-group align-content-center">
            <asp:Button ID="btnEnviar" type="submit"
                class="btn btn-primary" OnClick="btnEnviar_Click" runat="server" Text="Enviar" />
        </div>
    </div>
</asp:Content>
