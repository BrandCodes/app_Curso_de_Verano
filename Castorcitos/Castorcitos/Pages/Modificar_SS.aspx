<%@ Page Language="C#" MasterPageFile="~/Pages/FormatoAdmin.Master" AutoEventWireup="true" CodeBehind="Modificar_SS.aspx.cs" Inherits="Castorcitos.Pages.Modificar_SS" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">    
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <br />
        <div class="page-header">
            <h1>Modificar <small>Seguro Social</small></h1>
        </div>

        <form>
            <div class="form-group">
                <label> Seleccionar Seguro Social</label>
                <asp:GridView ID="gvMostrarSS" class="well table table-bordered table-hover table-striped Gridview" runat="server" AutoGenerateColumns="false" AutoGenerateSelectButton="true"   OnSelectedIndexChanged="gvMostrarPersona_SelectedIndexChanged">
                <Columns>
                    <asp:BoundField DataField="Id_Seguro" HeaderText="ID Seguro" />
                    <asp:BoundField DataField="Num_Seguro" HeaderText="Matrícula Seguro" />
                    <asp:BoundField DataField="Nombre_Seguro" HeaderText="Nombre del Seguro" />                    
                </Columns>
                </asp:GridView>
            </div>
            <br />
            <h3>Datos a Modificar</h3>
            <br />
            <div class="form-group">                
                <label>ID Seguro</label>
                <asp:TextBox ID="txtIdSeguro" class="form-control" placeholder="ID Seguro" runat="server" ReadOnly="true"></asp:TextBox>
            </div>
            <div class="form-group">                
                <label>Matrícula del Seguro</label>
                <asp:TextBox ID="txtMatriculaSS" class="form-control" placeholder="Matrícula Seguro" runat="server"></asp:TextBox>
            </div>
            <div class="form-group">                
                <label>Nombre del Seguro</label>
                <asp:TextBox ID="txtNombreSS" class="form-control" placeholder="Nombre Seguro" runat="server"></asp:TextBox>
            </div>
            <br />
            <asp:Button ID="btnModificarSeguroSocial" class="btn btn-primary" runat="server" Text="Modificar" OnClick="btnModificarSeguroSocial_Click" />
            <br />
        </form>
    </div>
</asp:Content>
