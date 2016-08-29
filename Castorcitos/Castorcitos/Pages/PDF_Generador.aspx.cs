using iTextSharp.text;
using iTextSharp.text.html.simpleparser;
using iTextSharp.text.pdf;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Castorcitos.Pages
{
    public partial class PDF_Generador : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)        {

        }

        protected void btnResponsivaPDF_Click(object sender, EventArgs e)        {
            Document pdfDoc = new Document(PageSize.A4, 10, 10, 10, 10);
            try            {
                PdfWriter.GetInstance(pdfDoc, System.Web.HttpContext.Current.Response.OutputStream);
                pdfDoc.Open();

                string cadenaFinal = "";                            //Aquí va extracción de la BD para concatenar con texto de PDF;
                //string path = Server.MapPath("/img/utp.png");     //Era la imagen
                //cadenaFinal += "<img src='" + path + "' Height='320' Width='350' /><br/><br/>";       //etiqueta donde iba alojada la imagen
                cadenaFinal += "<center><h3>UNIVERSIDAD TECNOLÓGICA DE PUEBLA</h3></center>" +
"<center><h5>DIRECCIÓN DE EXTENSIÓN UNIVERSITARIA</h5></center>" + 
"<center><h5>DEPARTAMENTO DE ACTIVIDADES CULTURALES Y DEPORTIVAS</h5></center>" +
"<br />" +
"<center><h4>Carta Responsiva</h4></center>" +
"<center><h4>XII Curso de Verano Castorcitos UTP 2016</h4></center>" +
"<br />" +
"<h5>Fecha: </h5>" +
"<br />" +
"<h4>A quien correponda</h4>" +
"<h4>Presente</h4>" +
"<br />" +
"<p align='justify'>" +
	"El Sr. _________________________ padre y la Sra. _________________________<br>" +
	"madre de(l) la niña(o) ______________________ damos nuestra autorización y <br>" +
	"consentimiento para que nuestro(a) hijo(a), participe en el <p class='lead'>XII Curso de Verano Castorcitos <br>" +
	"UTP 2016. </p> En el que se impartiran actividades físicas recreativas y culturales.<br>" +
	"En caso de ser necesario nos pueden contactar en:<br>" +
	"Área donde labora: _________________________ extensión:_________________________<br>" +
	"Teléfono de casa: ________________ Teléfono Celular del Padre o Madre: _________________<br>" +
	"Si la niña(o) tiene algún padecimiento o alergía favor<br>" +
	"de mencionarlo:_______________________________________________________________.<br>" +
	"Aunado a lo anterior, libero a la Universidad, de responsabilidad alguna en el caso  de que<br>" +
	"durante la realización del curso, ocurra algún percance, enfermedad, lesión física o<br>" +
	"padecimiento. De llegar a ocurrir, el menor cuenta con Seguridad Social en el <br>" +
	"____________________ con número de afiliación ______________________; y/o, los gastos serán <br>" +
	"cubiertos por nosotros, dejando a la Universidad Tecnológica de Puebla, a salvo de cualquier<br>" +
	"reclamación que llegue a surgir, deslindándola de cualquier otra acción legal que pudiera<br>" +
	"resultar.	" +
"</p>" +
"<br />" +
"<center><h4>A t e n t a m e n t e </h4><center>" +
"<br />" +
"<div> " +
	"<p align='left'>" +
	"_______________________<br />" +
	"<center><h4>Nombre y Firma</h4><br></center>" +
	"<center>Madre</center>" +
	"</p>" +
	"<p align='right'>" +
	"_______________________<br />" +
	"<center><h4>Nombre y Firma</h4><br></center>" +
	"<center>Padre</center>" +
	"</p>" +
"</div>" +
"<br />" +
"<p>" +
	"Nombre de la  persona autorizada para recoger a(l) la niña(o):<br />" +
	"_________________________________________________________________________________<br />" +
	"<h5>Teléfono:</h5> ______________________________________."+
    "</p>";
                
                string strContent = cadenaFinal;
                var parsedHtmlElements = HTMLWorker.ParseToList(new StringReader(strContent), null);
                foreach (var htmlElement in parsedHtmlElements) pdfDoc.Add(htmlElement as IElement);
                pdfDoc.Close();

                Response.ContentType = "application/pdf";
                Response.AddHeader("content-disposition", "attachment; filename=Responsiva.pdf");
                System.Web.HttpContext.Current.Response.Write(pdfDoc);
                Response.Flush();
                Response.End();
            }
            catch (Exception ex)            {
                Response.Write(ex.ToString());
            }
        }

        protected void btnReglamentoPDF_Click(object sender, EventArgs e)        {
            Document pdfDoc = new Document(PageSize.A4, 10, 10, 10, 10);
            try            {
                PdfWriter.GetInstance(pdfDoc, System.Web.HttpContext.Current.Response.OutputStream);
                pdfDoc.Open();

                string cadenaFinal = "";                            //Aquí va extracción de la BD para concatenar con texto de PDF;                                
                cadenaFinal += "<TABLE BORDER='1'><TR><TD>Hijo:</TD><TD>Pedrito</TD></TR>" +
                                "<TR><TD>Responsable :</TD><TD>Ari Hair</TD></TR>" +
                                "<TR><TD>Edad:</TD><TD>10</TD></TR></TABLE>";
                string strContent = cadenaFinal;
                var parsedHtmlElements = HTMLWorker.ParseToList(new StringReader(strContent), null);
                foreach (var htmlElement in parsedHtmlElements) pdfDoc.Add(htmlElement as IElement);
                pdfDoc.Close();

                Response.ContentType = "application/pdf";
                Response.AddHeader("content-disposition", "attachment; filename=Reglamento.pdf");
                System.Web.HttpContext.Current.Response.Write(pdfDoc);
                Response.Flush();
                Response.End();
            }
            catch (Exception ex)            {
                Response.Write(ex.ToString());
            }
        }

    }//FIN CLASS
}//FIN NAME