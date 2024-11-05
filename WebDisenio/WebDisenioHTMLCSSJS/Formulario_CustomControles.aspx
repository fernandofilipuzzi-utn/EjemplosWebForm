<%@ Page Title="" Language="C#" MasterPageFile="~/Site_CustomCss.Master" AutoEventWireup="true" CodeBehind="Formulario_CustomControles.aspx.cs" Inherits="WebDisenioHTMLCSSJS.Formulario_CustomControles" %>


<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <div class="container m-0 p-0">

        <div class="col m-3 p-0">

            <div class="jumbotron m-b-3">
                <h3>Formulario de Registro</h3>
                <p>Bootstrap 4.5 no tiene ciertas clases, por ejemplo, no tiene la clase para que el checkbox se visualice como un switch</>
            </div>
                        
            <div class="col" style="background-color: #eaf0f5;">

                <div class="group-form">

                    <%-- así convierte un checkbox asp en html --%>
                    <span class="switch">
                        <input id="chk" type="checkbox">
                    </span>
                    <label for="chk">Activado</label>

                </div>

                <div class="group-form">
                    <label for="tbValor">Valor</label>
                    <input id="tbValor" class="form-control" />
                </div>

                <div class="row justify-content-end" >
                    <div class="col-4">
                        <asp:CheckBox ID="chkHabilitadoCredencial" CssClass="switch" runat="server"/>                    
                    </div>
                </div>
            </div>
        </div>
    </div>

    <style>
        document.getElementById("tbValor").addEventListener("input", function ()    
        {
            this.value = this.value.replace(/[^\d]/g, '');
        });
    </style>

</asp:Content>
