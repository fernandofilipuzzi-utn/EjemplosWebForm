<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Formulario.aspx.cs" Inherits="Ajax.Formulario" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="jumbotron">
        <h3 class="display-4">Formulario</h3>
        <p class="lead">Algún comentario!</p>
    </div>

    <asp:Panel ID="panel" ClientIDMode="Static" runat="server">
        <div id="alerta" clientidmode="Static" runat="server" class="alert alert-primary" style="visibility: hidden;"></div>
        <div id="alerta2" clientidmode="Static" runat="server" class="alert alert-primary"></div>

        <div class="form p-2 m-2">
            <div class="form-inline col-12">
                <label class="col-3" for="tbNombre">Nombre</label>
                <asp:TextBox ID="tbNombre" ClientIDMode="Static" CssClass="form-control col-8" runat="server" />
            </div>

            <div class="form-group  p-4" style="background-color: #d1e5e9;">
                <h3>Opciones</h3>

                <div class="col">
                    <div class="form-check col p-2">
                        <asp:RadioButton ID="rbOp1" AutoPostBack="true" OnCheckedChanged="rbOp2_CheckedChanged"
                            class="form-check-input" runat="server" GroupName="gOp" />
                        <label class="form-check-label" for="rbOp1"><i class="fa fa-credit-card"></i>Opción 1</label>
                    </div>

                    <div class="form-check col p-2">
                        <asp:RadioButton ID="rbOp2" class="form-check-input" runat="server"
                            AutoPostBack="true"
                            OnCheckedChanged="rbOp2_CheckedChanged" GroupName="gOp" />
                        <label class="form-check-label" for="rbOp2"><i class="fa fa-exchange-alt"></i>Opción 2</label>
                    </div>
                </div>
            </div>

            <div class="text-center">
                <asp:Button ID="btnPrueba" Text="Prueba" OnClick="btnPrueba_Click" CssClass="btn btn-primary" runat="server" />
                <asp:Button ID="btnPrueba2" Text="Prueba2" OnClick="btnPrueba2_Click" CssClass="btn btn-primary" runat="server" />
            </div>
        </div>
    </asp:Panel>

</asp:Content>
