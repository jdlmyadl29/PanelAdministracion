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
    public partial class DetalleUsuario : System.Web.UI.Page
    {
        private DataTable dt;
        Validacion objValidacion = new Validacion();
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
            dt = objValidacion.traer_Datos("SELECT * FROM servicio_digital WHERE ID=" + Session["IdProducto"].ToString());
            lblDescripcion.Text = dt.Rows[0][2].ToString();
            lblDescripcion2.Text = dt.Rows[0][2].ToString();
            lblParrafo.Text = dt.Rows[0][3].ToString();
            lblPrecio.Text = dt.Rows[0][4].ToString();
            lblFinal.Text = dt.Rows[0][4].ToString();
            string foto = "~/" + dt.Rows[0][5].ToString();
            Image1.ImageUrl = foto;

        }

        protected void linkAgregar_Click(object sender, EventArgs e)
        {
            Response.Write("<script>alert('¡Servicio agregado al carrito de compras!')</script>");
        }
    }
}