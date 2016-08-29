<%@ Page Language="C#" MasterPageFile="~/Pages/FormatoAdmin.Master" AutoEventWireup="true" CodeBehind="Consultar.aspx.cs" Inherits="Castorcitos.Pages.Consultar" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
   <link type="text/css" rel="stylesheet" href="../CSS/EstiloGenerales.css" />
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server" >
    <div id="sectionC1" class="container-fluid">
        <script src="../JS/Funciones.js"></script>
        <div class="container">
	        <div class="page-header">
               <h1>Consultar <br /><small>Trabajador</small></h1>
            </div>
            <br />           
            <asp:GridView ID="GvMostrarTrabajadores" class="well table table-bordered table-hover table-striped Gridview" runat="server" AutoGenerateColumns="false">
                <Columns>
                    <asp:BoundField DataField="Id_Tabajador" HeaderText="Id Trabajador" />
                    <asp:BoundField DataField="IdPersonas" HeaderText="Id Persona"/>
                    <asp:BoundField DataField="Dpto_Laboral" HeaderText="Departamento"/>                    
                    <asp:BoundField DataField="No_Trabajador" HeaderText="Matricula"/>                                                          
                    <asp:BoundField DataField="Conyugue" HeaderText="Nombre Conyugue"/>                                                          
                </Columns>
            </asp:GridView>
            <asp:Button ID="btnMostrarTrabajadores" class="btn btn-primary" runat="server" Text="Mostrar" />
        </div>
    </div>

    <div id="sectionC2" class="container-fluid">
        <div class="container"> 
            <div class="page-header">
                <h1>Consultar<br /><small>Hijos</small></h1>
            </div>
            <br />
            <asp:GridView ID="GvMostrarHijos" CssClass="Gridview" runat="server" AutoGenerateColumns="false" > 
                <Columns>
                    <asp:BoundField DataField="IdPersona" HeaderText="Id Persona" />
                    <asp:BoundField DataField="CURP" HeaderText="CURP"/>
                    <asp:BoundField DataField="Peso" HeaderText="Peso"/>                    
                    <asp:BoundField DataField="Estatura" HeaderText="Estatura"/>                                                          
                    <asp:BoundField DataField="Talla" HeaderText="Talla"/>                                                          
                </Columns>
            </asp:GridView>
            <asp:Button ID="btnMostrarHijos" class="btn btn-primary" runat="server" Text="Mostrar" />
        </div>
    </div>

    <div id="sectionC3" class="container-fluid">
        <div class="container"> 
            <div class="page-header">
                <h1>Consultar<br /><small>Responsables</small></h1>
            </div>
            <br />
            <asp:GridView ID="gvMostrarPersona" CssClass="Gridview" runat="server" AutoGenerateColumns="false" AutoGenerateSelectButton="true">
                <Columns>
                    <asp:BoundField DataField="IdPersonas" HeaderText="Id Persona" />
                    <asp:BoundField DataField="Nombre" HeaderText="Nombre"/>
                    <asp:BoundField DataField="ApellidoPaterno" HeaderText="Apellido Paterno"/>
                    <asp:BoundField DataField="ApellidoMaterno" HeaderText="Apellido Materno"/>
                </Columns>
            </asp:GridView>
            <asp:Button ID="btnMostrarResponsables" class="btn btn-primary" runat="server" Text="Mostrar" />
        </div>
    </div>

</asp:Content>