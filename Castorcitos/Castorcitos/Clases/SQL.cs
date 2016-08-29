using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Data;
using System.Web.UI.WebControls;

namespace Castorcitos.CSS
{
    public class SQL
    {
        SqlConnection conn;
        public SQL(string cadena)
        {
            (conn = new SqlConnection(cadena)).Open();
        }
        public int Querys(string query)
        {
            return new SqlCommand(query, conn).ExecuteNonQuery();

        }
        public string consulta(string sqlconsulta, SqlConnection cn)
        {
            string dato = "";
            SqlDataReader contenedor;
            SqlCommand mustang = new SqlCommand();
            mustang.Connection = cn;
            mustang.CommandText = sqlconsulta;
            try
            {
                contenedor = mustang.ExecuteReader();
                while (contenedor.Read())
                {
                    dato = contenedor[0].ToString();
                }


            }
            catch (Exception z) { System.Windows.Forms.MessageBox.Show("Error de conectividad =" + z.Message); contenedor = null; }
            cn.Close();
            return dato;
        }
        public string servidor { get; set; }
        public string bd { get; set; }

        public SqlConnection conectar()
        {
            SqlConnection cn = new SqlConnection();
            cn.ConnectionString = "Data Source=Ikaroz; Initial Catalog=Castorsitos; Integrated Security=true;";
            try
            {
                cn.Open();
                System.Windows.Forms.MessageBox.Show("Conexion correcta");

            }
            catch (Exception z) { cn = null; System.Windows.Forms.MessageBox.Show("Conexion fallida por " + z.Message); }
            return cn;
        }
        public DataTable tablaQuery(string query)
        {
            DataTable t = new DataTable();
            SqlDataAdapter d = new SqlDataAdapter(query, conn);
            d.Fill(t);
            return t;
        }

        public void guarimg(FileUpload fu)
        {
            HttpPostedFile Gimg = fu.PostedFile;
            Byte[] byteimg = new Byte[fu.PostedFile.ContentLength];
            Gimg.InputStream.Read(byteimg, 0, fu.PostedFile.ContentLength);
            string sqlc = "insert into Imagenes(Imagen,Tipo,id_p)";
            sqlc += "values(@Imagen,@Tipo,@id_p)";
            SqlCommand sqlcom = new SqlCommand(sqlc, conn);
            sqlcom.Parameters.Add("@Imagen", System.Data.SqlDbType.Image);
            sqlcom.Parameters["@Imagen"].Value = byteimg;
            sqlcom.Parameters.Add("@Tipo", System.Data.SqlDbType.VarChar, 50);
            sqlcom.Parameters["@Tipo"].Value = "nasus is here";
            sqlcom.Parameters.Add("@id_p", System.Data.SqlDbType.Int);
            sqlcom.Parameters["@id_p"].Value = 1;
            sqlcom.ExecuteNonQuery();
            conn.Close();
        }
        string niños;
        public void niño(string d)
        {
            niños = d;
        }
        public string n()
        {
            return niños;
        }

    }
}