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
    public partial class Modificar_SS : System.Web.UI.Page
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
                SeguroSocial();
            }
        }

        protected void SeguroSocial()
        {           
            SqlCommand CMD = new SqlCommand("Select * from Seguro_Social", LaConexion);
            SqlDataAdapter DA = new SqlDataAdapter(CMD);
            DataSet DS = new DataSet();
            DA.Fill(DS);
            LaConexion.Close();

            if (DS.Tables[0].Rows.Count > 0)            {
                gvMostrarSS.DataSource = DS;
                gvMostrarSS.DataBind();                
            }
            else            {
                DS.Tables[0].Rows.Add(DS.Tables[0].NewRow());
                gvMostrarSS.DataSource = DS;
                gvMostrarSS.DataBind();
                int contarColumnas = gvMostrarSS.Rows[0].Cells.Count;
                gvMostrarSS.Rows[0].Cells.Clear();
                gvMostrarSS.Rows[0].Cells.Add(new TableCell());
                gvMostrarSS.Rows[0].Cells[0].ColumnSpan = contarColumnas;
                gvMostrarSS.Rows[0].Cells[0].Text = "No Records Found";
            }
        }

        protected void btnModificarSeguroSocial_Click(object sender, EventArgs e)        {
            if (txtMatriculaSS.Text == "" || txtNombreSS.Text == "")
                Vistas.VisualizaMensajeError("Te Faltan Campos");
            else            {
                Conexiones.ModificarBD(LaConexion, "update Seguro_Social set Num_Seguro=" + "'" + txtMatriculaSS.Text + "'" + ", Nombre_Seguro=" + "'" + txtNombreSS.Text + "'" + "where Id_Seguro=" + txtIdSeguro.Text, ref MensajeUniversal);
                Vistas.Cuadro_Dialogo(MensajeUniversal);
                txtMatriculaSS.Text = "";
                txtNombreSS.Text = "";
                txtIdSeguro.Text = "";
                Response.Redirect("Modificar_SS.aspx");
            }            
        }

        protected void gvMostrarPersona_SelectedIndexChanged(object sender, EventArgs e)        {            
            txtIdSeguro.Text = gvMostrarSS.SelectedRow.Cells[1].Text;
            txtMatriculaSS.Text = gvMostrarSS.SelectedRow.Cells[2].Text;
            txtNombreSS.Text = gvMostrarSS.SelectedRow.Cells[3].Text;
        }

        protected void btnRefrescar_Click(object sender, EventArgs e)        {
            Response.Redirect("Modificar_SS.aspx");
        }

    }//FIN  CLASS
}//fIN NAME