using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.IO;
using System.Data;
using System.Data.SqlClient;
using OfficeOpenXml;
using System.Windows.Forms;

namespace Castorcitos.Clases
{
    public class clsPrincipal
    {
        public String CadenaDeConexion { set; get; }
        //Se Crea la conexion
        public SqlConnection ConexionEstablecida(ref String Mensaje)        {
            SqlConnection Conexion = new SqlConnection();
            Conexion.ConnectionString = CadenaDeConexion;

            try            {
                Conexion.Open();
                Mensaje = "Conexion Establecida";
            }
            catch (Exception ERR)            {
                Conexion = null;
                Mensaje = "Error en la Conexion" + " $.." + ERR.Message;
            }
            return Conexion;
        }

        //ABEM en una base de datos
        public void ModificarBD(SqlConnection CN, String Consulta, ref String Mensaje)        {
            SqlCommand Comando = new SqlCommand();
            Comando.Connection = CN;
            Comando.CommandText = Consulta;

            try            {
                Comando.ExecuteNonQuery();
                Mensaje = "";
            }
            catch (Exception ERR)            {
                Mensaje = "ERROR" + " $... " + ERR.Message;
            }
        }

        //Consultas DataREDER

        //Execute Procedure
        public SqlCommand ExecuteProcedures(SqlConnection Conectar, String Procedure, ref String Mensaje)        {
            SqlCommand Comando = new SqlCommand();
            Comando.Connection = Conectar;
            Comando.CommandType = CommandType.StoredProcedure;
            Comando.CommandText = Procedure;

            try            {
                Mensaje = "Actualizacion En La Base";
            }
            catch (Exception ERR)            {
                Mensaje = "ERROR" + " " + ERR.Message;
            }
            return Comando;
        }

        //Nueva Imagen
        /*
        public void NuevaImagen(SqlConnection Conecion, String fileImagen, String TipoImagen)
        {
            try
            {
                MemoryStream MS = new MemoryStream();
                FileStream FS = new FileStream(fileImagen, FileMode.Open, FileAccess.Read, FileShare.ReadWrite);
                MS.SetLength(FS.Length);
                FS.Read(MS.GetBuffer(), 0, (int)FS.Length);
                byte[] ArreIMG = MS.GetBuffer();
                MS.Flush();
                FS.Close();

                using (SqlCommand CMD = Conecion.CreateCommand())
                    {
                        Conecion.Open();
                        CMD.CommandText = "Insert Into Imagenes Values(" + "@Imagen" + ",@Tipo" + ")";

                        CMD.Parameters.Add("@Imagen", SqlDbType.VarBinary).Value = ArreIMG;
                    }
            }
        }
         */

        public void NuevoSeguro(SqlConnection Conexion, String NumeroSeguro, String NombreSeguro, ref String Mensajes)        {
            SqlCommand CMD = new SqlCommand();
            CMD = ExecuteProcedures(Conexion, "NuevoSeguro", ref Mensajes);

            SqlParameter NuevoNumeroSeg = new SqlParameter("@Num_Seguro", SqlDbType.VarChar, 30);
            NuevoNumeroSeg.Value = NumeroSeguro;

            SqlParameter NuevoNombreSeguro = new SqlParameter("@Nombre_Seguro", SqlDbType.VarChar, 30);
            NuevoNombreSeguro.Value = NombreSeguro;

            CMD.Parameters.Add(NuevoNumeroSeg);
            CMD.Parameters.Add(NuevoNombreSeguro);

            try            {
                CMD.ExecuteNonQuery();
                Mensajes = "Inserccion Correcta Nuevo Seguro";
            }
            catch (Exception ERRO)            {
                Mensajes = "ERROR en la insercion" + "$..." + ERRO.Message;
            }
        }
       
