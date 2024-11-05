<%@ Page Title="" Language="C#" MasterPageFile="~/SiteSimple.Master" AutoEventWireup="true" CodeBehind="Formulario_JavascriptEmbebido.aspx.cs" Inherits="WebDisenioHTMLCSSJS.Formulario_JavascriptEmbebido" %>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <div class="container m-0 p-0">

        <div class="col m-3 p-0">

            <div class="jumbotron m-b-3">
                <h3>Formulario Con javascript embebido</h3>
                <p class="lead">Personalizaciones</p>
            </div>

            <div class="col" style="background-color: #eaf0f5;">
                                
                <div class="form-group">
                    <label for="tbNumero3" class="form-label col-12">Opción 3</label>
                    <input  id="tbNumero3" class="form-control col-12 SoloNumero" type="number"/>
                    <small id="tbNumero3Help" class="form-text text-muted">Similar al anterior, pero se marca en el CssClass por SoloNumero</small>
                </div>

            </div>

        </div>
    </div>

    <script>
        document.addEventListener("DOMContentLoaded", function ()
        {
            var elementos = document.getElementsByClassName("SoloNumero");
            
            for (var n = 0; n < elementos.length; n++)
            {
                elementos[n].addEventListener("keypress", function (event)
                {
                    var charCode = (event.which) ? event.which : event.keyCode;

                    console.log(charCode);

                    if (charCode > 31 && (charCode < 48) || (charCode > 57) )
                    {
                        event.preventDefault();
                    }                    
                });
            }
        });  
    </script>

</asp:Content>
