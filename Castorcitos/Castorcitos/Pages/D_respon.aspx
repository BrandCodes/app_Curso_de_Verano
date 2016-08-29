<%@ Page Language="C#"  MasterPageFile="~/Pages/FormatoAdmin.Master" AutoEventWireup="true" CodeBehind="D_respon.aspx.cs" Inherits="Castorcitos.Pages.D_respon" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">   
    <link type="text/css" rel="stylesheet" href="../CSS/EstiloGenerales.css" />
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server" >
    <form id="form1" runat="server">
    <div>
    
        <asp:Label ID="Label13" runat="server" Text="Datos Generales del Responsable"></asp:Label>
        <br />
        <asp:Label ID="Label3" runat="server" Text="Nombre"></asp:Label>
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        <br />
        <asp:Label ID="Label4" runat="server" Text="Apellido Paterno"></asp:Label>
        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
        <br />
        <asp:Label ID="Label5" runat="server" Text="Apellido Materno"></asp:Label>
        <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
        <br />
        <asp:Label ID="Label6" runat="server" Text="Edad"></asp:Label>
        <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
        <br />
        <asp:Label ID="Label12" runat="server" Text="Direccion de la persona Responsable"></asp:Label>
        <br />
        <asp:Label ID="Label7" runat="server" Text="Calle"></asp:Label>
        <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
        <br />
        <asp:Label ID="Label8" runat="server" Text="Colonia"></asp:Label>
        <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
        <br />
        <asp:Label ID="Label9" runat="server" Text="Codigo Postal"></asp:Label>
        <asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>
        <br />
        <asp:Label ID="Label10" runat="server" Text="Municipio"></asp:Label>
        <asp:TextBox ID="TextBox8" runat="server"></asp:TextBox>
        <br />
        <asp:Label ID="Label11" runat="server" Text="Parentesco"></asp:Label>
        <asp:TextBox ID="TextBox9" runat="server"></asp:TextBox>
        <br />
        <asp:Button ID="Button1" runat="server" Text="Guardar" OnClick="Button1_Click" />
    
    </div>
    </form>

</asp:Content>
