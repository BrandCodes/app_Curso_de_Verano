<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Pages/FormatoAdmin.Master" CodeBehind="MotrarPersona.aspx.cs" Inherits="Castorcitos.Pages.MotrarPersona" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
   
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server" >
   <form id="form1" runat="server">
       <div class="container">
            <h2>Credenciales</h2>
            <form class="form-inline" role="form">
                <div class="form-group">
                        <br />
                        <label>Nombre(s): </label>
                        <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control"></asp:TextBox>                    
                        <br />
                        <asp:Button ID="btnGenerarCred" class="btn btn-primary" runat="server" Text="Generar Datos"/>
                        <br />
                </div>
           </form>
            <table class="table">
                <thead>                     
                    <td colspan="4">DATOS NIÑO(A)</td>
                </thead>
                <tbody>
                    <tr>
                        <td colspan="4"><center><img src=".jpg" class="img-circle"  width="140" height="140" style="border-radius:143px 143px 143px 0px;"/></center> </td>
                    </tr>
                    <tr>                    
                        <td colspan="3">Nombre: </td>
                        <td>CURP: </td>   
                    </tr>
                    <tr>
                        <td colspan="2">Domicilio: </td>
                        <td>Colonia: </td>
                        <td>Municipio: </td>
                    </tr>
                    <tr>
                        <td>Edad: </td>
                        <td>Peso: </td>
                        <td>Estatura: </td>
                        <td>Talla de camiseta: </td>
                    </tr>
                    <tr>
                        <td colspan="3">En caso de emergencia avisar a: </td>
                        <td>Parentesco: </td>
                    </tr>
                    <tr>
                        <td colspan="4">No. de Seguro social</td>
                    </tr>
                    <tr>
                        <td colspan="4">Padecimientos, Alergias u otros</td>
                    </tr>                             
                </tbody>
            </table>
            <hr />
            <hr />

            <table class="table">
                <thead>
                    <td colspan="4">DATOS DEL PADRE AFILIADO AL SINDICATO</td>
                </thead>
                <tbody>
                    <tr>
                        <!-- <td colspan="4"><center><img src=".jpg" class="img-circle"  width="140" height="140" style="border-radius:143px 143px 143px 0px;"/></center> </td>-->
                    </tr>
                    <tr>                    
                        <td colspan="4">Nombre: </td>                       
                    </tr>
                    <tr>
                        <td colspan="2">Domicilio: </td>
                        <td>Colonia: </td>
                        <td>Municipio: </td>
                    </tr>
                    <tr>
                        <td colspan="2">Teléfono(particular u oficina): </td>
                        <td colspan="2">Celular: </td>
                    </tr>
                    <tr>
                        <td colspan="2">Carrera/Departamento: </td>
                        <td colspan="2">No. de Trabajador: </td>
                    </tr>
                </tbody>
            </table>
            <hr />
            <hr />

            <table class="table">
                <thead>
                     <td colspan="4">DATOS DEL RESPONSABLE</td>
                </thead>
                <tbody>
                    <tr>
                       <!-- <td colspan="4"><center><img src=".jpg" class="img-circle"  width="140" height="140" style="border-radius:143px 143px 143px 0px;"/></center> </td>-->
                    </tr>                
                    <tr>
                        <td colspan="4">NOmbre: </td>
                    </tr>
                    <tr>
                        <td colspan="2">Domicilio: </td>
                        <td>Colonia: </td>
                        <td>Municipio: </td>
                    </tr>
                    <tr>
                        <td colspan="2">Teléfono(particular u oficina): </td>
                        <td>Celular: </td>
                        <td>Parentesco: </td>
                    </tr>
                </tbody>
            </table>
        </div>
    </form>
</asp:Content>