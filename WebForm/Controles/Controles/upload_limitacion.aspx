<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="upload_limitacion.aspx.cs" Inherits="Controles.Controles.upload_limitacion" %>
<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <asp:Panel ID="panelError" runat="server" Visible="false" >
        <div class="row">
            <div class="col-lg-12" style="margin-top: 10px">
                <div class="alert alert-danger has-icon" role="alert">
                    <div class="alert-icon">
                        <span class="oi oi-warning"></span>
                    </div>
                    <asp:Label ID="lblError" runat="server" Text="error desconocido"></asp:Label>
                </div>
            </div>
        </div>
    </asp:Panel>

    <main>
        <section class="row" aria-labelledby="aspnetTitle">
            <h1 id="aspnetTitle">ASP.NET</h1>
        </section>

        <div class="form-group">
            <asp:FileUpload CssClass="form-control" ID="fuFichero" OnChange="evaluar(this)" runat="server" />
            <asp:Label ID="lbMensaje" class="alert alert-danger has-icon"  runat="server"  style="display:none" Text="error desconocido"></asp:Label>
        </div>

         <div class="form-group">
             <asp:FileUpload CssClass="form-control" ID="FileUpload1" OnChange="evaluar2(this)" runat="server" />
              <asp:HiddenField ID="hfShowError" runat="server" />
         </div>

        <asp:Label ID="lb" runat="server" />
        <asp:Button ID="BTN" Text="ENVIAR" OnClientClick="return evaluar();" runat="server" />
    </main>

    <script type="text/javascript">
        function evaluar(fileUpload) {
           
            var maxFileSize = 10 * 1024 * 1024; // 10 MB en bytes

            if (fileUpload.files.length > 0 && fileUpload.files[0].size > maxFileSize) {

                var lbMensaje = document.getElementById('<%=lbMensaje.ClientID%>');

                lbMensaje.style.display = "block";
                lbMensaje.innerText = "El archivo supera el tamaño máximo permitido de 10 MB."

                fileUpload.value = "";//lo limpia, porque si lo envia al postback rompe

                return false; //previen el postback
            }

            return true; 
        }

        function evaluar2(fileUpload) {
          
            var maxFileSize = 10 * 1024 * 1024; // 10 MB en bytes

            if (fileUpload.files.length > 0 && fileUpload.files[0].size > maxFileSize) {
                var hfShowError = document.getElementById('<%= hfShowError.ClientID %>');
                hfShowError.value = "true"; 

                fileUpload.value = "";//lo limpia, porque si lo envia al postback rompe

                return false; //previene el postback
            }

            return true;
        }
    </script>

</asp:Content>

