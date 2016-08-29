<%@ Page Language="C#" MasterPageFile="~/Pages/FormatoAdmin.Master" AutoEventWireup="true" CodeBehind="Trabajadores.aspx.cs" Inherits="Castorcitos.Pages.Trabajadores" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">    
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <br />
        <div class="page-header">
            <h1>Modificar <small>Trabajador</small></h1>
        </div>

        <form>
            <asp:GridView ID="GvMostrarTrabajadores" Class="well table table-bordered table-hover table-striped Gridview" runat="server" AutoGenerateColumns="false" AutoGenerateSelectButton="true" OnSelectedIndexChanged="GvMostrarTrabajadores_SelectedIndexChanged" > 
                <Columns>
                    <asp:BoundField DataField="IdPersonas" HeaderText="ID Personas" />
                    <asp:BoundField DataField="Nombre" HeaderText="Nombre" />
                    <asp:BoundField DataField="ApellidoPaterno" HeaderText="Apeliido Paterno" />
                    <asp:BoundField DataField="ApellidoMaterno" HeaderText="Apellido Materno" />
                    <asp:BoundField DataField="Edad" HeaderText="Edad" />

                    <asp:BoundField DataField="Id_Tabajador" HeaderText="Id Trabajador" />
                    <asp:BoundField DataField="IdPersonas" HeaderText="Id Persona"/>
                    <asp:BoundField DataField="Dpto_Laboral" HeaderText="Departamento"/>                    
                    <asp:BoundField DataField="No_Trabajador" HeaderText="Matrícula"/>                                                          
                    <asp:BoundField DataField="Conyugue" HeaderText="Nombre Conyugue"/>                                                          
                </Columns>
            </asp:GridView>
            <br />
            <h3>Datos a Modificar</h3>
            <br />
            <div class="form-group">
                <label>Id Persona</label>
                <asp:TextBox ID="txtIdPer" class="form-control" placeholder="ID  Persona" runat="server" ReadOnly="true"></asp:TextBox>
            </div>
            <div class="form-group">
                <label>Nombre(s)</label>
                <asp:TextBox ID="txtNombrePer" class="form-control" placeholder="Nombre(s)" runat="server"></asp:TextBox>
            </div>
            <div class="form-group">
                <label>Apellido Paterno</label>
                <asp:TextBox ID="txtApPaterno" class="form-control" placeholder="Apellido Paterno" runat="server"></asp:TextBox>
            </div>
            <div class="form-group">
                <label>Apellido Materno</label>
                <asp:TextBox ID="txtApMaterno" class="form-control" placeholder="Apellido Materno" runat="server"></asp:TextBox>
            </div>
            <div class="form-group">
                <label>Edad</label>
                <asp:TextBox ID="txtEdad" class="form-control" placeholder="Edad" runat="server"></asp:TextBox>
            </div>

            <div class="form-group">
                <label>Id Trabajador</label>
                <asp:TextBox ID="txtIdTrabajador" class="form-control" placeholder="ID Trabajador" runat="server" ReadOnly="true"></asp:TextBox>
            </div>
            <div class="form-group">
                <label>Id Persona</label>
                <asp:TextBox ID="txtIdPersona" class="form-control" placeholder="ID Persona" runat="server" ReadOnly="true"></asp:TextBox>
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
            <br />
            <asp:Button ID="btnModificarTrabajadores" class="btn btn-primary" runat="server" Text="Modificar" OnClick="btnModificarTrabajadores_Click" />
            <br />
        </form>
    </div>
</asp:Content>