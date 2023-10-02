<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true"
    CodeBehind="listView_card.aspx.cs" Inherits="Controles.listView_card" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <div class="container body-content">

        <asp:ListView ID="lvwListado" runat="server">

            <LayoutTemplate>
                <asp:PlaceHolder ID="itemPlaceholder" runat="server" />
            </LayoutTemplate>

            <ItemTemplate>
                <div class="row-12 m-1">
                    <div class="card bg-light col-12 m-1 ">
                        <div class="card-body">
                           <asp:Label  Text='<%# Eval("Descripcion") %>' runat="server"/>
                        </div>
                    </div>
                </div>
            </ItemTemplate>

        </asp:ListView>
    </div>

</asp:Content>
