<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ListViewEditDelete.aspx.cs" Inherits="WebListView._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

  <asp:ListView ID="listView1" InsertItemPosition="FirstItem" runat="server"
                OnItemEditing="listView1_ItemEditing"
                OnItemInserted="listView1_ItemInserted"
                OnItemUpdating="listView1_ItemUpdating"
                OnItemDeleting="listView1_ItemDeleting"
                OnItemCanceling="listView1_ItemCanceling">
    <LayoutTemplate>
        <div class="row">
            <asp:PlaceHolder ID="itemPlaceHolder" runat="server" />
        </div>
    </LayoutTemplate>
    <ItemTemplate>
        <div class="row">
            <div class="col-5">
                <%# Eval("campo1") %>
            </div>
            <div class="col-4">
                <%# Eval("campo2") %>
            </div>
            <div class="col-3">
                <div class="row d-flex justify-content-between" >    
                    <asp:LinkButton ID="btnEdit" CommandName="Edit" runat="server"><i class="fa-solid fa-file-pen"></i></asp:LinkButton>
                    <asp:LinkButton ID="btnDelete" CommandName="Delete" runat="server"><i class="fa-solid fa-trash"></i></asp:LinkButton>
                </div>
            </div>
        </div>
    </ItemTemplate>
    <InsertItemTemplate>
        <div class="content">
            <div class="row">
                <div class="col-5">
                    <asp:TextBox ID="tbInsertCampo1" Text='<%# Bind("campo1") %>' runat="server"/>
                </div>
                <div class="col-4">
                    <asp:TextBox ID="tbInsertCampo2" Text='<%# Bind("campo2") %>' runat="server"/>
                </div>
                <div class="col-3">
                    <div class="row d-flex justify-content-between">
                        <asp:LinkButton ID="btnInsert" CommandName="Insert" runat="server"><i class="fa-solid fa-circle-check"></i></asp:LinkButton>
                        <asp:LinkButton ID="btnInsertCancel" CommandName="Cancel" runat="server"><i class="fa-solid fa-cancel"></i></asp:LinkButton>
                    </div>
                </div>
            </div>
        </div>
    </InsertItemTemplate>
    <EditItemTemplate>
        <div class="row">
            <div class="col-5">
                <asp:TextBox ID="tbEditCampo1" Text='<%# Eval("Campo1") %>' runat="server"/>
            </div>
            <div class="col-4">
                <asp:TextBox ID="tbEditCampo2" Text='<%# Eval("Campo2") %>' runat="server"/>
            </div>
            <div class="col-3">
                <div class="row d-flex justify-content-between">
                    <asp:LinkButton  D="btUpdate" CommandName="Update" runat="server"><i class="fa-solid fa-circle-check"></i></asp:LinkButton>
                    <asp:LinkButton ID="btnEditCancel" CommandName="Cancel" runat="server"><i class="fa-solid fa-cancel"></i></asp:LinkButton>
                </div>
            </div>
        </div>            
    </EditItemTemplate>
    
</asp:ListView>

</asp:Content>