        public void NuevoDomicilio(SqlConnection Conectate, String Calle, String Colonia,int Numero, String CodigoPostal, String Municipio, ref String Mensaje)        {
            SqlCommand CMD = new SqlCommand();
            CMD = ExecuteProcedures(Conectate, "NuevoDomicilio", ref Mensaje);

            SqlParameter NuevaCalle = new SqlParameter("@Calle", SqlDbType.VarChar, 50);
            NuevaCalle.Value = Calle;

            SqlParameter NuevaColonia = new SqlParameter("@Colonia", SqlDbType.VarChar, 50);
            NuevaColonia.Value = Colonia;

            SqlParameter NuevoNumero = new SqlParameter("@Numero", SqlDbType.Int);
            NuevoNumero.Value = Numero;

            SqlParameter NuevoCP = new SqlParameter("@CodigoPostal", SqlDbType.VarChar, 10);
            NuevoCP.Value = CodigoPostal;

            SqlParameter NuevoMunicipio = new SqlParameter("@Municipio", SqlDbType.VarChar, 50);
            NuevoMunicipio.Value = Municipio;

            CMD.Parameters.Add(NuevaCalle);
            CMD.Parameters.Add(NuevaColonia);
            CMD.Parameters.Add(NuevoNumero);
            CMD.Parameters.Add(NuevoCP);
            CMD.Parameters.Add(NuevoMunicipio);

            try            {
                CMD.ExecuteNonQuery();
                Mensaje = "Inseccion Correcta Nuevo Domicilio";
            }
            catch (Exception ERRO)            {
                Mensaje = "Error en la inserccion" + " $... " + ERRO.Message;
            }
        }

        public void NuevaPersona(SqlConnection Conexion, String Nombre, String ApPaterno, String ApMaterno, int Edad, String Sexo, int Domicilio, int Seguro, ref String Mensaje)        {
            SqlCommand CMD = new SqlCommand();
            CMD = ExecuteProcedures(Conexion, "NuevaPersona", ref Mensaje);

            SqlParameter NNombre = new SqlParameter("@Nombre", SqlDbType.VarChar, 50);
            NNombre.Value = Nombre;

            SqlParameter NApPar = new SqlParameter("@ApellidoPaterno", SqlDbType.VarChar, 50);
            NApPar.Value = ApPaterno;

            SqlParameter NAPM = new SqlParameter("@ApellidoMaterno", SqlDbType.VarChar, 50);
            NAPM.Value = ApMaterno;

            SqlParameter NEDAD = new SqlParameter("@Edad", SqlDbType.Int);
            NEDAD.Value = Edad;

            SqlParameter NSexo = new SqlParameter("@Sexo", SqlDbType.VarChar, 15);
            NSexo.Value = Sexo;

            SqlParameter NDOM = new SqlParameter("@Id_Domicilio", SqlDbType.Int);
            NDOM.Value = Domicilio;

            SqlParameter NSEGURO = new SqlParameter("@id_Seguro", SqlDbType.Int);
            NSEGURO.Value = Seguro;

            CMD.Parameters.Add(NNombre);
            CMD.Parameters.Add(NApPar);
            CMD.Parameters.Add(NAPM);
            CMD.Parameters.Add(NEDAD);
            CMD.Parameters.Add(NSexo);
            CMD.Parameters.Add(NDOM);
            CMD.Parameters.Add(NSEGURO);

            try            {
                CMD.ExecuteNonQuery();
                Mensaje = "Insercion Correcta Nueva Persona";
            }
            catch (Exception ERRO)            {
                Mensaje = "ERROR AL INSERTAR" + " $... " + ERRO.Message;
            }
        }

        public void Nuevotelefono(SqlConnection Conexion, int IDPERSONA, String TipoTelefono, String Numeros, ref String Mensaje)        {
            SqlCommand CMD = new SqlCommand();
            CMD = ExecuteProcedures(Conexion, "NuevoTelefono", ref Mensaje);

            SqlParameter NPersona = new SqlParameter("@IdPersonas", SqlDbType.Int);
            NPersona.Value = IDPERSONA;

            SqlParameter NTipoTelefono = new SqlParameter("@TipoTelefono", SqlDbType.VarChar, 50);
            NTipoTelefono.Value = TipoTelefono;

            SqlParameter NNumeros = new SqlParameter("@Numero", SqlDbType.VarChar, 15);
            NNumeros.Value = Numeros;

            CMD.Parameters.Add(NPersona);
            CMD.Parameters.Add(NTipoTelefono);
            CMD.Parameters.Add(NNumeros);

            try            {
                CMD.ExecuteNonQuery();
                Mensaje = "Insercion Correcta Nuevo Telefono";
            }
            catch (Exception ERR)            {
                Mensaje = "Error Durante la insercion" + "..$.." + ERR.Message;
            }
        }

