<%@ Page Language="C#" MasterPageFile="~/Pages/FormatoAdmin.Master" AutoEventWireup="true" CodeBehind="Modificar_Hijos.aspx.cs" Inherits="Castorcitos.Pages.Modificar_Hijos" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">    
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <br />
        <div class="page-header">
            <h1>Modificar <small>Hijo</small></h1>
        </div>

        <form>
            <asp:GridView ID="GvMostrarHijos" Class="well table table-bordered table-hover table-striped Gridview" runat="server" AutoGenerateColumns="false" AutoGenerateSelectButton="true" OnSelectedIndexChanged="GvMostrarHijos_SelectedIndexChanged"> 
                <Columns>
                    <asp:BoundField DataField="IdPersonas" HeaderText="ID Personas" />
                    <asp:BoundField DataField="Nombre" HeaderText="Nombre" />
                    <asp:BoundField DataField="ApellidoPaterno" HeaderText="Apeliido Paterno" />
                    <asp:BoundField DataField="ApellidoMaterno" HeaderText="Apellido Materno" />
                    <asp:BoundField DataField="Edad" HeaderText="Edad" />

                    <asp:BoundField DataField="id_hijo" HeaderText="Id Hijo" />
                    <asp:BoundField DataField="IdPersona" HeaderText="Id Persona" />
                    <asp:BoundField DataField="CURP" HeaderText="CURP"/>
                    <asp:BoundField DataField="Peso" HeaderText="Peso"/>                    
                    <asp:BoundField DataField="Estatura" HeaderText="Estatura"/>                                                          
                    <asp:BoundField DataField="Talla" HeaderText="Talla"/>                                                         
                </Columns>
            </asp:GridView>
             <br />
            <h3>Datos a Modificar</h3>
            <br />
            <div class="form-group">
                <label>Id Persona</label>
                <asp:TextBox ID="txtIdPersona" class="form-control" placeholder="ID  Persona" runat="server" ReadOnly="true"></asp:TextBox>
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
                <label>ID Hijo</label>
                <asp:TextBox ID="txtIdHijo" class="form-control" placeholder="ID Hijo" runat="server" ReadOnly="true"></asp:TextBox>
            </div>
            <div class="form-group">
                <label>Id Persona</label>
                <asp:TextBox ID="txtIdPer" class="form-control" placeholder="" runat="server" ReadOnly="true"></asp:TextBox>
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
            <br />
            <asp:Button ID="btnModificarHijo" class="btn btn-primary" runat="server" Text="Modificar" OnClick="btnModificarHijo_Click" />   
            <br />
        </form>
    </div>
</asp:Content>