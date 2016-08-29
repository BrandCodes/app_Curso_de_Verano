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
    public partial class Modificar_Hijos : System.Web.UI.Page
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
                Hijo();
            }
        }

        protected void Hijo()
        {
            SqlCommand CMD = new SqlCommand("select Per.IdPersonas, Per.Nombre, Per.ApellidoPaterno, Per.ApellidoMaterno, Per.Edad, Hi.id_hijo ,Hi.IdPersona, Hi.CURP, Hi.Peso, Hi.Estatura, Hi.Talla from Personas Per, Hijos Hi where Per.IdPersonas = Hi.IdPersona; ", LaConexion);
            SqlDataAdapter DA = new SqlDataAdapter(CMD);
            DataSet DS = new DataSet();
            DA.Fill(DS);
            LaConexion.Close();

            if (DS.Tables[0].Rows.Count > 0)            {
                GvMostrarHijos.DataSource = DS;
                GvMostrarHijos.DataBind();
            }
            else            {
                DS.Tables[0].Rows.Add(DS.Tables[0].NewRow());
                GvMostrarHijos.DataSource = DS;
                GvMostrarHijos.DataBind();
                int contarColumnas = GvMostrarHijos.Rows[0].Cells.Count;
                GvMostrarHijos.Rows[0].Cells.Clear();
                GvMostrarHijos.Rows[0].Cells.Add(new TableCell());
                GvMostrarHijos.Rows[0].Cells[0].ColumnSpan = contarColumnas;
                GvMostrarHijos.Rows[0].Cells[0].Text = "No Records Found";
            }
        }

        protected void GvMostrarHijos_SelectedIndexChanged(object sender, EventArgs e)        {
            txtIdPersona.Text = GvMostrarHijos.SelectedRow.Cells[1].Text;
            txtNombrePer.Text = GvMostrarHijos.SelectedRow.Cells[2].Text;
            txtApPaterno.Text = GvMostrarHijos.SelectedRow.Cells[3].Text;
            txtApMaterno.Text = GvMostrarHijos.SelectedRow.Cells[4].Text;
            txtEdad.Text = GvMostrarHijos.SelectedRow.Cells[5].Text;
            txtIdHijo.Text = GvMostrarHijos.SelectedRow.Cells[6].Text;
            txtIdPer.Text = GvMostrarHijos.SelectedRow.Cells[7].Text;
            txtCurp.Text = GvMostrarHijos.SelectedRow.Cells[8].Text;
            txtPeso.Text = GvMostrarHijos.SelectedRow.Cells[9].Text;
            txtEstatura.Text = GvMostrarHijos.SelectedRow.Cells[10].Text;
            txtTalla.Text = GvMostrarHijos.SelectedRow.Cells[11].Text;
        }

        protected void btnModificarHijo_Click(object sender, EventArgs e)        {
            if (txtNombrePer.Text == "" || txtApPaterno.Text == "" || txtApMaterno.Text == "" || txtEdad.Text == "" || txtCurp.Text == "" || txtPeso.Text == "" || txtEstatura.Text == "" || txtTalla.Text == "")
                Vistas.VisualizaMensajeError("Te Faltan Campos");
            else            {
                Conexiones.ModificarBD(LaConexion, "update Personas set Nombre=" + "'" + txtNombrePer.Text + "'" + ", ApellidoPaterno=" + "'" + txtApPaterno.Text + "'" + ", ApellidoMaterno=" + "'" + txtApMaterno.Text + "'" + ", Edad=" + txtEdad.Text + " where IdPersonas=" + txtIdPersona.Text + "update Hijos set CURP= " + "'" + txtCurp.Text + "'" + ", Peso=" + "'" + txtPeso.Text + "'" + ", Estatura=" + "'" + txtEstatura.Text + "'" + ", Talla=" + "'" + txtTalla.Text + "'"  + "where id_hijo=" + txtIdHijo.Text + "and IdPersona=" + txtIdPer.Text + " ;", ref MensajeUniversal);
                Vistas.Cuadro_Dialogo(MensajeUniversal);
                txtIdPersona.Text = "";
                txtNombrePer.Text = "";
                txtApPaterno.Text = "";
                txtApMaterno.Text = "";
                txtEdad.Text = "";
                txtIdHijo.Text = "";
                txtIdPer.Text = "";
                txtCurp.Text = "";
                txtPeso.Text = "";
                txtEstatura.Text = "";
                txtTalla.Text = "";
                Response.Redirect("Modificar_Hijos.aspx");
            }
        }

        protected void btnRefrescar_Click(object sender, EventArgs e)        {
            Response.Redirect("Modificar_Hijos.aspx");
        }

    }//FIN CLASS
}//FIN NAME