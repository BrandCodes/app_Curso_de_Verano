using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using Castorcitos.Clases;

namespace Castorcitos.Pages
{
    public partial class Hijos : System.Web.UI.Page
    {
        clsPrincipal Conexiones = new clsPrincipal();
        clsMetodos Metodos = new clsMetodos();
        clsVistas Vistas = new clsVistas();
        SqlConnection LaConexion = new SqlConnection();
        String MensajeUnuversal = "";
        protected void Page_Load(object sender, EventArgs e)        {
            Conexiones.CadenaDeConexion = @"Data Source='(local)'; Initial Catalog=Castorsitos; Integrated Security=SSPI;";
            LaConexion = Conexiones.ConexionEstablecida(ref MensajeUnuversal);

            if (!IsPostBack)            {
                Personas();
            }
        }

        protected void Personas()        {
            SqlCommand CMD = new SqlCommand("Select Per.IdPersonas,Per.Nombre,Per.ApellidoPaterno,Per.ApellidoMaterno,Per.Edad,Dir.Calle,Dir.Colonia,Dir.Numero,SS.Nombre_Seguro,SS.Num_Seguro From Personas Per inner join Direccion Dir on Per.Id_Domicilio=Dir.Id_Domicilio inner join Seguro_Social SS on Per.id_Seguro=SS.Id_Seguro where IdPersonas=(SELECT MAX(IdPersonas) FROM Personas);", LaConexion);
            SqlDataAdapter DA = new SqlDataAdapter(CMD);
            DataSet DS = new DataSet();
            DA.Fill(DS);
            LaConexion.Close();

            if (DS.Tables[0].Rows.Count > 0)            {
                gvMostrarPersona.DataSource = DS;
                gvMostrarPersona.DataBind();
            }
            else            {
                DS.Tables[0].Rows.Add(DS.Tables[0].NewRow());
                gvMostrarPersona.DataSource = DS;
                gvMostrarPersona.DataBind();
                int ContarDomicilio = gvMostrarPersona.Rows[0].Cells.Count;
                gvMostrarPersona.Rows[0].Cells.Clear();
                gvMostrarPersona.Rows[0].Cells.Add(new TableCell());
                gvMostrarPersona.Rows[0].Cells[0].ColumnSpan = ContarDomicilio;
                gvMostrarPersona.Rows[0].Cells[0].Text = "No Records Founds";
            }
        }

        protected void btnInsertarHijo_Click(object sender, EventArgs e)        {
            if (txtPersona.Text == "" || txtCurp.Text == "" || txtPeso.Text == "" || txtEstatura.Text == "" || txtTalla.Text == "")            {
                Vistas.VisualizaMensajeError("Te Hacen Falta Campos");
            }
            else            {
                Metodos.ExecuteNuevoHijo(Convert.ToInt32(txtPersona.Text), txtCurp.Text, txtPeso.Text, txtEstatura.Text, txtTalla.Text, ref MensajeUnuversal);
                Vistas.Cuadro_Dialogo(MensajeUnuversal);
                txtPersona.Text = "";
                txtCurp.Text = "";
                txtPeso.Text = "";
                txtEstatura.Text = "";
                txtTalla.Text = "";
            }
        }

        protected void gvMostrarPersona_SelectedIndexChanged(object sender, EventArgs e)        {
            txtPersona.Text = gvMostrarPersona.SelectedRow.Cells[1].Text;
        }


    }//Fin Class
}//Foin name