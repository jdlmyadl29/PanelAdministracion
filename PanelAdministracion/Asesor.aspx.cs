using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PanelAdministracion
{
    public partial class Asesor : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnBorrar_Click(object sender, EventArgs e)
        {
            txtNombre.Text = "";
            txtDescripcion.Text = "";
            txtDireccion.Text = "";
            txtTelefono.Text = "";
            txtEmail.Text = "";

        }

        protected void btnIngresar_Click(object sender, EventArgs e)
        {
            Response.Write("<script>alert('Datos enviados con éxito')</script>");
        }
    }
}