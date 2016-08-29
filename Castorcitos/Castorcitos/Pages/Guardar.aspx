<%@ Page Language="C#" MasterPageFile="~/Pages/FormatoAdmin.Master" AutoEventWireup="true" CodeBehind="Guardar.aspx.cs" Inherits="Castorcitos.Pages.Guardar" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">   
    <link type="text/css" rel="stylesheet" href="../CSS/EstiloGenerales.css" />
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server" >
    <form id="form1" runat="server">
    <div>    
        <asp:Label ID="Label3" runat="server" Text="Nombre(s)"></asp:Label>
        <br />
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        <br />
        <asp:Label ID="Label4" runat="server" Text="Apellido Paterno"></asp:Label>
        <br />
        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
        <br />
        <asp:Label ID="Label5" runat="server" Text="Apellido Materno"></asp:Label>
        <br />
        <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
        <br />
        <asp:Label ID="Label6" runat="server" Text="Edad"></asp:Label>
        <br />
        <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
        <br />
        <asp:Label ID="Label7" runat="server" Text="Numero de seguro social"></asp:Label>
        <br />
        <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
        <br />
        <asp:Label ID="Label8" runat="server" Text="Curp"></asp:Label>
        <br />
        <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
        <br />
        <asp:Label ID="Label9" runat="server" Text="Peso"></asp:Label>
        <br />
        <asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>
        <br />
        <asp:Label ID="Label10" runat="server" Text="Estatura"></asp:Label>
        <br />
        <asp:TextBox ID="TextBox8" runat="server"></asp:TextBox>
        <br />
        <br />
        <asp:Label ID="Label11" runat="server" Text="Talla De Camisa"></asp:Label>
        <asp:DropDownList ID="DropDownList1" runat="server">
            <asp:ListItem>CH</asp:ListItem>
            <asp:ListItem>M</asp:ListItem>
            <asp:ListItem>G</asp:ListItem>
        </asp:DropDownList>
        <br />          
        <asp:Label ID="Label2" runat="server" Text="Selecione su imagen"></asp:Label>                
        <asp:FileUpload ID="ImagenFile" runat="server" style="margin-top: 0px" />            
        <br />
        <asp:Label ID="Label12" runat="server" Text="Si su hijo(a) tiene algun padecmineto por favor mencionar el nombre del padeciminto"></asp:Label>
        <br />
        <asp:TextBox ID="TextBox10" runat="server" Width="140px"></asp:TextBox>
        <br />
        <asp:Label ID="Label13" runat="server" Text="Descrriba brevemente las medidas que se denen tomar  conforme al padacimiento"></asp:Label>
        <br />
        <asp:TextBox ID="TextBox9" runat="server" Height="41px" TextMode="MultiLine" Width="513px"></asp:TextBox>
        <br />
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Guardar" />        
    </div>
    </form>


</asp:Content>

