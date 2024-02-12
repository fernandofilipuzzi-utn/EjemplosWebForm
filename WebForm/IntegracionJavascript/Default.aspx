<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="IntegracionJavascript._Default" %>


<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <div class="jumbotron">
        <h3 class="display-4">Integración con javaScript</h3>
        <p class="lead">Manipulando javascript desde el code-behind</p>
    </div>

    <div class="container row text-center m-2">

        <div class="card col-lg-3 col-md-4 col-sm-6 m-2 p-3">
            <img src="./img/javascript.jpg" class="card-img-top img-fluid" style="height: 200px; object-fit: cover;" />
            <div class="card-body">
                <div class="card-title">
                    <h2>Code-behind a JavaScript</h2>
                </div>
                <div class="card-text" style="max-height: 60px; overflow: hidden;">
                    <p>Llamando un método de javascript desde el-code behind.</p>
                </div>

            </div>
            <div class="text-center">
                <asp:Button ID="btnEjecutarJavaScript" CssClass="btn btn-primary" Text="Ejecutar" OnClick="btnEjecutarJavaScript_Click" runat="server" />
            </div>
        </div>

        <div class="card col-lg-3 col-md-4 col-sm-6 m-2 p-3" style="background-color: #e7fef6">
            <img src="./img/javascript-control.jpg" class="card-img-top img-fluid" style="height: 200px; object-fit: cover;" />
            <div class="card-body">
                <div class="card-title">
                    <h2>HTML desde js</h2>
                </div>

                <div class="card-text" style="max-height: 60px; overflow: hidden;">
                    <p>Cambiando el estado de un control html desde javascript</p>
                </div>

                <div>
                    <label id="lbCambiarDesdeJavaScript" style="background-color: #ffd800"></label>
                </div>

            </div>
            <div class="text-center">
                <button type="button" id="btnCambiarDesdeJavaScript" class="btn btn-primary" onclick="btnCambiarDesdeJavaScript_click()">LLamar</button>
            </div>
        </div>

        <div class="card col-lg-3 col-md-4 col-sm-6 m-2 p-3" style="background-color: #c7def1;">
            <img src="./img/api-web.jpg" class="card-img-top img-fluid" style="height: 200px; object-fit: cover;" />
            <div class="card-body">
                <div class="card-title">
                    <h2>JavaScript a API Web  (Post)</h2>
                </div>

                <div class="card-text" style="max-height: 60px; overflow: hidden;">
                    <p>Llamando Método Post-Web API desde javascript:</p>
                </div>

            </div>
            <div class="text-center">
                <button type="button" id="btnEjecutarWebAPIPost" class="btn btn-primary" onclick="btnEjecutarWebAPIPost_click()">LLamar</button>
            </div>
        </div>

        <div class="card col-lg-3 col-md-4 col-sm-6 m-2 p-3" style="background-color: #c7def1;">
            <img src="./img/api-web.jpg" class="card-img-top img-fluid" style="height: 200px; object-fit: cover;" />
            <div class="card-body">
                <div class="card-title">
                    <h2>JavaScript a API Web (Get)</h2>
                </div>

                <div class="card-text" style="max-height: 60px; overflow: hidden;">
                    <p>Llamando Método Get-Web API desde javascript:</p>
                </div>
            </div>
            <div class="text-center">
                <button type="button" id="btnEjecutarWebAPIGet" class="btn btn-primary" onclick="btnEjecutarWebAPIGet_click()">LLamar</button>
            </div>
        </div>


    </div>

    <script type="text/javascript">

        function miFuncionJS() {
            alert('¡Hola desde JavaScript!');
        }

        //

        function btnEjecutarWebAPIPost_click() {
            var parametro = "Hola desde JavaScript";

            var url = "/api/MiMetodoPostCSharp";
            var data = parametro;// { parametro: parametro };
            var options =
            {
                method: 'POST',
                headers: {
                    'Content-Type': 'application/json'
                },
                body: JSON.stringify(data)
            };

            console.log(options.body)

            fetch(url, options).then(response => {
                if (!response.ok) {
                    throw new Error('Hubo un problema al realizar la llamada.');
                }
                return response.json();
            })
                .then(data => {
                    alert(data);
                })
                .catch(error => {
                    alert('Error:' + error);
                });
        }

        //

        function btnEjecutarWebAPIGet_click() {
            var parametro = "Hola desde JavaScript";
            var url = "api/MiMetodoGetCSharp?parametro=" + encodeURIComponent(parametro);

            fetch(url).then(response => {
                if (!response.ok) {
                    throw new Error('Hubo un problema al realizar la llamada.');
                }
                console.log(response);
                return response.json();
            })
            .then(data => {
                alert(data);
            })
            .catch(error => {
                alert('Error:' + error);
            });
        }

        //

        function btnCambiarDesdeJavaScript_click() {
            var fechaHoraActual = new Date();
            document.getElementById("lbCambiarDesdeJavaScript").innerHTML = `${fechaHoraActual.getDate()}/${fechaHoraActual.getMonth() + 1}/${fechaHoraActual.getFullYear()} ${fechaHoraActual.getHours()}:${fechaHoraActual.getMinutes()}:${fechaHoraActual.getSeconds()}`;
        }

    </script>

</asp:Content>
