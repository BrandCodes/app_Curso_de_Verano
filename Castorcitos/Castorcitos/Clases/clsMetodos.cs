using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using Castorcitos.Clases;
using System.Web.UI;
using System.Web.UI.WebControls;


namespace Castorcitos.Clases
{
    public class clsMetodos
    {
        clsPrincipal Conexiones = new clsPrincipal();
        
        SqlDataReader Leector;
        SqlDataAdapter Adaptador;

        public clsMetodos()        {
            Conexiones.CadenaDeConexion = @"Data Source='(local)'; Initial Catalog=Castorsitos; Integrated Security=SSPI;";
        }

        public void ExecuteNuevoSeguro(String NumeroSeguro, String NombreSeguro, ref String Mensaje)        {
            SqlConnection LaConexion = new SqlConnection();
            LaConexion = Conexiones.ConexionEstablecida(ref Mensaje);

            if (LaConexion != null)            {
                Conexiones.NuevoSeguro(LaConexion, NumeroSeguro, NombreSeguro, ref Mensaje);
                LaConexion.Close();
            }
        }

        public void ExecuteNuevaDireccion(String Calle, String Colonia, int Numero,String CodigoPostal, String Municipio, ref String Mensaje)        {
            SqlConnection LaCoexion = new SqlConnection();
            LaCoexion = Conexiones.ConexionEstablecida(ref Mensaje);

            if (LaCoexion != null)            {
                Conexiones.NuevoDomicilio(LaCoexion, Calle, Colonia, Numero,CodigoPostal, Municipio, ref Mensaje);
            }
        }

        public void ExecuteNuevaPersona(String Nombre, String ApellidoPaterno, String ApellidoMaterno, int Edad, String Sexo, int Domiculio, int Seguro, ref String Mensaje)        {
            SqlConnection LaConexion = new SqlConnection();
            LaConexion = Conexiones.ConexionEstablecida(ref Mensaje);

            if (LaConexion != null)            {
                Conexiones.NuevaPersona(LaConexion, Nombre, ApellidoPaterno, ApellidoMaterno, Edad, Sexo, Domiculio, Seguro, ref Mensaje);
            }
        }

        public void ExecuteNuevotelefono(int idPersona, String Tipotelefono, String Nuemero, ref String Mensaje)        {
            SqlConnection LaConexion = new SqlConnection();
            LaConexion = Conexiones.ConexionEstablecida(ref Mensaje);

            if (LaConexion != null)            {
                Conexiones.Nuevotelefono(LaConexion, idPersona, Tipotelefono, Nuemero, ref Mensaje);
            }
        }

        public void ExecuteNuevoTrabajador(int Persona, String Departamento, String NoPersona, String Conyugue, ref String Mensaje)        {
            SqlConnection LaConexion = new SqlConnection();
            LaConexion = Conexiones.ConexionEstablecida(ref Mensaje);

            if (LaConexion != null)            {
                Conexiones.NuevoTrabajador(LaConexion, Persona, Departamento, NoPersona, Conyugue, ref Mensaje);
            }
        }

        public void ExecuteNuevoHijo(int idPersona, String CURP, String Peso, String Estatura, String Talla, ref String Mensaje)
        {
            SqlConnection LaConexion = new SqlConnection();
            LaConexion = Conexiones.ConexionEstablecida(ref Mensaje);

            if (LaConexion != null)
                Conexiones.NuevoHijo(LaConexion, idPersona, CURP, Peso, Estatura, Talla, ref Mensaje);    
        }

    }//FIN CLASS
}//FIN NAME