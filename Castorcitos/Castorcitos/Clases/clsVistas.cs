using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Windows;
using System.Windows.Forms;

namespace Castorcitos.Clases
{
    public class clsVistas
    {
        public void VisualisaMensaje(String Mensaje)        {
            MessageBox.Show(Mensaje, "Correcto", MessageBoxButtons.OK, MessageBoxIcon.Exclamation);
        }

        public void VisualizaMensajeError(String mensajes)        {
            MessageBox.Show(mensajes, "Error", MessageBoxButtons.OK, MessageBoxIcon.Error);
        }

        public void VisualizaMensajeAdvertencia(String mensajes)        {
            MessageBox.Show(mensajes, "Advertencia", MessageBoxButtons.OK, MessageBoxIcon.Exclamation);
        }

        public void Cuadro_Dialogo(String Mensaje)        {
            MessageBox.Show(Mensaje, "Información", MessageBoxButtons.OK, MessageBoxIcon.Information);
        }

        /*
        public void MostrarAlumno(ArrayList NombrePac, ComboBox Pac)
        {
            Pac.Items.Clear();
            for (int Rec = 0; Rec < NombrePac.Count; Rec++)
            {
                Pac.Items.Add(NombrePac[Rec]);
            }
        }

        public void MostrarAsiento(ArrayList Asiento, ComboBox Doc)
        {
            Doc.Items.Clear();
            for (int Rec = 0; Rec < Asiento.Count; Rec++)
            {
                Doc.Items.Add(Asiento[Rec]);
            }
        }

        public void MostrarMedicina(ArrayList NombreMedicamento, ComboBox Med)
        {
            Med.Items.Clear();
            for (int Rec = 0; Rec < NombreMedicamento.Count; Rec++)
            {
                Med.Items.Add(NombreMedicamento[Rec]);
            }
        }
         */

    }//FIN CLASS
}//FIN NAME