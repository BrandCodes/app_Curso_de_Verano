using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace Castorcitos.Pages
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BtnLogin_Click(object sender, EventArgs e)
        {
            SqlConnection Conexion = new SqlConnection(@"Data Source='(local)'; Initial Catalog=Castorsitos; Integrated Security=SSPI;");
            SqlDataAdapter Admin = new SqlDataAdapter("Select Tra.No_Trabajador,Per.Nombre,Admi.PassAdmin from Trabajadores Tra inner join Administrador Admi on Tra.Id_Tabajador=Admi.Id_Tabajador inner join Personas Per on Per.IdPersonas=Tra.IdPersonas where Tra.No_Trabajador='" + txtMatricula.Text + "' and Admi.PassAdmin='" + txtPase.Text + "';", Conexion);

            DataTable TablaAdmini = new DataTable();

            Admin.Fill(TablaAdmini);

            if (TablaAdmini.Rows.Count.ToString() == "1")
            {
                HttpCookie MiGalleta = new HttpCookie("Login");
                MiGalleta["No_Trabajador"] = TablaAdmini.Rows[0]["No_Trabajador"].ToString();
                MiGalleta.Expires = DateTime.Now.AddDays(1d);
                Response.Cookies.Add(MiGalleta);
                
                Response.Redirect("Admin.aspx");
            }

            else 
            {
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Uasuario/Contraseña Incorrecto')", true);
                txtMatricula.Text = null;
                txtPase.Text = null;
            }


        }
    }
}