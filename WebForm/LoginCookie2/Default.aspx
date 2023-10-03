<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" 
    CodeBehind="Default.aspx.cs" Inherits="LoginCookie2._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="jumbotron">
        <div class="container">
            <h1 class="display-4">Ejemplo</h1>
            <p class="lead">usando cookies</p>
        </div>
    </div>

    <div class="container m-3">
        <div class="row m-3">
            <div class="card border-primary card-hover col-3 m-1">
                <div class="card-header">
                    opción 1
                </div>
                <div class="card-body">
                    body opción 1
                </div>
                <div class="card-footer">
                    footer 1
                </div>
            </div>
            <div class="card border-primary col-3 m-1">
                <div class="card-body">
                    opción 2
                </div>
            </div>
            <div class="card border-primary col-3 m-1">
                <div class="card-body">
                    opción 3
                </div>
            </div>
        </div>
    </div>


</asp:Content>
