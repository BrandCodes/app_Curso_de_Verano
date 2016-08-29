using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Windows;
using System.Windows.Forms;
using Castorcitos.Clases;

namespace Castorcitos.Pages
{
    public partial class Generales : System.Web.UI.Page
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

        protected void btnInsertarImagen_Click(object sender, EventArgs e)        {            
            String Mensajes = "";
            String sFile = String.Empty;
            //Se comprueba que exista Fichero y que no este vacio
            if ((BuscarImagen.PostedFile != null) && (BuscarImagen.PostedFile.ContentLength > 0))            {
                //Se obtiene el Fichero Seleccionado
                HttpPostedFile FileImage = BuscarImagen.PostedFile;
                //Se crea un Arreglo almacenando la variable para insertarla en la BD buscando la longitud y convertirla en byte
                Byte[] byteImage = new Byte[BuscarImagen.PostedFile.ContentLength];
                //Cargar Imagenes en una matriz de bytes
                FileImage.InputStream.Read(byteImage, 0, BuscarImagen.PostedFile.ContentLength);
                String SQL = "Insert into Imagenes(Imagen,Tipo)";
                SQL += "values(@Imagen,@Tipo)";

                SqlConnection ConexionEstablecida = new SqlConnection("Server=(local);DataBase=Castorsitos;Integrated Security=sspi");
                SqlCommand Comand = new SqlCommand(SQL, ConexionEstablecida);

                Comand.Parameters.Add("@Imagen", SqlDbType.Image);
                Comand.Parameters["@Imagen"].Value = byteImage; //Imagenes en Bytes

                Comand.Parameters.Add("@Tipo", SqlDbType.VarChar, 100);
                Comand.Parameters["@Tipo"].Value = txtTipoImagen.Text;

                ConexionEstablecida.Open();

                /*ExerLearning 
                 * swich capa 3 
                 * ipv6
                 * por cada uno 10 Preguntas
                 */

                try                {
                    Comand.ExecuteNonQuery();
                    MessageBox.Show("Se inserto Imagen Correctamente", "Genial", MessageBoxButtons.OKCancel);
                }
                catch (Exception ERROR)                {
                    MessageBox.Show("ERROR En La Inserccion" +" $....." +ERROR.Message, "ERROR", MessageBoxButtons.AbortRetryIgnore);
                }
            }            
        }

        protected void btnInsertarSeguroSocial_Click(object sender, EventArgs e)        {
            if (txtNumSeguro.Text == "" || txtNombreSeguro.Text == "")            {
                Vistas.VisualizaMensajeError("Te Falta Un Campo");
            }
            else            {
                Metodos.ExecuteNuevoSeguro(txtNumSeguro.Text, txtNombreSeguro.Text, ref MensajeUniversal);
                Vistas.Cuadro_Dialogo(MensajeUniversal);
                txtNumSeguro.Text = null;
                txtNombreSeguro.Text = null;
            }
        }

        protected void btnInsertarDomicilio_Click(object sender, EventArgs e)        {
            if (txtCalle.Text == "" || txtColonia.Text == "" || txtNumeroResiden.Text=="" || txtCodigoPostal.Text == "" || txtMunicipio.Text == "")            {
                Vistas.VisualizaMensajeError("Te Faltan Campos");
            }
            else            {
                Metodos.ExecuteNuevaDireccion(txtCalle.Text, txtColonia.Text, Convert.ToInt32(txtNumeroResiden.Text), txtCodigoPostal.Text, txtMunicipio.Text, ref MensajeUniversal);
                Vistas.Cuadro_Dialogo(MensajeUniversal);
                txtCalle.Text = null;
                txtColonia.Text = null;
                txtNumeroResiden = null;
                txtCodigoPostal.Text = null;
                txtMunicipio.Text = null;
            }
        }

        protected void gvMostrarPersona_SelectedIndexChanged(object sender, EventArgs e)        {
            txtPersona.Text = gvMostrarPersona.SelectedRow.Cells[1].Text;
        }

        protected void btnInsertarTelefono_Click(object sender, EventArgs e)        {
            if (txtPersona.Text == "" || txtTipoTelefono.Text == "" || txtNumero.Text == "")            {
                Vistas.VisualizaMensajeError("Te Faltan Campos");
            }
            else            {
                Metodos.ExecuteNuevotelefono(Convert.ToInt32(txtPersona.Text), txtTipoTelefono.Text, txtNumero.Text, ref MensajeUniversal);
                Vistas.Cuadro_Dialogo(MensajeUniversal);
                txtPersona.Text = null;
                txtTipoTelefono.Text = null;
                txtNumero.Text = null;
            }
        }       
 
    }//FIN CLASS
}//FIN NAME