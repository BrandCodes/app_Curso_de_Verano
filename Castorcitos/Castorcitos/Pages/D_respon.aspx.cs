using Castorcitos.CSS;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Castorcitos.Pages
{
    public partial class D_respon : System.Web.UI.Page
    {
        SQL medium = new SQL(@"Data Source='(local)'; Initial Catalog=Castorsitos; Integrated Security=SSPI;");
        string dt = "";
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string dato = "";
            string cn = "execute colonia '" + TextBox5.Text + "','" + TextBox6.Text + "','" + TextBox7.Text + "','" + TextBox8 + "'";
            medium.Querys(cn);
            dato = medium.consulta("select MAX(Id_Domicilio) from Direccion", medium.conectar());
            cn = "execute  AgregarPersona '" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "'," +
                    TextBox4.Text + ",null," + dato + "";
            medium.Querys(cn);
            dato = medium.consulta("select MAX(IdPersonas) from Personas", medium.conectar()).ToString();
            cn = "insert into  Responsables values (" + dato + ",'" + TextBox9.Text + "')";
            medium.Querys(cn);
            dato = medium.consulta("select MAX(IdResponsable) from Responsables", medium.conectar()).ToString();
            dt = medium.n();
            cn = "insert into Responsable_Hijo values(" + dt + "," + dato + ")";
            medium.Querys(cn);

        }
    }
}