using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace _20172578091
{
    public partial class parcial : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void palabrasB_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void palabrasA_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
        public void procesar(String frase)
        {
            String[] words = frase.Split(' ');
            char[] ordenar;
            String ordenado;
            int tamanio = 0;
            //Array.Sort(words);
            var resultado = from datos in words orderby datos select datos;
            foreach (String dato in resultado)
            {
                tamanio = dato.Length;
                if (dato.ToLower().Contains('e') || dato.ToLower().Contains("so"))
                {                    
                    ordenar = dato.ToCharArray();
                    Array.Reverse(ordenar);
                    ordenado = new String(ordenar);
                    palabrasA.Items.Add(ordenado);
                    //palabrasA.Items.Add(pos.ToString());
                    if (tamanio > 3 && ordenar[3] != 'o')
                    {
                        palabrasB.Items.Add(ordenado);
                    }

                }
            }

        }
        protected void boton_Click(object sender, EventArgs e)
        {
            String frase = txtFrase.Text;
            procesar(frase);
        }
        protected void txtFrase_TextChanged(object sender, EventArgs e)
        {

        }
    }
}