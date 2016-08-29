<%@ Page Language="C#" MasterPageFile="~/Pages/FormatoAdmin.Master" AutoEventWireup="true" CodeBehind="Modificar.aspx.cs" Inherits="Castorcitos.Pages.Modificar" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link type="text/css" rel="stylesheet" href="../CSS/EstiloGenerales.css" />
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server" >
    <div id="sectionM1" class="container-fluid">
        <script src="../JS/Funciones.js"></script>
        <div class="container">
	        <div class="page-header">
               <h1>Modificar <br /><small>Seguro Social</small></h1>
            </div>
            <br />
            <asp:GridView ID="gvMostrarSeguro" Class="well table table-bordered table-hover table-striped Gridview" runat="server" AutoGenerateColumns="false" AutoGenerateSelectButton="true" > 
                <Columns>
                    <asp:BoundField DataField="Id_Seguro" HeaderText="Id Seguro" />
                    <asp:BoundField DataField="Num_Seguro" HeaderText="Matricula Seguro"/>
                    <asp:BoundField DataField="Nombre_Seguro" HeaderText="Nombre Seguro"/>                    
                </Columns>
            </asp:GridView>
            
                <div class="form-group">
                    <label>Id Seguro</label>
                    <asp:TextBox ID="txtIdSeguro" class="form-control" placeholder="" runat="server"></asp:TextBox>
                </div>
                <div class="form-group">
                    <label>Número De Seguro</label>
                    <asp:TextBox ID="txtNumSeguro" class="form-control" placeholder="Numero de Seguro" runat="server"></asp:TextBox>
                </div>
                <div class="form-group">
                    <label>Nombre del Seguro</label>
                    <asp:TextBox ID="txtNombreSeguro" class="form-control" placeholder="Nombre del Seguro" runat="server"></asp:TextBox>
                </div>
                <asp:Button ID="btnModificarSeguroSocial" class="btn btn-primary" runat="server" Text="Modificar" />            
        </div>
    </div>

    <div id="sectionM2" class="container-fluid">
        <div class="container">
	        <div class="page-header">
               <h1>Modificar <br /><small>Domicilio</small></h1>
            </div>
            <br />
            <asp:GridView ID="GvMostrarDomicilio" Class="well table table-bordered table-hover table-striped Gridview" runat="server" AutoGenerateColumns="false" AutoGenerateSelectButton="true" > 
                <Columns>
                    <asp:BoundField DataField="Id_Domicilio" HeaderText="Id Domicilio" />
                    <asp:BoundField DataField="Calle" HeaderText="Calle"/>
                    <asp:BoundField DataField="Colonia" HeaderText="Colonia"/>                    
                    <asp:BoundField DataField="CodigoPostal" HeaderText="CodigoPostal"/>                    
                    <asp:BoundField DataField="Municipio" HeaderText="Municipio"/>                    
                </Columns>
            </asp:GridView>
            
                <div class="form-group">
                    <label>Id Domicilio</label>
                    <asp:TextBox ID="txtIdDomicilio" class="form-control" placeholder="" runat="server"></asp:TextBox>
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
                    <label>Código Postal</label>
                    <asp:TextBox ID="txtCodigoPostal" class="form-control" placeholder="Codigo Postal" runat="server"></asp:TextBox>
                </div>
                 <div class="form-group">
                    <label>Municipio</label>
                    <asp:TextBox ID="txtMunicipio" class="form-control" placeholder="Municipio" runat="server"></asp:TextBox>
                </div>         
                <asp:Button ID="btnModificarDomicilio" class="btn btn-primary" runat="server" Text="Modificar" />           
        </div>
    </div>

    <div id="sectionM3" class="container-fluid">
        <div class="container">
	        <div class="page-header">
                <h1>Modificar <br /><small>Teléfono</small></h1>
            </div>
            <br />
            <asp:GridView ID="GvMostrarTelefono" Class="well table table-bordered table-hover table-striped Gridview" runat="server" AutoGenerateColumns="false" AutoGenerateSelectButton="true" > 
                <Columns>
                    <asp:BoundField DataField="Id_Telefono" HeaderText="Id Telefono" />
                    <asp:BoundField DataField="IdPersona" HeaderText="Id Persona"/>
                    <asp:BoundField DataField="TipoTelefono" HeaderText="Tipo Telefono"/>                    
                    <asp:BoundField DataField="Numero" HeaderText="Numero"/>                                                          
                </Columns>
            </asp:GridView>
            
                <div class="form-group">
                    <label>Id Telefono</label>
                    <asp:TextBox ID="txtIdTelefono" class="form-control" placeholder="" runat="server"></asp:TextBox>
                </div>
                <div class="form-group">
                    <label>Persona</label>
                    <asp:TextBox ID="txtPersona" class="form-control" placeholder=" Id Persona" runat="server"></asp:TextBox>
                </div>
                <div class="form-group">
                    <label>Tipo de Teléfono</label>
                    <asp:TextBox ID="txtTipoTelefono" class="form-control" placeholder="Tipo de Telefono" runat="server"></asp:TextBox>
                </div>
                 <div class="form-group">
                    <label>Número</label>
                    <asp:TextBox ID="txtNumero" class="form-control" placeholder="Numero" runat="server"></asp:TextBox>
                </div>                  
                <asp:Button ID="btnModificarTelefono" class="btn btn-primary" runat="server" Text="Modificar" />             
        </div>
    </div>

    <div id="sectionM4" class="container-fluid">
        <div class="container">
            <div class="page-header">
                <h1>Modificar<br /><small>Trabajadores</small></h1>
            </div>
            <br />
            <asp:GridView ID="GvMostrarTrabajadores" Class="well table table-bordered table-hover table-striped Gridview" runat="server" AutoGenerateColumns="false" AutoGenerateSelectButton="true" > 
                <Columns>
                    <asp:BoundField DataField="Id_Tabajador" HeaderText="Id Trabajador" />
                    <asp:BoundField DataField="IdPersonas" HeaderText="Id Persona"/>
                    <asp:BoundField DataField="Dpto_Laboral" HeaderText="Departamento"/>                    
                    <asp:BoundField DataField="No_Trabajador" HeaderText="Matricula"/>                                                          
                    <asp:BoundField DataField="Conyugue" HeaderText="Nombre Conyugue"/>                                                          
                </Columns>
            </asp:GridView>
           
                <div class="form-group">
                    <label>Id Trabajador</label>
                    <asp:TextBox ID="txtIdTrabajador" class="form-control" placeholder="" runat="server"></asp:TextBox>
                </div>
                <div class="form-group">
                    <label>Id Persona</label>
                    <asp:TextBox ID="txtIdPersona" class="form-control" placeholder="" runat="server"></asp:TextBox>
                </div>
                <div class="form-group">
                    <label>Departamento Laboral</label>
                    <asp:TextBox ID="txtDptoLaboral" class="form-control" placeholder="Departamento Laboral" runat="server"></asp:TextBox>
                </div>
                <div class="form-group">
                    <label>Matrícula</label>
                    <asp:TextBox ID="txtMatricula" class="form-control" placeholder="Matricula" runat="server"></asp:TextBox>
                </div>
                <div class="form-group">
                    <label>Conyugue</label>
                    <asp:TextBox ID="txtConyugue" class="form-control" placeholder="Conyugue" runat="server"></asp:TextBox>
                </div>
                <asp:Button ID="btnModificarTrabajadores" class="btn btn-primary" runat="server" Text="Modificar" />            
        </div>
    </div>

    <div id="sectionM5" class="container-fluid">
        <div class="container"> 
            <div class="page-header">
                <h1>Modificar<br /><small>Hijos</small></h1>
            </div>
            <br />
            <asp:GridView ID="GvMostrarHijos" Class="well table table-bordered table-hover table-striped Gridview" runat="server" AutoGenerateColumns="false" AutoGenerateSelectButton="true" > 
                <Columns>
                    <asp:BoundField DataField="IdPersona" HeaderText="Id Persona" />
                    <asp:BoundField DataField="CURP" HeaderText="CURP"/>
                    <asp:BoundField DataField="Peso" HeaderText="Peso"/>                    
                    <asp:BoundField DataField="Estatura" HeaderText="Estatura"/>                                                          
                    <asp:BoundField DataField="Talla" HeaderText="Talla"/>                                                          
                </Columns>
            </asp:GridView>
            
                <div class="form-group">
                    <label>Id Persona</label>
                    <asp:TextBox ID="TextBox1" class="form-control" placeholder="" runat="server"></asp:TextBox>
                </div>
                <div class="form-group">
                    <label>CURP</label>
                    <asp:TextBox ID="txtCurp" class="form-control" placeholder="CURP" runat="server"></asp:TextBox>
                </div>
                <div class="form-group">
                    <label>Peso</label>
                    <asp:TextBox ID="txtPeso" class="form-control" placeholder="0.0 Kg" runat="server"></asp:TextBox>
                </div>
                <div class="form-group">
                    <label>Estatura</label>
                    <asp:TextBox ID="txtEstatura" class="form-control" placeholder="0.0 mts" runat="server"></asp:TextBox>
                </div>
                <div class="form-group">
                    <label>Talla</label>
                    <asp:TextBox ID="txtTalla" class="form-control" placeholder="Ch/Med/G" runat="server"></asp:TextBox>
                </div>
                <asp:Button ID="btnModificarHijo" class="btn btn-primary" runat="server" Text="Mostrar" />            
        </div>
    </div>

    <div id="sectionM6" class="container-fluid">
        <div class="container"> 
            <div class="page-header">
                <h1>Modificar<br /><small>Responsables</small></h1>
            </div>
            <br />
            <asp:GridView ID="gvMostrarPersona" Class="well table table-bordered table-hover table-striped Gridview" runat="server" AutoGenerateColumns="false" AutoGenerateSelectButton="true">
                <Columns>
                    <asp:BoundField DataField="IdPersonas" HeaderText="Id Persona" />
                    <asp:BoundField DataField="Nombre" HeaderText="Nombre"/>
                    <asp:BoundField DataField="ApellidoPaterno" HeaderText="Apellido Paterno"/>
                    <asp:BoundField DataField="ApellidoMaterno" HeaderText="Apellido Materno"/>
                </Columns>
            </asp:GridView>
            
                <div class="form-group">
                    <label>Id Persona</label>
                    <asp:TextBox ID="TextBox2" class="form-control" placeholder="" runat="server"></asp:TextBox>
                </div> 
                <div class="form-group">
                    <label>Parentesco</label>
                    <asp:TextBox ID="txtParentesco" class="form-control" placeholder="Parentesco" runat="server"></asp:TextBox>
                </div>                
                <asp:Button ID="btnModificarResponsable" class="btn btn-primary" runat="server" Text="Modificar" />
                <br />                            
        </div>
    </div>
</asp:Content>
