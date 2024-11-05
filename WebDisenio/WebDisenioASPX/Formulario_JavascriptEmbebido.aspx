<%@ Page Title="" Language="C#" MasterPageFile="~/SiteSimple.Master" AutoEventWireup="true" CodeBehind="Formulario_JavascriptEmbebido.aspx.cs" Inherits="WebDisenioASPX.Formulario_JavascriptEmbebido" %>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <div class="container m-0 p-0">

        <div class="col m-3 p-0">

            <div class="jumbotron m-b-3">
                <h3>Formulario Con javascript embebido</h3>
                <p class="lead">Personalizaciones</p>
            </div>

            <div class="col" style="background-color: #eaf0f5;">

                <div class="form-group">
                    <label for="<%=tbNumero1.ClientID%>" class="form-label col-12 ">Opción 1</label>
                    <asp:TextBox ID="tbNumero1" CssClass="form-control col-12 SoloNumero" TextMode="Number"  runat="server" />
                    <small id="tbNumero1Help" class="form-text text-muted">Rechaza todo lo que no sea numero</small>
                </div>

            </div>

        </div>
    </div>

     <script>
         document.addEventListener("DOMContentLoaded", function ()
         {
             var elementos = document.getElementsByClassName("SoloNumero");

             for (var n = 0; n < elementos.length; n++) {
                 elementos[n].addEventListener("keypress", function (event) {
                     var charCode = (event.which) ? event.which : event.keyCode;

                     console.log(charCode);

                     if (charCode > 31 && (charCode < 48) || (charCode > 57)) {
                         event.preventDefault();
                     }
                 });
             }
         });
     </script>


</asp:Content>

