<%@ Page Title="" Language="C#" MasterPageFile="~/SiteSimple.Master" AutoEventWireup="true" CodeBehind="Formulario_Estandar.aspx.cs" Inherits="WebDisenioASPX.Formulario_Estandar" %>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <div class="container m-0 p-0">

        <div class="col m-3 p-0">

            <div class="jumbotron m-b-3">
                 <h3>Formulario Estándar</h3>
                <p class="lead">Ejemplo de uso de controles típicos</p>
            </div>

            <div class="container p-0 m-0">

                <asp:Panel runat="server" Visible="false" ID="successAlert" class="alert alert-success alert-dismissible show" role="alert">
                    <button type="button" class="close" data-dismiss="alert">&times;</button>
                    <strong>Success!</strong> This alert box could indicate a successful or positive action.
                </asp:Panel>

                <asp:Panel runat="server" Visible="false" ID="infoAlert" CssClass="alert alert-info alert-dismissible show" role="alert">
                    <button type="button" class="close" data-dismiss="alert">&times;</button>
                    <strong>Info!</strong> This alert box could indicate a neutral informative change or action.
                </asp:Panel>

                <asp:Panel runat="server" Visible="false" ID="warningAlert" CssClass="alert alert-warning alert-dismissible show" role="alert">
                    <button type="button" class="close" data-dismiss="alert">&times;</button>
                    <strong>Warning!</strong> This alert box could indicate a warning that might need attention.
                </asp:Panel>

                <asp:Panel runat="server" Visible="false" ID="dangerAlert" CssClass="alert alert-danger alert-dismissible show" role="alert">
                    <button type="button" class="close" data-dismiss="alert">&times;</button>
                    <strong>Danger!</strong> This alert box could indicate a dangerous or potentially negative action.
                </asp:Panel>

                <asp:Panel runat="server" Visible="false" ID="primaryAlert" CssClass="alert alert-primary alert-dismissible show" role="alert">
                    <button type="button" class="close" data-dismiss="alert">&times;</button>
                    <strong>Primary!</strong> Indicates an important action.
                </asp:Panel>

                <asp:Panel runat="server" Visible="false" ID="secondaryAlert" CssClass="alert alert-secondary alert-dismissible show" role="alert">
                    <button type="button" class="close" data-dismiss="alert">&times;</button>
                    <strong>Secondary!</strong> Indicates a slightly less important action.
                </asp:Panel>

                <asp:Panel runat="server" Visible="false" ID="darkAlert" CssClass="alert alert-dark alert-dismissible show" role="alert">
                    <button type="button" class="close" data-dismiss="alert">&times;</button>
                    <strong>Dark!</strong> Dark grey alert.
                </asp:Panel>

                <asp:Panel runat="server" Visible="false" ID="lightAlert" CssClass="alert alert-light alert-dismissible show" role="alert">
                    <button type="button" class="close" data-dismiss="alert">&times;</button>
                    <strong>Light!</strong> Light grey alert.
                </asp:Panel>
            </div>

            <div class="col" style="background-color: #eaf0f5;">

                <div class="alert alert-primary" role="alert" style="display: none;">
                    <strong>Mostrando un alerta!</strong>.
                </div>

                <div class="group-form col-12 p-3">
                    <label for="<%=tbUsername.ClientID%>" CssClass="form-label col-12" runat="server">Nombre de usuario</label>
                    <asp:TextBox ID="tbUsername" CssClass="form-control col-12" type="text" name="username" runat="server" />
                </div>

                <%---
                <div class="group-form">
                    <label for="tbUsername">Nombre de usuario</label>
                    <input id="tbUsername" class="form-control" type="text" name="username">
                </div>
                --%>

                <div class="group-form col-12 p-3">
                    <label for="<%=tbPassword.ClientID%>" cssclass="form-label col-12">Clave</label>
                    <asp:TextBox ID="tbPassword" CssClass="form-control col-12" type="password" name="password" runat="server" />
                </div>

                 <%---
                 <div class="group-form">
                     <label for="lbPassword">Password</label>
                     <input id="lbPassword" class="form-control" type="password" name="password">
                 </div>
                 --%>

                <div class="group-form col-12 p-3">
                    <label for="<%=tbValor.ClientID%>">Valor</label>
                    <asp:TextBox ID="tbValor" class="form-control" type="number" step="any" name="tbValor" runat="server"/>
                </div>

                <%---
               <div class="group-form">
                   <label for="tbValor">Valor</label>
                   <input id="tbValor" class="form-control" type="number" step="any" name="password">
               </div>
                --%>

                <div class="form-group col-12  p-3">
                    <label for="tbVehicles" class="form-label col-12">Tipo de vehículo</label>
                    <div class="col">
                        <div class="form-check">
                            <asp:CheckBox ID="bike" name="vehicle" CssClass="form-check-input" value="Bike" runat="server" />
                            <label class="form-check-label" for="<%=bike.ClientID%>">Bike</label>
                        </div>
                        <div class="form-check">
                            <asp:CheckBox ID="car" name="vehicle" CssClass="form-check-input" value="Car" runat="server" />
                            <label class="form-check-label" for="<%=car.ClientID%>">Car</label>
                        </div>
                    </div>
                </div>

                <%--
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
                --%>

                <div class="form-group col-12  p-3">
                    <label for="tbSexo" class="form-label col-12">Sexo</label>
                    <div class="col">
                        <asp:RadioButtonList ID="gender" runat="server" CssClass="form-check">
                            <asp:ListItem Text="Male" Value="male"></asp:ListItem>
                            <asp:ListItem Text="Female" Value="female"></asp:ListItem>
                        </asp:RadioButtonList>
                    </div>
                </div>

                <%---
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
                --%>

                <div class="form-group  p-3">
                    <label for="<%=tbBirthdate.ClientID%>" class="form-label">Fecha de nacimiento</label>
                    <asp:TextBox ID="tbBirthdate" CssClass="form-control" type="date" name="birthdate" runat="server" />
                </div>
                <%---
                <div class="form-group">
                    <label for="tbBirthdate" class="form-label">Birthdate</label>
                    <input id="tbBirthdate" class="form-control" type="date" name="birthdate" />
                </div>
                --%>

                <div class="group-form p-3">
                    <label for="<%=fileToUpload.ClientID%>" class="form-label">Elegir Archivo</label>
                    <asp:FileUpload ID="fileToUpload" type="file" name="fileToUpload" runat="server" />
                </div>
                <%---
                <div class="group-form">
                    <label for="fileToUpload" class="form-label">Elegir Archivo</label>
                    <input id="fileToUpload" type="file" name="fileToUpload" />
                </div>
                --%>

                <div class="group-form p-3">
                    <label for="<%=email.ClientID%>" class="form-label">Email</label>
                    <asp:TextBox ID="email" CssClass="form-control" type="email" name="email" runat="server" />
                </div>
                <%---
                <div class="group-form">
                    <label for="email" class="form-label">Email</label>
                    <input id="email" class="form-control" type="email" name="email">
                </div>
                --%>

                <div class="group-form p-3">
                    <label for="<%=lbColor.ClientID%>">Seleccione un color</label>
                    <asp:TextBox ID="lbColor" TextMode="color" name="favcolor" runat="server" />
                </div>
                <%---
                <div class="group-form">
                    <label for="lbColor"></label>
                    <input id="lbColor" type="color" name="favcolor">
                </div>
                --%>

                <div class="form-group p-3">
                    <label for="<%=ddlLista.ClientID%>" class="form-label col-12">Opciones 1</label>
                    <asp:DropDownList ID="ddlLista" DataTextField="Descripcion" DataValueField="Id" OnDataBound="ddlLista_DataBound" OnTextChanged="ddlLista_TextChanged" CssClass="form-control-lg col-12" runat="server" />
                </div>

                <!--
                <div class="form-group">
                    <label for="ddlLista" class="form-label col-12">Opciones 1</label>
                    <select id="ddlLista" class="form-control-lg col-12" type="">
                        <option value="1">Buggy</option>
                        <option value="2">Cuatriciclo</option>
                    </select>
                </div>            
                -->

                <div class="form-group p-3">
                    <label for="taTexto" class="form-label">Comentarios:</label>
                    <textarea id="taTexto" class="form-control col-12" name="message" rows="4" cols="50">Entre un mensaje aquí.
                    </textarea>
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