using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Data;
using System.Data.SqlClient;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Castorcitos.Clases;

namespace Castorcitos.Pages
{
    public partial class pruebasSeguroInsertar : System.Web.UI.Page
    {
        clsPrincipal Conexiones = new clsPrincipal();
        clsMetodos Metodos = new clsMetodos();
        clsVistas Vistas = new clsVistas();
        SqlConnection LaConexion = new SqlConnection();
        String MensajeUniversal = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            Conexiones.CadenaDeConexion = @"Data Source='(local)'; Initial Catalog=Castorsitos; Integrated Security=SSPI;";
            LaConexion = Conexiones.ConexionEstablecida(ref MensajeUniversal);
        }

        protected void btnInsertarSeguroSocial_Click(object sender, EventArgs e)
        {

        }

        protected void btnInsertarDomicilio_Click(object sender, EventArgs e)
        {
            if (txtCalle.Text == "" || txtColonia.Text == "" || txtNumeroResiden.Text == "" || txtCodigoPostal.Text == "" || txtMunicipio.Text == "")
            {
                Vistas.VisualizaMensajeError("Te Faltan Campos");
            }
            else
            {
                Metodos.ExecuteNuevaDireccion(txtCalle.Text, txtColonia.Text, Convert.ToInt32(txtNumeroResiden.Text), txtCodigoPostal.Text, txtMunicipio.Text, ref MensajeUniversal);
                Vistas.Cuadro_Dialogo(MensajeUniversal);
                txtCalle.Text = null;
                txtColonia.Text = null;
                txtNumeroResiden = null;
                txtCodigoPostal.Text = null;
                txtMunicipio.Text = null;
            }
        }
    }
}