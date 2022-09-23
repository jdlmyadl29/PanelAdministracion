using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using PanelAdministracion.Services;
using System.Data;
using System.Web.UI.HtmlControls;

namespace PanelAdministracion
{
    public partial class FormularioProducto : System.Web.UI.Page
    {
        private Validacion objValidacion = new Validacion();
        private string archivo = "";
        private double precioFinal;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        private void cargarFoto()
        {
            if (FileUpload1.HasFile)
            {
                string ext = System.IO.Path.GetExtension(FileUpload1.FileName);
                ext = ext.ToLower();
                int tam = FileUpload1.PostedFile.ContentLength;
                if ((ext == ".png") || (ext == ".jpg") || (ext == ".jfif") || (ext == ".jpeg"))
                {
                    FileUpload1.SaveAs(Server.MapPath("~/build/images/Productos/" + FileUpload1.FileName));
                    archivo = "'build/images/Productos/" + FileUpload1.FileName + "'";
                }
                else
                {
                    Response.Write("<script>alert('El formato de imagen no es válido')</script>");
                }
            }
            else
            {
                archivo = "'build/images/Productos/noimage.jpg'";
            }
        }

        protected void btnIngresar_Click(object sender, EventArgs e)
        {
            cargarFoto();
            calcularPrecio();
            string campos = "Codigo, Descripcion, Texto, Precio, Descuento, Precio_Final, Stock, Foto";
            string valores = "'" + txtCodigo.Text.ToString() + "','" + txtDescripcion.Text.ToString() + "','" + txtParrafo.Text.ToString();
            valores += "'," + txtPrecio.Text.ToString() + ",'" + txtDescuento.Text.ToString() + "',";
            valores += precioFinal.ToString() + "," + txtStock.Text.ToString() + "," + archivo;
            string condicion = "SELECT ID FROM producto WHERE Codigo='" + txtCodigo.Text.ToString() + "'";
            bool respuesta = objValidacion.ejecutar_MySQL(campos, valores, "producto", "INSERT", condicion);
            if (respuesta == true)
            {
                Response.Write("<script>alert('Producto ingresado con Exito!')</script>");
                limpiarDatos();
            }
            else
            {
                Response.Write("<script>alert('Ya existe un producto con el Codigo: " + txtCodigo.Text.ToString() + "')</script>");
            }
        }

        private void limpiarDatos()
        {
            txtCodigo.Text = "";
            txtDescripcion.Text = "";
            txtDescuento.Text = "";
            txtFinal.Text = "";
            txtParrafo.Text = "";
            txtPrecio.Text = "";
            txtStock.Text = "";
         
        }

        protected void btnBorrar_Click(object sender, EventArgs e)
        {
            limpiarDatos();     
        }
        
        private void calcularPrecio()
        {
            if (txtDescuento.Text == "0")
            {
                precioFinal = Convert.ToDouble(txtPrecio.Text);
            }
            else
            {
                double precio = Convert.ToDouble(txtPrecio.Text);
                precioFinal = (precio - ((precio * Convert.ToDouble(txtDescuento.Text)) / 100));
            }
        }
    }
}