using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


namespace Castorcitos.Pages
{
    public partial class Guardar : System.Web.UI.Page
    {
        string dp = "1";

        SQL medium = new SQL(@"Data Source='(local)'; Initial Catalog=Castorsitos; Integrated Security=SSPI;");

        protected void Page_Load(object sender, EventArgs e)
        {

        }


        protected void Button1_Click(object sender, EventArgs e)
        {
            if (ImagenFile.PostedFile != null && ImagenFile.PostedFile.ContentLength > 0)
            {
                string dato = "";
                string ip = "";
                string dt = "insert into Seguro_Social values ('" + TextBox5.Text + "','Hijo');";
                //se agrega seuro social 
                medium.Querys(dt);
                dato = medium.Querys("select SCOPE_IDENTITY()").ToString();
                ip = medium.Querys("select Id_Domicilio from Personas where IdPersonas=" + dp + "").ToString();
                dt = "execute  AgregarPersona '" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "'," + TextBox4.Text
                    + ",null,null";

                //agregamos al niño
                medium.Querys(dt);//herror
                dato = medium.consulta("select MAX(IdPersonas) from Personas", medium.conectar()).ToString();
                medium.niño(dato);
                //se agrega la relacion
                string t = DropDownList1.SelectedItem.Text;
                dt = " execute AgregarHijo " + dato + ",'" + TextBox6.Text + "','" + TextBox7.Text + "','" + TextBox8.Text + "','" + t + "'";
                medium.Querys(dt);
                dato = medium.consulta("select MAX(id_hijo) from Hijos", medium.conectar()).ToString();
                dt = "insert into Padecimientos values(" + dato + ",'" + TextBox10.Text + "','" + TextBox9.Text + "')";
                medium.Querys(dt);
                //agregamos la img
                medium.guarimg(ImagenFile);
                Response.Redirect("D_Respon.aspx");

            }
        }

    }
}