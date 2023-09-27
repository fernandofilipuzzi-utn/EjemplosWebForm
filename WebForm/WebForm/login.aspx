<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" 
                Inherits="LoginCookieWebForm.login" %>

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

        <asp:ScriptManager ID="smVecinoLogin" runat="server" />

        <asp:UpdatePanel ID="uppLoginVecino" runat="server">
            <ContentTemplate>

                <div class="container">
                    <div class="col-md-5">
                        <div css="form-group">
                            <asp:Label Text="Usuario:" for="tbUsuario"  runat="server" />
                            <asp:TextBox ID="tbUsuario" CssClass="form-control"
                                         placeholder="Ingrese su el nombre de Usuario"  runat="server" />
                        </div>

                        <div css="form-group">
                            <asp:Label Text="Clave:" for="tbClave" runat="server" />
                            <asp:TextBox ID="tbClave" 
                                        TextMode="Password"
                                        CssClass="form-control"
                                        placeholder="Ingrese su clave" runat="server" />
                        </div>

                        <asp:Button ID="btnAceptar" 
                                    Text="Ingresar"
                                    CssClass="btn btn-primary" 
                                    OnClick="btnAceptar_Click" runat="server" />
                    </div>

                    <div>
                        <asp:Label ID="lbError" runat="server" Visible="false" />
                    </div>
                </div>

            </ContentTemplate>
        </asp:UpdatePanel>
    </form>

    <!--menu-->
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.8/dist/umd/popper.min.js" />
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.min.js" />
</body>
</html>
