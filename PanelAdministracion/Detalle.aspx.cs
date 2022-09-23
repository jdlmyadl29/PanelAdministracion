using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using PanelAdministracion.Services;
using System.Data;

namespace PanelAdministracion
{
    public partial class Detalle : System.Web.UI.Page
    {
        private DataTable dt;
        Validacion objValidacion = new Validacion();
        private double precioFinal;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                actualizarDatos();
            }
                
        }

        private void actualizarDatos()
        {
            dt = new DataTable();
            dt = objValidacion.traer_Datos("SELECT * FROM producto WHERE ID=" + Session["IdProducto"].ToString());
            lblDescripcion.Text = dt.Rows[0][2].ToString();
            txtDescripcion.Text = dt.Rows[0][2].ToString();
            txtParrafo.Text = dt.Rows[0][3].ToString();
            txtPrecio.Text = dt.Rows[0][4].ToString();
            lblFinal.Text = dt.Rows[0][6].ToString();
            txtStock.Text = dt.Rows[0][7].ToString();
            txtDescuento.Text = dt.Rows[0][5].ToString();
            string foto = "~/" + dt.Rows[0][8].ToString();
            Image1.ImageUrl = foto;

        }
        void Page_PreInit(Object sender, EventArgs e)
        {
            if (Session["TipoUsuario"].ToString() == "ASISTENTE VENTAS")
            {
                this.MasterPageFile = "~/Sesion_Staff.Master";
            }

        }

        protected void btnCambiar_Click(object sender, EventArgs e)
        {
            calcularPrecio();
            string campos = "Descripcion='" + txtDescripcion.Text.ToString() + "',Texto='" + txtParrafo.Text.ToString() + "',Precio=" + txtPrecio.Text.ToString();
            campos += ",Descuento=" + txtDescuento.Text.ToString() + ",Precio_Final=" + precioFinal.ToString() + ",Stock=" + txtStock.Text.ToString();
            string valores = "ID=" + Session["IdProducto"].ToString();
            bool respuesta = objValidacion.ejecutar_MySQL(campos, valores, "producto", "UPDATE", "");
            if (respuesta == true)
            {
                Response.Write("<script>alert('Datos modificados con Exito!')</script>");
                actualizarDatos();
            }
            else
            {
                Response.Write("<script>alert('Error al modificar los datos del Producto')</script>");
            }
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

        protected void btnEliminar_Click(object sender, EventArgs e)
        {
            string valores = "ID=" + Session["IdProducto"].ToString();
            bool respuesta = objValidacion.ejecutar_MySQL("", valores, "producto", "DELETE", "");
            if (respuesta == true)
            {
                Response.Write("<script>alert('Producto Eliminado con Exito!')</script>");
                Response.Redirect("Ecommerce.aspx");
            }
            else
            {
                Response.Write("<script>alert('Error al eliminar el Producto')</script>");
            }
        }
    }
}