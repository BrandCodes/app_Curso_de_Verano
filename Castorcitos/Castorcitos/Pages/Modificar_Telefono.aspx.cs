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
    public partial class Modificar_Telefono : System.Web.UI.Page
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
                Telefono();
            }
        }

        protected void Telefono()        {
            SqlCommand CMD = new SqlCommand("Select * from Telefonos", LaConexion);
            SqlDataAdapter DA = new SqlDataAdapter(CMD);
            DataSet DS = new DataSet();
            DA.Fill(DS);
            LaConexion.Close();

            if (DS.Tables[0].Rows.Count > 0)            {
                GvMostrarTelefono.DataSource = DS;
                GvMostrarTelefono.DataBind();
            }
            else            {
                DS.Tables[0].Rows.Add(DS.Tables[0].NewRow());
                GvMostrarTelefono.DataSource = DS;
                GvMostrarTelefono.DataBind();
                int contarColumnas = GvMostrarTelefono.Rows[0].Cells.Count;
                GvMostrarTelefono.Rows[0].Cells.Clear();
                GvMostrarTelefono.Rows[0].Cells.Add(new TableCell());
                GvMostrarTelefono.Rows[0].Cells[0].ColumnSpan = contarColumnas;
                GvMostrarTelefono.Rows[0].Cells[0].Text = "No Records Found";
            }
        }

        protected void GvMostrarTelefono_SelectedIndexChanged(object sender, EventArgs e)        {            
            txtIdTelefono.Text = GvMostrarTelefono.SelectedRow.Cells[1].Text;
            txtIdPersona.Text = GvMostrarTelefono.SelectedRow.Cells[2].Text;
            txtTipoTelefono.Text = GvMostrarTelefono.SelectedRow.Cells[3].Text;
            txtNumero.Text = GvMostrarTelefono.SelectedRow.Cells[4].Text;
        }

        protected void btnModificarTelefono_Click(object sender, EventArgs e)        {
            if (txtTipoTelefono.Text == "" || txtNumero.Text == "")
                Vistas.VisualizaMensajeError("Te Faltan Campos");
            else            {
                Conexiones.ModificarBD(LaConexion, "update Telefonos set TipoTelefono=" + "'" + txtTipoTelefono.Text + "'" + ", Numero=" + "'" + txtNumero.Text + "'" + "where Id_Telefono=" + txtIdTelefono.Text + " and IdPersonas="+ txtIdPersona.Text, ref MensajeUniversal);
                Vistas.Cuadro_Dialogo(MensajeUniversal);
                txtIdTelefono.Text = "";
                txtIdPersona.Text = "";
                txtTipoTelefono.Text = "";
                txtNumero.Text = "";
                Response.Redirect("Modificar_Telefono.aspx");
            }
        }

        protected void btnRefrescar_Click(object sender, EventArgs e)        {
            Response.Redirect("Modificar_Telefono.aspx");
        }

    }//FIN CLASS
}//FIN NAME