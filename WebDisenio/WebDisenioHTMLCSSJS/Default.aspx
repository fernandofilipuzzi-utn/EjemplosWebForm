<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="WebDisenioHTMLCSSJS._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="containter">

        <div class="jumbotron" style="background: url(/img/banner-gente.jpg) no-repeat center center fixed; -webkit-background-size: cover; -moz-background-size: cover; -o-background-size: cover; background-size: cover;">
            <h3 class="display-4">Paneles</h3>
            <p class="lead">Organizando la pantalla en paneles</p>
        </div>

        <div class="col">
            <div class="row mb-3" style="background-color: #e5f1fc">

                <div>Panel 1, ejemplo advertencias</div>

            </div>

            <div class="row mb-3" style="background-color: #e5f1fc">

                <div>Panel 2</div>

            </div>
        </div>
    </div>


</asp:Content>
