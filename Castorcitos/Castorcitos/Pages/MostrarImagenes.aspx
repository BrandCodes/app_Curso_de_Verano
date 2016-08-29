<%@ Page Language="C#" MasterPageFile="~/Pages/FormatoAdmin.Master" AutoEventWireup="true" CodeBehind="MostrarImagenes.aspx.cs" Inherits="Castorcitos.Pages.MostrarImagenes" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server" >
    <br />
    <br />
    <div class="container">
        <div class="page-header">
           <h1>Imagen <small>Persona</small></h1>
        </div>

        <form class="form-inline" role="form">
            <div class="form-group">
                <br />
                <center><label>Nombre Persona: </label></center>
                <center><asp:TextBox ID="txtNomPersona" runat="server"></asp:TextBox></center>
                <br />
                <center><img id="img" width="250" height="250" style="border-radius:143px 143px 143px 0px;" /></center>
            </div>
        </form>
        <br />
        <center><asp:Button ID="btnMostrar" class="btn btn-primary" runat="server" Text="Mostrar" OnClick="btnMostrarImagen_Click" /></center>
        <br />
        <br />
    </div>        
</asp:Content>