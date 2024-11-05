<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Formulario_RegistrarCuenta.aspx.cs" Inherits="WebDisenioASPX.Formulario_RegistrarCuenta" %>


<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <div class="container m-0 p-0">

        <div class="col m-3 p-0">

            <div class="jumbotron mb-3">
                <h3>Formulario de Registro</h3>
            </div>

            <div class="alert alert-primary" role="alert" style="display: none;">
                <strong>Mostrando un alerta!</strong>.
            </div>

            <div class="row m-0 mb-3">

                <div class="col-md-6 col-12" style="background-color: #dfffff; display: flex; flex-direction: column; flex-wrap: wrap; align-content: center; justify-content: center; align-items: stretch;">
                    <img src="/img/registro-2.jpg" style="width: 85%; height: auto;" />
                </div>

                <div class="col-md-6 col-12" style="background-color: #eaf0f5;">

                    

                    <div class="form-group">
                        <label for="<%=tbEmail.ClientID%>" class="form-label col-12">Email</label>
                        <asp:TextBox ID="tbEmail" CssClass="form-control col-12" TextMode="Email" runat="server" />
                        <%--
                        <label for="tbEmail" class="form-label col-12">Email</label>
                        <input id="tbEmail" class="form-control col-12" type="email" />
                        --%>
                    </div>

                    <div class="form-group">
                        <label for="<%=tbText.ClientID%>" class="form-label col-12">Email</label>
                        <asp:TextBox ID="tbText" CssClass="form-control col-12" TextMode="SingleLine" runat="server" />
                        <%--
                        <label for="tbApellido" class="form-label col-12">Apellido</label>
                        <input id="tbApellido" class="form-control col-12" type="text" />
                        --%>
                    </div>

                    <div class="form-group">
                        <label for="tbNombre" class="form-label col-12">Nombre</label>
                        <asp:TextBox id="tbNombre" class="form-control col-12" type="text" TextMode="SingleLine" runat="server"/>
                        <%--
                        <label for="tbNombre" class="form-label col-12">Nombre</label>
                        <input id="tbNombre" class="form-control col-12" type="text" />
                        --%>
                    </div>

                    <div class="form-group">
                        <label for="tbNumeroDocumento" class="form-label col-12">DNI</label>
                        <input id="tbNumeroDocumento" class="form-control col-12" type="number" />
                    </div>

                    <div class="form-group">
                        <label for="tbNumero" class="form-label col-12">Número</label>
                        <input id="tbNumero" class="form-control col-12" type="number" />
                    </div>

                    <div class="text-center m-3">
                        <asp:LinkButton ID="btnEnviar" CssClass="btn btn-primary" OnClick="btnEnviar_Click" runat="server">Enviar <i class="fas fa-paper-plane"></i></asp:LinkButton>
                        <asp:LinkButton ID="btnCancelar" CssClass="btn btn-primary" runat="server">Cancelar <i class="fas fa-cancel"></i></asp:LinkButton>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <script>
        function btnEnviar_onclick()
        {
            //form1
            //$(".alert").fadeIn().delay(5000).fadeOut();
            //var alerta = document.getElementById('alert')[];

            //forma2
            var alerta = document.getElementsByClassName('alert')[0];
            alerta.style = 'display: block;';
            alerta.className = "alert alert-success";
        }
 
      
    </script>
</asp:Content>
