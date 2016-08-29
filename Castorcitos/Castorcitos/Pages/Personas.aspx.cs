using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Data;
using System.Data.SqlClient;
using System.Web;
using Castorcitos.Clases;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Castorcitos.Pages
{
    public partial class Personas : System.Web.UI.Page
    {
        clsPrincipal Conexiones = new clsPrincipal();
        clsMetodos Metodos = new clsMetodos();
        clsVistas Vistas = new clsVistas();
        SqlConnection LaConexion = new SqlConnection();
        String MensajeUnuversal = "";

        protected void Page_Load(object sender, EventArgs e)
        {
            Conexiones.CadenaDeConexion = @"Data Source='(local)'; Initial Catalog=Castorsitos; Integrated Security=SSPI;";
            LaConexion = Conexiones.ConexionEstablecida(ref MensajeUnuversal);

            if (!IsPostBack)
            {
                Domicilio();
                Seguro();

            }
        }

        protected void Domicilio()
        {

            SqlCommand CMD = new SqlCommand("SELECT * FROM Direccion WHERE Id_Domicilio=(SELECT MAX (Id_Domicilio) FROM Direccion)", LaConexion);
            SqlDataAdapter DA = new SqlDataAdapter(CMD);
            DataSet DS = new DataSet();
            DA.Fill(DS);
            LaConexion.Close();

            if (DS.Tables[0].Rows.Count > 0)
            {
                gvMostrarDomicilio.DataSource = DS;
                gvMostrarDomicilio.DataBind();
            }
            else
            {
                DS.Tables[0].Rows.Add(DS.Tables[0].NewRow());
                gvMostrarDomicilio.DataSource = DS;
                gvMostrarDomicilio.DataBind();
                int ContarDomicilio = gvMostrarDomicilio.Rows[0].Cells.Count;
                gvMostrarDomicilio.Rows[0].Cells.Clear();
                gvMostrarDomicilio.Rows[0].Cells.Add(new TableCell());
                gvMostrarDomicilio.Rows[0].Cells[0].ColumnSpan = ContarDomicilio;
                gvMostrarDomicilio.Rows[0].Cells[0].Text = "No Records Founds";
            }
        }

        protected void Seguro()
        {
            SqlCommand CMD = new SqlCommand("SELECT * FROM Seguro_Social WHERE Id_Seguro=(SELECT MAX (Id_Seguro) FROM Seguro_Social)", LaConexion);
            SqlDataAdapter DA = new SqlDataAdapter(CMD);
            DataSet DS = new DataSet();
            DA.Fill(DS);
            LaConexion.Close();

            if (DS.Tables[0].Rows.Count > 0)
            {
                gvMostrarSeguro.DataSource = DS;
                gvMostrarSeguro.DataBind();
            }
            else
            {
                DS.Tables[0].Rows.Add(DS.Tables[0].NewRow());
                gvMostrarSeguro.DataSource = DS;
                gvMostrarSeguro.DataBind();
                int ContarSeguros = gvMostrarSeguro.Rows[0].Cells.Count;
                gvMostrarSeguro.Rows[0].Cells.Clear();
                gvMostrarSeguro.Rows[0].Cells.Add(new TableCell());
                gvMostrarSeguro.Rows[0].Cells[0].ColumnSpan = ContarSeguros;
                gvMostrarSeguro.Rows[0].Cells[0].Text = "No Records Founds";
            }
        }

        protected void gvMostrarDomicilio_SelectedIndexChanged(object sender, EventArgs e)
        {
            txtDomicilio.Text = gvMostrarDomicilio.SelectedRow.Cells[1].Text;
        }

        protected void gvMostrarSeguro_SelectedIndexChanged(object sender, EventArgs e)
        {
            txtSeguro.Text = gvMostrarSeguro.SelectedRow.Cells[1].Text;
        }

        protected void btnInsertarPersona_Click(object sender, EventArgs e)
        {
            if (txtNombre.Text == "" || txtApellidoPaterno.Text == "" || txtApellidoMaterno.Text == "" || txtEdad.Text == "" || txtDomicilio.Text == "" || txtSeguro.Text == "")
            {
                Vistas.VisualizaMensajeError("Te hacen Falta Campos");
            }
            else
            {
                String Sexo = "";
                if (chkMasculino.Checked)
                { Sexo = "Masculino"; }
                if (chkFemenino.Checked)
                { Sexo = "Femenino"; }

                Metodos.ExecuteNuevaPersona(txtNombre.Text, txtApellidoPaterno.Text, txtApellidoMaterno.Text, Convert.ToInt32(txtEdad.Text), Sexo,Convert.ToInt32(txtDomicilio.Text), Convert.ToInt32(txtSeguro.Text), ref MensajeUnuversal);
                Vistas.Cuadro_Dialogo(MensajeUnuversal);
                txtNombre.Text = null;
                txtApellidoPaterno.Text = null;
                txtApellidoMaterno.Text = null;
                txtEdad.Text = null;
                txtDomicilio.Text = null;
                txtSeguro.Text = null;
            }
        }
    }
}