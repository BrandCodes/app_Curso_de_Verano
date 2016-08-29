<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Pages/FormatoAdmin.Master" CodeBehind="Responsable.aspx.cs" Inherits="Castorcitos.Pages.Responsable" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server" >
    <br />
    <br />
    <div class="container">
	    <div class="page-header">
           <h1>Insertar <small>Responsable</small></h1>
        </div>

        <form>
            <div class="form-group">
                <label>Persona</label>
                <asp:TextBox ID="txtPersona" class="form-control" placeholder="Persona" runat="server"></asp:TextBox>
            </div>
            <div class="form-group">
                <label>Parentesco</label>
                <asp:TextBox ID="txtParentesco" class="form-control" placeholder="Parentesco" runat="server"></asp:TextBox>
            </div>
            <asp:Button ID="btnInsertarReponsable" class="btn btn-primary" runat="server" Text="Insertar" />
        </form>    
    </div>
</asp:Content>