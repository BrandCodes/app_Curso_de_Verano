<%@ Page Language="C#" MasterPageFile="~/Pages/FormatoAdmin.Master" AutoEventWireup="true" CodeBehind="Hijos.aspx.cs" Inherits="Castorcitos.Pages.Hijos" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
   
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server" >
    <div class="container">
        <br />
        <div class="page-header">
           <h1>Insertar <small>Hijos</small></h1>
        </div>

        <form>
            <div class="form-group">
            <label> Seleccionar Hijo: </label>
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
        <asp:Button ID="btnInsertarHijo" class="btn btn-primary" runat="server" Text="Insertar" OnClick="btnInsertarHijo_Click" />
        <br />
        <br />
        </form>
    </div>
</asp:Content>