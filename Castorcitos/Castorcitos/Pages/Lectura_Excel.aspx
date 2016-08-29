<%@ Page Language="C#" MasterPageFile="~/Pages/FormatoAdmin.Master" AutoEventWireup="true" CodeBehind="Lectura_Excel.aspx.cs" Inherits="Castorcitos.Pages.Lectura_Excel" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server" >
    <div class="container">
        <br />
        <div class="page-header">
           <h1>Lectura <small>Formato de Excel</small></h1>
        </div>

        <br />
        <asp:FileUpload ID="FUCarga" type="file" class="file" runat="server" />
        <br />
        <p>
            Al momento de dar 'click' en el botón de "Leer" automáticamente se <mark> mostrará y se cargará</mark> a la BD.
        </p>
        <br />
        <asp:Button ID="BtnPDF" class="btn btn-success" runat="server"  Text="Leer" OnClick="Button1_Click" />
        <br />
        <br />
        <asp:GridView ID="GridView1" class="well table table-bordered table-hover table-striped Gridview" runat="server"></asp:GridView>
        <br />
        
        <br />
        <br />
    </div>    
</asp:Content>