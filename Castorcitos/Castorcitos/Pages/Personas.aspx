<%@ Page Language="C#" MasterPageFile="~/Pages/FormatoAdmin.Master" AutoEventWireup="true" CodeBehind="Personas.aspx.cs" Inherits="Castorcitos.Pages.Personas" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
   
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server" >
    <br />
    <br />
    <div class="container">
	    <div class="page-header">
           <h1>Insertar <small>Personas</small></h1>
        </div>

        <form>
            <div class="form-group">
                <label>Nombre</label>
                <asp:TextBox ID="txtNombre" class="form-control" placeholder="Nombre" runat="server"></asp:TextBox>
            </div>
            <div class="form-group">
                <label>Apellido Paterno</label>
                <asp:TextBox ID="txtApellidoPaterno" class="form-control" placeholder="Apellido Paterno" runat="server"></asp:TextBox>
            </div>
            <div class="form-group">
                <label>Apellido Materno</label>
                <asp:TextBox ID="txtApellidoMaterno" class="form-control" placeholder="Apellido Materno" runat="server"></asp:TextBox>
            </div>
            <div class="form-group">
                <label>Edad</label>
                <asp:TextBox ID="txtEdad" class="form-control" placeholder="Edad" runat="server"></asp:TextBox>
            </div>
            <div class="form-group">
                <label>Sexo</label>
             
                 <br />
                 <label>Masculino</label><asp:CheckBox ID="chkMasculino" runat="server" />  &nbsp;&nbsp;  <label>Femenino</label><asp:CheckBox ID="chkFemenino" runat="server" />
            </div>
            <div class="form-group">
                <label> Seleccionar Domicilio</label>
                <asp:GridView ID="gvMostrarDomicilio" class="well table table-bordered table-hover table-striped Gridview" runat="server" AutoGenerateColumns="false" AutoGenerateSelectButton="true"   OnSelectedIndexChanged="gvMostrarDomicilio_SelectedIndexChanged">
                <Columns>
                    <asp:BoundField DataField="Id_Domicilio" HeaderText="No Domicilio" />
                    <asp:BoundField DataField="Calle" HeaderText="Calle" />
                    <asp:BoundField DataField="Colonia" HeaderText="Colonia" />
                    <asp:BoundField DataField="CodigoPostal" HeaderText="Codigo Postal" />
                    <asp:BoundField DataField="Municipio" HeaderText="Municipio" />
                </Columns>
            </asp:GridView>
            </div>
             <div class="form-group">
                <label>Domicilio</label>
                <asp:TextBox ID="txtDomicilio" class="form-control" placeholder="Domicilio" runat="server"></asp:TextBox>
            </div>
            <div class="form-group">
                 <label> Seleccionar Seguro</label>
                <asp:GridView ID="gvMostrarSeguro" class="well table table-bordered table-hover table-striped Gridview" runat="server" AutoGenerateColumns="false" AutoGenerateSelectButton="true"   OnSelectedIndexChanged="gvMostrarSeguro_SelectedIndexChanged">
                <Columns>
                    <asp:BoundField DataField="Id_Seguro" HeaderText="No Seguro" />
                    <asp:BoundField DataField="Num_Seguro" HeaderText="Numero Seguro Social" />
                    <asp:BoundField DataField="Nombre_Seguro" HeaderText="Nombre del Seguro" />
                </Columns>
            </asp:GridView>
            </div>         
            <div class="form-group">
                <label>Seguro</label>
                <asp:TextBox ID="txtSeguro" class="form-control" placeholder="Seguro" runat="server"></asp:TextBox>
            </div>
            <asp:Button ID="btnInsertarPersona" class="btn btn-primary" runat="server" Text="Insertar" OnClick="btnInsertarPersona_Click" />
        </form>    
    </div>
</asp:Content>