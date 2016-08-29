using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Castorcitos.Pages
{
    public partial class FormatoAdmin : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
            if (Request.Cookies["Login"] != null)
            {
                //lblMensaje.Text = Request.Cookies["Login"]["No_Trabajador"].ToString();
            }
            else { Response.Redirect("Login.aspx"); }
             
        }

        protected void btnLogaout_Click(object sender, EventArgs e)
        {
            HttpCookie MiGalleta = new HttpCookie("Login");
            MiGalleta.Expires = DateTime.Now.AddDays(-1d);
            Response.Cookies.Add(MiGalleta);

            //MessageBox.Show("Desea Salir de La Pagina", "EXIT", MessageBoxButtons.YesNoCancel, MessageBoxIcon.Warning);

            Response.Redirect("Login.aspx");
        }
    }
}