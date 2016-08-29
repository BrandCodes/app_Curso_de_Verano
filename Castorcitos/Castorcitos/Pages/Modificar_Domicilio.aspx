<%@ Page Language="C#" MasterPageFile="~/Pages/FormatoAdmin.Master" AutoEventWireup="true" CodeBehind="Modificar_Domicilio.aspx.cs" Inherits="Castorcitos.Pages.Modificar_Domicilio" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">    
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <br />
        <div class="page-header">
            <h1>Modificar <small>Domicilio</small></h1>
        </div>

        <form>
            <div class="form-group">
                <label> Seleccionar Domicilio</label>
                <asp:GridView ID="gvMostrarDomicilio" class="well table table-bordered table-hover table-striped Gridview" runat="server" AutoGenerateColumns="false" AutoGenerateSelectButton="true" OnSelectedIndexChanged="gvMostrarDomicilio_SelectedIndexChanged">
                <Columns>
                    <asp:BoundField DataField="Id_Domicilio" HeaderText="Id Domicilio" />
                    <asp:BoundField DataField="Calle" HeaderText="Calle"/>
                    <asp:BoundField DataField="Colonia" HeaderText="Colonia"/>                    
                    <asp:BoundField DataField="Numero" HeaderText="Número"/>   
                    <asp:BoundField DataField="CodigoPostal" HeaderText="CodigoPostal"/>                    
                    <asp:BoundField DataField="Municipio" HeaderText="Municipio"/>                   
                </Columns>
                </asp:GridView>
            </div>
            <br />
            <h3>Datos a Modificar</h3>
            <br />
            <div class="form-group">
                <label>Id Domicilio</label>
                <asp:TextBox ID="txtIdDomicilio" class="form-control" placeholder="" runat="server" ReadOnly="true"></asp:TextBox>
            </div>
            <div class="form-group">
                <label>Calle</label>
                <asp:TextBox ID="txtCalle" class="form-control" placeholder="Calle" runat="server"></asp:TextBox>
            </div>
            <div class="form-group">
                <label>Colonia</label>
                <asp:TextBox ID="txtColonia" class="form-control" placeholder="Colonia" runat="server"></asp:TextBox>
            </div>
             <div class="form-group">
                <label>Número</label>
                <asp:TextBox ID="txtNumero" class="form-control" placeholder="Número" runat="server"></asp:TextBox>
            </div>
            <div class="form-group">
                <label>Código Postal</label>
                <asp:TextBox ID="txtCodigoPostal" class="form-control" placeholder="Codigo Postal" runat="server"></asp:TextBox>
            </div>
            <div class="form-group">
                <label>Municipio</label>
                <asp:TextBox ID="txtMunicipio" class="form-control" placeholder="Municipio" runat="server"></asp:TextBox>
            </div>         
            <br />
            <asp:Button ID="btnModificarNumero" class="btn btn-primary" runat="server" Text="Modificar" OnClick="btnModificarNumero_Click" /> 
            <br />
        </form>
    </div>
</asp:Content>
