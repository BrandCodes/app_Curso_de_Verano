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
    public partial class Trabajadores : System.Web.UI.Page
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
                Trabajador();
            }
        }

        protected void Trabajador()
        {
            SqlCommand CMD = new SqlCommand("select Per.IdPersonas, Per.Nombre, Per.ApellidoPaterno, Per.ApellidoMaterno, Per.Edad, Tra.Id_Tabajador, Tra.IdPersonas, Tra.Dpto_Laboral, Tra.No_Trabajador, Tra.Conyugue from Personas Per, Trabajadores Tra where Per.IdPersonas = Tra.IdPersonas;", LaConexion);
            SqlDataAdapter DA = new SqlDataAdapter(CMD);
            DataSet DS = new DataSet();
            DA.Fill(DS);
            LaConexion.Close();

            if (DS.Tables[0].Rows.Count > 0)            {
                GvMostrarTrabajadores.DataSource = DS;
                GvMostrarTrabajadores.DataBind();
            }
            else            {
                DS.Tables[0].Rows.Add(DS.Tables[0].NewRow());
                GvMostrarTrabajadores.DataSource = DS;
                GvMostrarTrabajadores.DataBind();
                int contarColumnas = GvMostrarTrabajadores.Rows[0].Cells.Count;
                GvMostrarTrabajadores.Rows[0].Cells.Clear();
                GvMostrarTrabajadores.Rows[0].Cells.Add(new TableCell());
                GvMostrarTrabajadores.Rows[0].Cells[0].ColumnSpan = contarColumnas;
                GvMostrarTrabajadores.Rows[0].Cells[0].Text = "No Records Found";
            }
        }

        protected void GvMostrarTrabajadores_SelectedIndexChanged(object sender, EventArgs e)        {            
            txtIdPer.Text = GvMostrarTrabajadores.SelectedRow.Cells[1].Text;
            txtNombrePer.Text = GvMostrarTrabajadores.SelectedRow.Cells[2].Text;
            txtApPaterno.Text = GvMostrarTrabajadores.SelectedRow.Cells[3].Text;
            txtApMaterno.Text = GvMostrarTrabajadores.SelectedRow.Cells[4].Text;
            txtEdad.Text = GvMostrarTrabajadores.SelectedRow.Cells[5].Text;
            txtIdTrabajador.Text = GvMostrarTrabajadores.SelectedRow.Cells[6].Text;
            txtIdPersona.Text = GvMostrarTrabajadores.SelectedRow.Cells[7].Text;
            txtDptoLaboral.Text = GvMostrarTrabajadores.SelectedRow.Cells[8].Text;
            txtMatricula.Text = GvMostrarTrabajadores.SelectedRow.Cells[9].Text;
            txtConyugue.Text = GvMostrarTrabajadores.SelectedRow.Cells[10].Text;
        }

        protected void btnModificarTrabajadores_Click(object sender, EventArgs e)        {
            if (txtNombrePer.Text == "" || txtApPaterno.Text == "" || txtApMaterno.Text == "" || txtEdad.Text == "" || txtDptoLaboral.Text == "" || txtMatricula.Text == "" || txtConyugue.Text == "")
                Vistas.VisualizaMensajeError("Te Faltan Campos");
            else            {                
                Conexiones.ModificarBD(LaConexion,"update Personas set Nombre=" + "'" + txtNombrePer.Text + "'" + ", ApellidoPaterno=" + "'" + txtApPaterno.Text + "'" + ", ApellidoMaterno=" + "'" + txtApMaterno.Text + "'" + ", Edad=" + txtEdad.Text + " where IdPersonas=" + txtIdPer.Text + "update Trabajadores set Dpto_Laboral= " + "'" + txtDptoLaboral.Text + "'" + ", No_Trabajador=" + "'" + txtMatricula.Text +"'" + ", Conyugue=" + "'" +txtConyugue.Text  + "'" + "where Id_Tabajador=" + txtIdTrabajador.Text + "and idPersonas=" + txtIdPersona.Text + " ;", ref MensajeUniversal);                
                Vistas.Cuadro_Dialogo(MensajeUniversal);
                txtIdPer.Text = "";
                txtNombrePer.Text = "";
                txtApPaterno.Text = "";
                txtApMaterno.Text = "";
                txtEdad.Text = "";
                txtIdTrabajador.Text = "";
                txtIdPersona.Text = "";
                txtDptoLaboral.Text = "";
                txtMatricula.Text = "";
                txtConyugue.Text = "";
                Response.Redirect("Trabajadores.aspx");
            }
        }

        protected void btnRefrescar_Click(object sender, EventArgs e)        {
            Response.Redirect("Trabajadores.aspx");
        }

    }//FIN CLASS
}//FIN NAME