        public void NuevoTrabajador(SqlConnection Conexion, int Persona, String DepartamantoLabora, String NoTrabajador, String Conyugue, ref String Mensaje)        {
            SqlCommand CMD = new SqlCommand();
            CMD = ExecuteProcedures(Conexion, "NuevoTrabajador", ref Mensaje);

            SqlParameter NPerson = new SqlParameter("@IdPersonas", SqlDbType.Int);
            NPerson.Value = Persona;

            SqlParameter NDepartamento = new SqlParameter("@Dpto_Laboral", SqlDbType.VarChar, 50);
            NDepartamento.Value = DepartamantoLabora;

            SqlParameter NNtrabajador = new SqlParameter("@No_Trabajador", SqlDbType.VarChar, 5);
            NNtrabajador.Value = NoTrabajador;

            SqlParameter NConyugue = new SqlParameter("@Conyugue", SqlDbType.VarChar, 10);
            NConyugue.Value = Conyugue;

            CMD.Parameters.Add(NPerson);
            CMD.Parameters.Add(NDepartamento);
            CMD.Parameters.Add(NNtrabajador);
            CMD.Parameters.Add(NConyugue);

            try            {
                CMD.ExecuteNonQuery();
                Mensaje = "Insercion Correcta Nuevo Trabajador";
            }
            catch (Exception ERR)            {
                Mensaje = "Error Durante la insercion" + "..$.." + ERR.Message;
            }
        }

        public void NuevoHijo(SqlConnection Conexion, int idPersona, String CURP, String Peso, String Estatura, String Talla, ref String Mensaje)
        {
            SqlCommand CMD = new SqlCommand();
            CMD = ExecuteProcedures(Conexion, "NuevoHijo", ref Mensaje);
            //@IdPersona,@CURP,@Peso,@Estatura,@Talla
            SqlParameter NPerson = new SqlParameter("@IdPersonas", SqlDbType.Int);
            NPerson.Value = idPersona;

            SqlParameter NCurp = new SqlParameter("@CURP", SqlDbType.VarChar, 50);
            NCurp.Value = CURP;

            SqlParameter NPeso = new SqlParameter("@Peso", SqlDbType.VarChar, 20);
            NPeso.Value = Peso;

            SqlParameter NEstatura = new SqlParameter("@Estatura", SqlDbType.VarChar, 20);
            NEstatura.Value = Estatura;

            SqlParameter NTalla = new SqlParameter("@Talla", SqlDbType.VarChar, 10);
            NTalla.Value = Talla;

            CMD.Parameters.Add(NPerson);
            CMD.Parameters.Add(NCurp);
            CMD.Parameters.Add(NPeso);
            CMD.Parameters.Add(NEstatura);
            CMD.Parameters.Add(NTalla);

            try            {
                CMD.ExecuteNonQuery();
                Mensaje = "Insercion Correcta Nuevo Trabajador";
            }
            catch (Exception ERR)            {
                Mensaje = "Error Durante la insercion" + "..$.." + ERR.Message;
            }
        }

        public void CargaArchivoExcel(System.IO.Stream stream)        {
            ExcelPackage paquete = new ExcelPackage(stream);
            DataTable dt = paquete.ToDataTable();
            foreach (DataRow d in dt.Rows)            {
                String SQL = "Insert into Direccion (Calle,Colonia,Numero,CodigoPostal,Municipio) values (@Calle, @Colonia, @Numero, @CodigoPostal, @Municipio)";
                //SQL += "values(@Calle, @Colonia, @Numero, @CodigoPostal, @Municipio)";
                SqlConnection Cone = new SqlConnection(@"Data Source='(local)'; Initial Catalog=Castorsitos; Integrated Security=SSPI;");
                SqlCommand cmd = new SqlCommand(SQL, Cone);
                MessageBox.Show("Conecto");
                cmd.Parameters.Add("@Calle", SqlDbType.VarChar, 50).Value = d.ItemArray[0].ToString();
                cmd.Parameters.Add("@Colonia", SqlDbType.VarChar, 50).Value = d.ItemArray[1].ToString();
                cmd.Parameters.Add("@Numero", SqlDbType.Int).Value = Convert.ToInt32(d.ItemArray[2].ToString());
                cmd.Parameters.Add("@CodigoPostal", SqlDbType.VarChar, 10).Value = d.ItemArray[3].ToString();
                cmd.Parameters.Add("@Municipio", SqlDbType.VarChar, 50).Value = d.ItemArray[4].ToString();
                Cone.Open();
                cmd.ExecuteNonQuery();
                /*try                {
                    cmd.ExecuteNonQuery();
                    MessageBox.Show("Se insertaron los Datos Correctamente", "Genial", MessageBoxButtons.OKCancel);
                    Cone.Close();
                }
                catch (Exception error)                {
                    MessageBox.Show("ERROR En La Inserción" + " $....." + error.Message, "ERROR", MessageBoxButtons.AbortRetryIgnore);
                    Cone.Close();
                }*/
            }
        }
    }//FIN CLASS
}//FIN NAME