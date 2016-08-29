<%@ Page Language="C#" MasterPageFile="~/Pages/FormatoAdmin.Master" AutoEventWireup="true" CodeBehind="Generales.aspx.cs" Inherits="Castorcitos.Pages.Generales" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link type="text/css" rel="stylesheet" href="../CSS/EstiloGenerales.css" />
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server" >
    <!--Secciones-->
    <div id="section2" class="container-fluid">
        <div class="container">
	        <div class="page-header">
               <h1>Insertar <small>Seguro Social</small></h1>
            </div>

            <div class="form-group">
                <labelS>Numero De Seguro</labelS>
                <asp:TextBox ID="txtNumSeguro" class="form-control" placeholder="Numero de Seguro" runat="server"></asp:TextBox>
            </div>
            <div class="form-group">
                <label>Nombre del Seguro</label>
                <asp:TextBox ID="txtNombreSeguro" class="form-control" placeholder="Nombre del Seguro" runat="server"></asp:TextBox>
            </div>
            <asp:Button ID="btnInsertarSeguroSocial" class="btn btn-primary" runat="server" Text="Insertar" OnClick="btnInsertarSeguroSocial_Click" />    
        </div>
    </div>

    <div id="section3" class="container-fluid">
        <div class="container">
	        <div class="page-header">
               <h1>Insertar <small>Direccion</small></h1>
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
                <label>Numero Recidencial</label>
                <asp:TextBox ID="txtNumeroResiden" class="form-control" placeholder="Numero" runat="server"></asp:TextBox>
            </div>
            <div class="form-group">
                <label>Codigo Postal</label>
                <asp:TextBox ID="txtCodigoPostal" class="form-control" placeholder="Codigo Postal" runat="server"></asp:TextBox>
            </div>
            <div class="form-group">
                <label>Municipio</label>
                <asp:TextBox ID="txtMunicipio" class="form-control" placeholder="Municipio" runat="server"></asp:TextBox>
            </div>
         
            <asp:Button ID="btnInsertarDomicilio" class="btn btn-primary" runat="server" Text="Insertar" OnClick="btnInsertarDomicilio_Click" />
        
        </div>
    </div>

    <div id="section4" class="container-fluid">
        <div class="container">
	        <div class="page-header">
               <h1>Insertar <small>Telefono</small></h1>
            </div>
    
            <div class="form-group">
                <label> Seleccionar Trabajador</label>
                <asp:GridView ID="gvMostrarPersona" class="well table table-bordered table-hover table-striped Gridview" runat="server" AutoGenerateColumns="false" AutoGenerateSelectButton="true"   OnSelectedIndexChanged="gvMostrarPersona_SelectedIndexChanged">
                <Columns>
                    <asp:BoundField DataField="IdPersonas" HeaderText="No Persona" />
                    <asp:BoundField DataField="Nombre" HeaderText="Nombre" />
                    <asp:BoundField DataField="ApellidoPaterno" HeaderText="Apellido Paterno" />
                    <asp:BoundField DataField="ApellidoMaterno" HeaderText="Apellido Materno" />
                    <asp:BoundField DataField="Edad" HeaderText="Edad" />
                    <asp:BoundField DataField="Calle" HeaderText="Calle" />
                    <asp:BoundField DataField="Colonia" HeaderText="Colonia" />
                    <asp:BoundField DataField="Numero" HeaderText="Numero" />
                    <asp:BoundField DataField="Nombre_Seguro" HeaderText="Seguro Social" />
                    <asp:BoundField DataField="Num_Seguro" HeaderText=" N° Seguro Social" />
                </Columns>
            </asp:GridView>
            </div>
            <div class="form-group">
                <label>Persona</label>
                <asp:TextBox ID="txtPersona" class="form-control" placeholder="Persona" runat="server"></asp:TextBox>
            </div>
            <div class="form-group">
                <label>Tipo de Telefono</label>
                <asp:TextBox ID="txtTipoTelefono" class="form-control" placeholder="Tipo de Telefono" runat="server"></asp:TextBox>
            </div>
            <div class="form-group">
                <label>Numero</label>
                <asp:TextBox ID="txtNumero" class="form-control" placeholder="Numero" runat="server"></asp:TextBox>
            </div>
            <asp:Button ID="btnInsertarTelefono" class="btn btn-primary" runat="server" Text="Insertar" OnClick="btnInsertarTelefono_Click" />
        </div>
    </div>
  
    <div id="section1" class="container-fluid">    
        <script src="../JS/Funciones.js"></script>            
        <div class="container">                    
	        <div class="page-header">
               <h1>Insertar <small>Imagenes</small></h1>
            </div>
            <div class="form-group">
                <asp:FileUpload id="BuscarImagen" runat="server" onchange="VerImagenPrevia(this)" />
                <br />
                <center><img id="img" width="250" height="250" style="border-radius:143px 143px 143px 0px;" /></center>
                <br />
                <br />
            </div>
            <div class="form-group">
                <label>Tipo: </label>
                <asp:TextBox ID="txtTipoImagen" class="form-control" runat="server"></asp:TextBox>
                </div>
            <asp:Button ID="btnInsertarImagen" class="btn btn-primary" runat="server" Text="Insertar" OnClick="btnInsertarImagen_Click" />
            <br />
            <br />
        </div>
    </div>       

<!--
<div id="section42" class="container-fluid">
  <h1>Section 4 Submenu 2</h1>
  <p>Try to scroll this section and look at the navigation bar while scrolling! Try to scroll this section and look at the navigation bar while scrolling!</p>
  <p>Try to scroll this section and look at the navigation bar while scrolling! Try to scroll this section and look at the navigation bar while scrolling!</p>
</div>-->
</asp:Content>