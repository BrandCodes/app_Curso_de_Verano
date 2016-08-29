<%@ Page Language="C#" MasterPageFile="~/Pages/FormatoAdmin.Master" AutoEventWireup="true" CodeBehind="Modificar_Telefono.aspx.cs" Inherits="Castorcitos.Pages.Modificar_Telefono" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">    
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <br />
        <div class="page-header">
            <h1>Modificar <small>Teléfono</small></h1>
        </div>

        <form>
            <div class="form-group">
                <label> Seleccionar Teléfono</label>
                <asp:GridView ID="GvMostrarTelefono" Class="well table table-bordered table-hover table-striped Gridview" runat="server" AutoGenerateColumns="false" AutoGenerateSelectButton="true" OnSelectedIndexChanged="GvMostrarTelefono_SelectedIndexChanged" > 
                <Columns>
                    <asp:BoundField DataField="Id_Telefono" HeaderText="Id Telefono" />
                    <asp:BoundField DataField="IdPersonas" HeaderText="Id Persona"/>
                    <asp:BoundField DataField="TipoTelefono" HeaderText="Tipo Telefono"/>                    
                    <asp:BoundField DataField="Numero" HeaderText="Número"/>                                                          
                </Columns>
                </asp:GridView>
            </div>
            <br />
            <h3>Datos a Modificar</h3>
            <br />
            <div class="form-group">
                <label>Id Teléfono</label>
                <asp:TextBox ID="txtIdTelefono" class="form-control" placeholder="Id Teléfono" runat="server" ReadOnly="true"></asp:TextBox>
            </div>
            <div class="form-group">
                <label>Persona</label>
                <asp:TextBox ID="txtIdPersona" class="form-control" placeholder=" Id Persona" runat="server" ReadOnly="true"></asp:TextBox>
            </div>
            <div class="form-group">
                <label>Tipo de Teléfono</label>
                <asp:TextBox ID="txtTipoTelefono" class="form-control" placeholder="Tipo de Teléfono" runat="server"></asp:TextBox>
            </div>
            <div class="form-group">
                <label>Número</label>
                <asp:TextBox ID="txtNumero" class="form-control" placeholder="Número" runat="server"></asp:TextBox>
            </div>    
                       
            <asp:Button ID="btnModificarTelefono" class="btn btn-primary" runat="server" Text="Modificar" OnClick="btnModificarTelefono_Click" />
            <br />
            <br />
        </form>  
    </div>
</asp:Content>