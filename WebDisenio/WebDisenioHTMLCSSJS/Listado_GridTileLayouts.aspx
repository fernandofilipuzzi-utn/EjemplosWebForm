<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Listado_GridTileLayouts.aspx.cs" Inherits="WebDisenioHTMLCSSJS.Listado_GridTileLayouts" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <div class="container m-3">

        <div class="jumbotron m-3">
            <h3>Registrate </h3>
        </div>

        <div class="row  m-3">

            <div class="card m-3" style="width: 18rem; background-color: #dbf2ff">
                <img src="/img/registro-1.jpg" class="card-img-top" style="height: 100px; object-fit: cover;" />
                <div class="card-body">
                    <h3 class="card-title">celda 1</h3>
                    <div class="card-text">Descripción 1</div>
                </div>
                <div class="card-footer">
                    <button id="btnCelda1" class="btn btn-primary">
                        Ver <i class="fas fa-search"></i>
                    </button>
                </div>
            </div>

            <div class="card col-3 m-3" style="background-color: #dbf2ff">
                <img src="/img/registro-2.jpg" class="card-img-top" style="height: 100px; object-fit: cover;" />
                <div class="card-body">
                    <div class="card-title h3">celda 2</div>
                    <div class="card-text">Descripción 2</div>
                    <div class="card-head">
                        <button id="btnCelda2" class="btn btn-primary">
                            Ver <i class="fas fa-search"></i>
                        </button>
                    </div>
                </div>
            </div>

            <div class="card col-3 m-3" style="background-color: #dbf2ff">
                <img src="/img/registro-2.jpg" class="card-img-top" style="height: 100px; object-fit: cover;" />
                <div class="card-body">
                    <div class="card-title h3">celda 3</div>
                    <div class="card-body">Descripción 3</div>
                    <div class="card-head">
                        <button id="btnCelda3" class="btn btn-primary">
                            Ver <i class="fas fa-search"></i>
                        </button>
                    </div>
                </div>
            </div>

            <div class="card col-3 m-3" style="background-color: #dbf2ff">
                <div class="card-body">
                    <div class="card-title">celda 4</div>
                    <div class="card-body">Descripción 4</div>
                    <div class="card-head">
                        <button id="btnCelda4">ver</button>
                    </div>
                </div>
            </div>

            <div class="card col-3 m-3" style="background-color: #dbf2ff">
                <div class="card-body">
                    <div class="card-title">celda 3</div>
                    celda 5
                </div>
            </div>

            <div class="card col-3 m-3" style="background-color: #dbf2ff">
                <div class="card-body">
                    <div class="card-title">celda 3</div>
                    celda 6
                </div>
            </div>

        </div>
    </div>
</asp:Content>
