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
            <asp:TextBox ID="tbNombre" type="text" MaxLength="10" CssClass="form-control" placeholder="Escribe tu nombre" runat="server" />
        </div>

        <h3>opcion 1</h3>

        <style>
            input[type=file]::file-selector-button {
                margin-right: 20px;
                border: none;
                background: #084cdf;
                padding: 10px 20px;
                border-radius: 10px;
                color: #fff;
                cursor: pointer;
                transition: background .2s ease-in-out;
                content: "Elegir";
            }

            input[type=file]:has()::file-selector-button {
                background: #f00f;
            }

            input[type=file]::target-text {
                content: "Elegir";
            }
            /*https://nikitahl.com/custom-styled-input-type-file*/
        </style>

        <div class="form-group">
            <label for="<%=fuFichero.ClientID%>" class="form-label-file">Fichero:</label>
            <asp:FileUpload ID="fuFichero" OnServerClick="fileUpload_ServerClick"
                accept="image/png, image/jpeg"
                CssClass="form-control-file" runat="server" />
        </div>


        <style>
            .custom-file-label::after {
                content: "Elegir";
            }

            .custom-file-input:lang(en) ~ .custom-file-label::after {
                content: "Browse";
            }
        </style>

        <h3>opcion 2</h3>
        <div class="custom-file">
            <asp:FileUpload ID="fuFicheroCustom" CssClass="custom-file-input" lang="es"
                accept="image/png, image/jpeg"
                runat="server" />
            <label for="<%=fuFicheroCustom.ClientID%>" lang="es" class="custom-file-label">Selecciona un fichero excel</label>
        </div>

        <h3>opcion 3</h3>
        <div class="custom-file">
            <input type="file" class="custom-file-input form-control-sm  p-0" id="customFileLang" lang="es">
            <label class="custom-file-label" for="customFileLang">Seleccionar Archivo</label>
        </div>

        <h3>opcion 4</h3>
        <div class="form-group">
            <input type="file" class="filestyle" name="image_src" id="image_src"
                data-input="false" data-iconname="fa fa-upload" data-buttontext="Upload File"
                accept="image/png, image/jpeg" />
        </div>


        <div class="btn-wrapper">
            <label class="btn-file">Elegir archivo
                <input type="file" class="file-submit" name="fileUpload" accept=".xls" multiple="multiple">
            </label>
            <span>No se eligio archivo</span>
        </div>

        <div class="col-12 text-center">
            <asp:Button ID="btnEnviar" type="submit" class="btn btn-primary mx-auto"
                OnClick="btnEnviar_Click" runat="server" Text="Enviar" />
        </div>
    </div>


</asp:Content>
