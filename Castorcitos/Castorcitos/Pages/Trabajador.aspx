<%@ Page Language="C#" MasterPageFile="~/Pages/FormatoAdmin.Master" AutoEventWireup="true" CodeBehind="Trabajador.aspx.cs" Inherits="Castorcitos.Pages.Trabajador" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
   
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server" >
    <br />
    <br />
    <div class="container">
	<div class="page-header">
       <h1>Insertar <small>Trabajadores</small></h1>
    </div>

    <form>
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
            <label>Departamento Laboral</label>
            <asp:TextBox ID="txtdptoLabora" class="form-control" placeholder="Departamento Laboral" runat="server"></asp:TextBox>
        </div>
         <div class="form-group">
            <label>No. Trabajador</label>
            <asp:TextBox ID="txtNotrabajador" class="form-control" placeholder="No. Trabajador" runat="server"></asp:TextBox>
        </div>
         <div class="form-group">
            <label>Conyugue</label>
            <asp:TextBox ID="txtConyugue" class="form-control" placeholder="Conyugue" runat="server"></asp:TextBox>
        </div>
        <asp:Button ID="btnInsertarTrabajador" class="btn btn-primary" runat="server" Text="Insertar" OnClick="btnInsertarTrabajador_Click" />
    </form>    

</div>
</asp:Content>