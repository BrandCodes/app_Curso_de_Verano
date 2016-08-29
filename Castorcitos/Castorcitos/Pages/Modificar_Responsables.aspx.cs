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
    public partial class Modificar_Responsables : System.Web.UI.Page
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
                Responsable();
            }
        }

        protected void Responsable()
        {
            SqlCommand CMD = new SqlCommand("select Per.IdPersonas, Per.Nombre, Per.ApellidoPaterno, Per.ApellidoMaterno, Per.Edad, Res.IdResponsable,Res.IdPersona,Res.Parentesco from Personas Per, Responsables Res where Per.IdPersonas = Res.IdPersona;", LaConexion);
            SqlDataAdapter DA = new SqlDataAdapter(CMD);
            DataSet DS = new DataSet();
            DA.Fill(DS);
            LaConexion.Close();

            if (DS.Tables[0].Rows.Count > 0)            {
                GvMostrarResponsable.DataSource = DS;
                GvMostrarResponsable.DataBind();
            }
            else            {
                DS.Tables[0].Rows.Add(DS.Tables[0].NewRow());
                GvMostrarResponsable.DataSource = DS;
                GvMostrarResponsable.DataBind();
                int contarColumnas = GvMostrarResponsable.Rows[0].Cells.Count;
                GvMostrarResponsable.Rows[0].Cells.Clear();
                GvMostrarResponsable.Rows[0].Cells.Add(new TableCell());
                GvMostrarResponsable.Rows[0].Cells[0].ColumnSpan = contarColumnas;
                GvMostrarResponsable.Rows[0].Cells[0].Text = "No Records Found";
            }
        }

        protected void GvMostrarTrabajadores_SelectedIndexChanged(object sender, EventArgs e)        {
            txtIdPer.Text = GvMostrarResponsable.SelectedRow.Cells[1].Text;
            txtNombrePer.Text = GvMostrarResponsable.SelectedRow.Cells[2].Text;
            txtApPaterno.Text = GvMostrarResponsable.SelectedRow.Cells[3].Text;
            txtApMaterno.Text = GvMostrarResponsable.SelectedRow.Cells[4].Text;
            txtEdad.Text = GvMostrarResponsable.SelectedRow.Cells[5].Text;
            txtIdResponsable.Text = GvMostrarResponsable.SelectedRow.Cells[6].Text;
            txtIdPer.Text = GvMostrarResponsable.SelectedRow.Cells[7].Text;
            txtParentesco.Text = GvMostrarResponsable.SelectedRow.Cells[8].Text;
        }

        protected void btnModificarResponsable_Click(object sender, EventArgs e)        {
            if (txtNombrePer.Text == "" || txtApPaterno.Text == "" || txtApMaterno.Text == "" || txtEdad.Text == "" || txtIdResponsable.Text == "" || txtIdPer.Text == "" || txtParentesco.Text == "")
                Vistas.VisualizaMensajeError("Te Faltan Campos");
            else            {
                                                 
                Conexiones.ModificarBD(LaConexion, "update Personas set Nombre=" + "'" + txtNombrePer.Text + "'" + ", ApellidoPaterno=" + "'" + txtApPaterno.Text + "'" + ", ApellidoMaterno=" + "'" + txtApMaterno.Text + "'" + ", Edad=" + txtEdad.Text + " where IdPersonas=" + txtIdPersona.Text + "update Responsables set Parentesco= " + "'" + txtParentesco.Text + "'" + "where IdResponsable=" + txtIdResponsable.Text + "and IdPersonas=" + txtIdPer.Text + " ;", ref MensajeUniversal);
                Vistas.Cuadro_Dialogo(MensajeUniversal);
                txtIdPersona.Text = "";
                txtNombrePer.Text = "";
                txtApPaterno.Text = "";
                txtApMaterno.Text = "";
                txtEdad.Text = "";
                txtIdResponsable.Text = "";
                txtIdPer.Text = "";
                txtParentesco.Text = "";                
                Response.Redirect("Modificar_Responsables.aspx");
            }
        }

        protected void btnRefrescar_Click(object sender, EventArgs e)        {
            Response.Redirect("Modificar_Responsables.aspx");
        }

    }//FIN CLASS
}//FIN NAME