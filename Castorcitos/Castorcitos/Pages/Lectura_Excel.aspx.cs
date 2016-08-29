using OfficeOpenXml;
using System;
using System.Collections.Generic;
using System.Data;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using Castorcitos.Clases;
using System.Windows.Forms;

namespace Castorcitos.Pages
{   
    public partial class Lectura_Excel : System.Web.UI.Page
    {
        clsPrincipal mtds = new clsPrincipal();
        SqlConnection LaConexion = new SqlConnection();
        String MensajeUniversal = "";
        protected void Page_Load(object sender, EventArgs e)        {
           
        }        

        protected void Button1_Click(object sender, EventArgs e)        {
            if (FUCarga.HasFile)            {
                if (Path.GetExtension(FUCarga.FileName) == ".xlsx")                {
                    ExcelPackage package = new ExcelPackage(FUCarga.FileContent);
                    GridView1.DataSource = package.ToDataTable();
                    GridView1.DataBind();
                    mtds.CargaArchivoExcel(FUCarga.FileContent);
                }
            }
        }

        protected void bttnCarga_Click(object sender, EventArgs e)        {
            //
            if (FUCarga.HasFile)            {
                mtds.CargaArchivoExcel(FUCarga.FileContent);
            }
        }
        
    }//FIN CLASS
   
    public static class ExcelPackageExtensions
    {
        public static DataTable ToDataTable(this ExcelPackage package)        {
            ExcelWorksheet workSheet = package.Workbook.Worksheets.First();
            DataTable table = new DataTable();
            foreach (var firstRowCell in workSheet.Cells[1, 1, 1, workSheet.Dimension.End.Column])            {
                table.Columns.Add(firstRowCell.Text);
            }

            for (var rowNumber = 2; rowNumber <= workSheet.Dimension.End.Row; rowNumber++)            {
                var row = workSheet.Cells[rowNumber, 1, rowNumber, workSheet.Dimension.End.Column];
                var newRow = table.NewRow();
                foreach (var cell in row)                {
                    newRow[cell.Start.Column - 1] = cell.Text;
                }
                table.Rows.Add(newRow);
            }
            return table;
        }
        
    }//Fin Class ExelPackageExtensions
}//FIN NAME