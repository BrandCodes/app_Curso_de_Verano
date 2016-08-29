<%@ Page Language="C#" MasterPageFile="~/Pages/FormatoAdmin.Master" AutoEventWireup="true" CodeBehind="Eliminar.aspx.cs" Inherits="Castorcitos.Pages.Eliminar" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">   
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server" >
    <div id="sectionE1" class="container-fluid">
        <div class="container"> 
            <div class="page-header">
                <br />
                <h1>Eliminar<br /><small>Persona</small></h1>
            </div>
            <br />
            <form>
                <div class="form-group">
                    <label>Nombre Persona </label>
                    <center><asp:TextBox ID="txtNomPersona" class="form-control" placeholder="Nombre(s)" runat="server"></asp:TextBox></center>
                    <center><asp:TextBox ID="txtApePaterno" class="form-control" placeholder="Apellido Paterno" runat="server"></asp:TextBox></center>
                    <center><asp:TextBox ID="txtApeMaterno" class="form-control" placeholder="Apellido Materno" runat="server"></asp:TextBox></center>
                    <br />
                    <center><asp:Button ID="btnBuscarPer" class="btn btn-primary" runat="server" Text="Buscar" OnClick="btnBuscarPer_Click" /></center>
                    <br />
                </div>
            </form>
            <asp:GridView ID="GvMostrarPersona" Class="well table table-bordered table-hover table-striped Gridview" runat="server" AutoGenerateColumns="false" AutoGenerateSelectButton="true" OnSelectedIndexChanged="GvMostrarPersona_SelectedIndexChanged"> 
                <Columns>
                    <asp:BoundField DataField="IdPersonas" HeaderText="ID Personas" />
                    <asp:BoundField DataField="Nombre" HeaderText="Nombre" />
                    <asp:BoundField DataField="ApellidoPaterno" HeaderText="Apeliido Paterno" />
                    <asp:BoundField DataField="ApellidoMaterno" HeaderText="Apellido Materno" />
                    <asp:BoundField DataField="Edad" HeaderText="Edad" />
                    <asp:BoundField DataField="Sexo" HeaderText="Sexo" />

                    <asp:BoundField DataField="Id_Domicilio" HeaderText="Sexo" />
                    <asp:BoundField DataField="Id_Seguro" HeaderText="Sexo" />
                </Columns>
            </asp:GridView>
            <center><asp:TextBox ID="txtIDPersona" class="form-control" placeholder="ID Persona" runat="server"></asp:TextBox></center>
            <br />
            <asp:Button ID="btnEliminarPer" class="btn btn-primary" runat="server" Text="Eliminar" OnClick="btnEliminarPer_Click" />
            <br />
        </div>
    </div>
</asp:Content>
