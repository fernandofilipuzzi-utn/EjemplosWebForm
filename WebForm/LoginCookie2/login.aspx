<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" 
                Inherits="LoginCookie2.login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>

    <link rel="stylesheet" type="text/css" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" />
    <link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" />
</head>
<body>
    <form id="form1" runat="server">

        <asp:ScriptManager ID="smVecinoLogin"  runat="server">
            <Scripts>
                <asp:ScriptReference Path="https://code.jquery.com/jquery-3.5.1.slim.min.js" />
                <asp:ScriptReference Path="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" />
                <asp:ScriptReference Path="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js" />
            </Scripts>
        </asp:ScriptManager>

        <script type="text/javascript">
          
            //window.history.replaceState({}, '', './Default');
         
            window.addEventListener('pageshow', function (event) {
                if (event.persisted) {
                    var cookie = document.cookie.match(/(^|;) ?UsuarioSettings=([^;]*)(;|$)/);
                    if (!cookie) {
                        alert('no existe');
                    }
                    else {
                      //  alert('existe');
                        window.location.href = 'Default.aspx';
                    }
                }
            });
           
        </script>

        <asp:UpdatePanel ID="uppLoginVecino" runat="server">
            <ContentTemplate>

                <div class="container body-content">
                    <div class="col-md-5">
                        <div css="form-group">
                            <asp:Label Text="Usuario:" for="tbUsuario"  runat="server" />
                            <asp:TextBox ID="tbUsuario" CssClass="form-control"
                                         placeholder="Ingrese su el nombre de Usuario"  runat="server" />
                        </div>

                        <div css="form-group">
                            <asp:Label Text="Clave:" for="tbClave" runat="server" />
                            <asp:TextBox ID="tbClave" TextMode="Password" CssClass="form-control"
                                        placeholder="Ingrese su clave" runat="server" />
                        </div>

                        <asp:Button ID="btnAceptar" Text="Ingresar" CssClass="btn btn-primary" 
                                    OnClick="btnAceptar_Click" runat="server" />
                    </div>

                    <div><asp:Label ID="lbError" runat="server" Visible="false" /> </div>
                </div>

            </ContentTemplate>
        </asp:UpdatePanel>
    </form>

</body>
</html>
