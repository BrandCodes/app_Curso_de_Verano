<%@ Page Language="C#" MasterPageFile="~/Pages/FormatoAdmin.Master" AutoEventWireup="true" CodeBehind="Modificar_Responsables.aspx.cs" Inherits="Castorcitos.Pages.Modificar_Responsables" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">    
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <br />
        <div class="page-header">
            <h1>Modificar <small>Responsable</small></h1>
        </div>

        <form>
            <asp:GridView ID="GvMostrarResponsable" Class="well table table-bordered table-hover table-striped Gridview" runat="server" AutoGenerateColumns="false" AutoGenerateSelectButton="true" OnSelectedIndexChanged="GvMostrarTrabajadores_SelectedIndexChanged"> 
                <Columns>
                    <asp:BoundField DataField="IdPersonas" HeaderText="ID Personas" />
                    <asp:BoundField DataField="Nombre" HeaderText="Nombre" />
                    <asp:BoundField DataField="ApellidoPaterno" HeaderText="Apeliido Paterno" />
                    <asp:BoundField DataField="ApellidoMaterno" HeaderText="Apellido Materno" />
                    <asp:BoundField DataField="Edad" HeaderText="Edad" />

                    <asp:BoundField DataField="IdResponsable" HeaderText="Id Responsable" />
                    <asp:BoundField DataField="IdPersona" HeaderText="Id Persona"/>
                    <asp:BoundField DataField="Parentesco" HeaderText="Parentesco"/>                                                                                                
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
                <label>Id Responsable</label>
                <asp:TextBox ID="txtIdResponsable" class="form-control" placeholder="ID Responsable" runat="server" ReadOnly="true"></asp:TextBox>
            </div> 
            <div class="form-group">
                <label>Id Persona</label>
                <asp:TextBox ID="txtIdPer" class="form-control" placeholder="ID Persona" runat="server" ReadOnly="true"></asp:TextBox>
            </div> 
            <div class="form-group">
                <label>Parentesco</label>
                <asp:TextBox ID="txtParentesco" class="form-control" placeholder="Parentesco" runat="server"></asp:TextBox>
            </div>   
            <br />             
            <asp:Button ID="btnModificarResponsable" class="btn btn-primary" runat="server" Text="Modificar" OnClick="btnModificarResponsable_Click" />
            <br />   
            <br />
        </form>
    </div>
</asp:Content>
