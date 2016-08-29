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
    public partial class Eliminar : System.Web.UI.Page
    {
        clsPrincipal Conexiones = new clsPrincipal();
        clsMetodos Metodos = new clsMetodos();
        clsVistas Vistas = new clsVistas();
        SqlConnection LaConexion = new SqlConnection();
        String MensajeUniversal = "";
        protected void Page_Load(object sender, EventArgs e)       {
            Conexiones.CadenaDeConexion = @"Data Source='(local)'; Initial Catalog=Castorsitos; Integrated Security=SSPI;";
            LaConexion = Conexiones.ConexionEstablecida(ref MensajeUniversal);            
        }

        protected void Trabajador()
        {   
            SqlCommand CMD = new SqlCommand("select * from Personas where Nombre=" + "'" + txtNomPersona.Text + "'" + "or ApellidoPaterno=" + "'" + txtApePaterno.Text + "'" + "or ApellidoMaterno=" + "'" + txtApeMaterno.Text + "'" + ";", LaConexion);
            SqlDataAdapter DA = new SqlDataAdapter(CMD);
            DataSet DS = new DataSet();
            DA.Fill(DS);
            LaConexion.Close();

            if (DS.Tables[0].Rows.Count > 0)            {
                GvMostrarPersona.DataSource = DS;
                GvMostrarPersona.DataBind();
            }
            else            {
                DS.Tables[0].Rows.Add(DS.Tables[0].NewRow());
                GvMostrarPersona.DataSource = DS;
                GvMostrarPersona.DataBind();
                int contarColumnas = GvMostrarPersona.Rows[0].Cells.Count;
                GvMostrarPersona.Rows[0].Cells.Clear();
                GvMostrarPersona.Rows[0].Cells.Add(new TableCell());
                GvMostrarPersona.Rows[0].Cells[0].ColumnSpan = contarColumnas;
                GvMostrarPersona.Rows[0].Cells[0].Text = "No Records Found";
            }
        }
        
        protected void btnEliminarPer_Click(object sender, EventArgs e)        {
            Conexiones.ModificarBD(LaConexion, "Delete Personas where IdPersonas=" + "'" + txtIDPersona.Text + "'" + " ;", ref MensajeUniversal);
            Vistas.Cuadro_Dialogo(MensajeUniversal);            
            txtNomPersona.Text = "";
            txtApePaterno.Text = "";
            txtApeMaterno.Text = "";
            Response.Redirect("Eliminar.aspx");
        }

        protected void GvMostrarPersona_SelectedIndexChanged(object sender, EventArgs e)        {
            Id_Per = Convert.ToInt32(GvMostrarPersona.SelectedRow.Cells[1].Text);

            txtNomPersona.Text = GvMostrarPersona.SelectedRow.Cells[2].Text;
            txtApePaterno.Text = GvMostrarPersona.SelectedRow.Cells[3].Text;
            txtApeMaterno.Text = GvMostrarPersona.SelectedRow.Cells[4].Text;
            txtIDPersona.Text = GvMostrarPersona.SelectedRow.Cells[1].Text;
        }

        protected void btnBuscarPer_Click(object sender, EventArgs e)        {            
            Trabajador();            
        }

    }//FIN CLASS
}// FIN NAME