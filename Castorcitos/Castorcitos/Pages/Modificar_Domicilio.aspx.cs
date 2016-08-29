using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Castorcitos.Clases;
using System.Data;
using System.Data.SqlClient;

namespace Castorcitos.Pages
{
    public partial class Modificar_Domicilio : System.Web.UI.Page
    {
        clsPrincipal Conexiones = new clsPrincipal();
        clsMetodos Metodos = new clsMetodos();
        clsVistas Vistas = new clsVistas();
        SqlConnection LaConexion = new SqlConnection();
        String MensajeUniversal = "";
        protected void Page_Load(object sender, EventArgs e)        {
            Conexiones.CadenaDeConexion = @"Data Source='(local)'; Initial Catalog=Castorsitos; Integrated Security=SSPI;";
            LaConexion = Conexiones.ConexionEstablecida(ref MensajeUniversal);
            if (!IsPostBack)            {
                Domicilio();
            }
        }

        protected void Domicilio()
        {
            SqlCommand CMD = new SqlCommand("Select * from Direccion", LaConexion);
            SqlDataAdapter DA = new SqlDataAdapter(CMD);
            DataSet DS = new DataSet();
            DA.Fill(DS);
            LaConexion.Close();

            if (DS.Tables[0].Rows.Count > 0)            {
                gvMostrarDomicilio.DataSource = DS;
                gvMostrarDomicilio.DataBind();
            }
            else            {
                DS.Tables[0].Rows.Add(DS.Tables[0].NewRow());
                gvMostrarDomicilio.DataSource = DS;
                gvMostrarDomicilio.DataBind();
                int contarColumnas = gvMostrarDomicilio.Rows[0].Cells.Count;
                gvMostrarDomicilio.Rows[0].Cells.Clear();
                gvMostrarDomicilio.Rows[0].Cells.Add(new TableCell());
                gvMostrarDomicilio.Rows[0].Cells[0].ColumnSpan = contarColumnas;
                gvMostrarDomicilio.Rows[0].Cells[0].Text = "No Records Found";
            }
        }

        protected void gvMostrarDomicilio_SelectedIndexChanged(object sender, EventArgs e)        {
            txtIdDomicilio.Text = gvMostrarDomicilio.SelectedRow.Cells[1].Text;
            txtCalle.Text = gvMostrarDomicilio.SelectedRow.Cells[2].Text;
            txtColonia.Text = gvMostrarDomicilio.SelectedRow.Cells[3].Text;
            txtNumero.Text = gvMostrarDomicilio.SelectedRow.Cells[4].Text;
            txtCodigoPostal.Text = gvMostrarDomicilio.SelectedRow.Cells[5].Text;
            txtMunicipio.Text = gvMostrarDomicilio.SelectedRow.Cells[6].Text;
        }

        protected void btnModificarNumero_Click(object sender, EventArgs e)        {
            if (txtCalle.Text == "" || txtColonia.Text == "" || txtNumero.Text == "" || txtCodigoPostal.Text == "" || txtMunicipio.Text == "")
                Vistas.VisualizaMensajeError("Te Faltan Campos");
            else            {
                Conexiones.ModificarBD(LaConexion, "update Direccion set Calle=" + "'" + txtCalle.Text + "'" + ", Colonia=" + "'" + txtColonia.Text + "'" + ", Numero=" +  txtNumero.Text  + ", CodigoPostal=" + "'" + txtCodigoPostal.Text + "'" + ", Municipio=" + "'" + txtMunicipio.Text + "'" + "where Id_Domicilio=" + txtIdDomicilio.Text, ref MensajeUniversal);
                Vistas.Cuadro_Dialogo(MensajeUniversal);
                txtIdDomicilio.Text = "";
                txtCalle.Text = "";
                txtColonia.Text = "";
                txtNumero.Text = "";
                txtCodigoPostal.Text = "";
                txtMunicipio.Text = "";
                Response.Redirect("Modificar_Domicilio.aspx");
            }
        }

        protected void btnRefrescar_Click(object sender, EventArgs e)        {
            Response.Redirect("Modificar_Domicilio.aspx");
        }

    }//FIN CLASS
}//FIN NAME