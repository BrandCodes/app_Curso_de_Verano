<%@ Page Language="C#" MasterPageFile="~/Pages/FormatoAdmin.Master" AutoEventWireup="true" CodeBehind="pruebasSeguroInsertar.aspx.cs" Inherits="Castorcitos.Pages.pruebasSeguroInsertar" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link type="text/css" rel="stylesheet" href="../CSS/EstiloGenerales.css" />
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server" >
    <br />
    <br />
    <div class="container">
	    <div class="page-header">
           <h1>Insertar <small>Domicilio</small></h1>
        </div>

        <form>
             <div class="form-group">
                <label>Calle</label>
                <asp:TextBox ID="txtCalle" class="form-control" placeholder="Calle" runat="server"></asp:TextBox>
            </div>
            <div class="form-group">
                <label>Colonia</label>
                <asp:TextBox ID="txtColonia" class="form-control" placeholder="Colonia" runat="server"></asp:TextBox>
            </div>
            <div class="form-group">
                <label>Número Recidencial</label>
                <asp:TextBox ID="txtNumeroResiden" class="form-control" placeholder="Numero" runat="server"></asp:TextBox>
            </div>
            <div class="form-group">
                <label>Código Postal</label>
                <asp:TextBox ID="txtCodigoPostal" class="form-control" placeholder="Codigo Postal" runat="server"></asp:TextBox>
            </div>
            <div class="form-group">
                <label>Municipio</label>
                <asp:TextBox ID="txtMunicipio" class="form-control" placeholder="Municipio" runat="server"></asp:TextBox>
            </div>
         
            <asp:Button ID="btnInsertarDomicilio" class="btn btn-primary" runat="server" Text="Insertar" OnClick="btnInsertarDomicilio_Click" />
        </form>
    </div>
</asp:Content>