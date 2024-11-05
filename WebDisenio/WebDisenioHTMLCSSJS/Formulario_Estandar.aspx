<%@ Page Title="" Language="C#" MasterPageFile="~/SiteSimple.Master" AutoEventWireup="true" CodeBehind="Formulario_Estandar.aspx.cs" Inherits="WebDisenioHTMLCSSJS.Formulario_Estandar" %>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <div class="container m-0 p-0">

        <div class="col m-3 p-0">

            <div class="jumbotron m-b-3">
                <h3>Formulario Estándar</h3>
                <p class="lead">Ejemplo de uso de controles típicos</p>
            </div>

            <div class="container p-0 m-0">

                <div id="successAlert" class="alert alert-success alert-dismissible fade" role="alert">
                    <button type="button" class="close" data-dismiss="alert">&times;</button>
                    <strong>Success!</strong> This alert box could indicate a successful or positive action.
                </div>

                <div id="infoAlert" class="alert alert-info alert-dismissible fade" role="alert">
                    <button type="button" class="close" data-dismiss="alert">&times;</button>
                    <strong>Info!</strong> This alert box could indicate a neutral informative change or action.
                </div>

                <div id="warningAlert" class="alert alert-warning alert-dismissible fade" role="alert">
                    <button type="button" class="close" data-dismiss="alert">&times;</button>
                    <strong>Warning!</strong> This alert box could indicate a warning that might need attention.
                </div>

                <div id="dangerAlert" class="alert alert-danger alert-dismissible fade" role="alert">
                    <button type="button" class="close" data-dismiss="alert">&times;</button>
                    <strong>Danger!</strong> This alert box could indicate a dangerous or potentially negative action.
                </div>

                <div class="alert alert-primary alert-dismissible fade" role="alert">
                    <button type="button" class="close" data-dismiss="alert">&times;</button>
                    <strong>Primary!</strong> Indicates an important action.
                </div>

                <div class="alert alert-secondary alert-dismissible fade" role="alert">
                    <button type="button" class="close" data-dismiss="alert">&times;</button>
                    <strong>Secondary!</strong> Indicates a slightly less important action.
                </div>

                <div class="alert alert-dark alert-dismissible fade" role="alert">
                    <button type="button" class="close" data-dismiss="alert">&times;</button>
                    <strong>Dark!</strong> Dark grey alert.
                </div>

                <div class="alert alert-light alert-dismissible fade" role="alert">
                    <button type="button" class="close" data-dismiss="alert">&times;</button>
                    <strong>Light!</strong> Light grey alert.
                </div>
            </div>

            <div class="col" style="background-color: #eaf0f5;">

                <div class="group-form">
                    <label for="lbUsername">Nombre de usuario</label>
                    <input id="lbUsername" class="form-control" type="text" name="username">
                </div>

                <div class="group-form">
                    <label for="lbPassword">Clave</label>
                    <input id="lbPassword" class="form-control" type="password" name="password">
                </div>

                <div class="group-form">
                    <label for="tbValor">Valor</label>
                    <input id="tbValor" class="form-control" type="number" step="any">
                </div>

                <div class="form-group">
                    <label for="tbVehicles" class="form-label col-12">Vehicles</label>
                    <div class="form-check">
                        <input id="bike" type="checkbox" name="vehicle" class="form-check-input"
                            value="Bike">
                        <label class="form-check-label" for="bike">Bike</label>
                    </div>
                    <div class="form-check">
                        <input id="car" type="checkbox" name="vehicle" class="form-check-input"
                            value="Car">
                        <label class="form-check-label" for="car">Car</label>
                    </div>
                </div>

                <div class="form-group">
                    <label for="tbSexo" class="form-label col-12">Sexo</label>
                    <div class="form-check">
                        <input type="radio" name="gender" id="male" class="form-check-input" value="male">
                        <label class="form-check-label" for="male">Male</label>
                    </div>
                    <div class="form-check">
                        <input type="radio" name="gender" id="female" class="form-check-input" value="female">
                        <label class="form-check-label" for="female">Female</label>
                    </div>
                </div>

                <div class="form-group">
                    <label for="tbBirthdate" class="form-label">Fecha de nacimiento</label>
                    <input id="tbBirthdate" class="form-control" type="date" name="birthdate" />
                </div>

                <div class="group-form">
                    <label for="fileToUpload" class="form-label">Elegir Archivo</label>
                    <input id="fileToUpload" type="file" name="fileToUpload" />
                </div>

                <div class="group-form">
                    <label for="email" class="form-label">Email</label>
                    <input id="email" class="form-control" type="email" name="email">
                </div>

                <div class="group-form">
                    <label for="lbColor">Selección de un color</label>
                    <input id="lbColor" type="color" name="favcolor">
                </div>

                <div class="form-group">
                    <label for="ddlLista" class="form-label col-12">Opciones</label>
                    <select id="ddlLista" class="form-control-lg col-12" type="">
                        <option value="1">Buggy</option>
                        <option value="2">Cuatriciclo</option>
                    </select>
                </div>

                <div class="form-group">
                    <label for="taTexto" class="form-label">Descripción</label>
                    <textarea id="taTexto" class="form-control" name="message" rows="4" cols="50">Entra un texto aquí!</textarea>
                </div>

                <div class="text-center m-3">
                    <asp:LinkButton ID="btnEnviar" CssClass="btn btn-primary" runat="server">Enviar <i class="fas fa-paper-plane"></i></asp:LinkButton>
                    <asp:LinkButton ID="btnCancelar" CssClass="btn btn-primary" runat="server">Cancelar <i class="fas fa-cancel"></i></asp:LinkButton>
                    <asp:LinkButton ID="btnShowAlert" OnClick="btnShowAlert_Click" CssClass="btn btn-primary" runat="server">ShowAlert <i class="fas fa-paper-plane"></i></asp:LinkButton>
                </div>
            </div>
        </div>
    </div>

</asp:Content>
