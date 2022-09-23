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
    public partial class Login : System.Web.UI.Page
    {
        Validacion objValidacion = new Validacion();
        DataTable dt;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnIngresar_Click(object sender, EventArgs e)
        {
            dt = new DataTable();
            string consulta = "SELECT ID, Tipo FROM usuario WHERE Nick='" + txtUsuario.Text.ToString() + "' AND Clave='" + txtClave.Text.ToString() + "'";
            dt = objValidacion.traer_Datos(consulta);
            if(dt.Rows.Count > 0)
            {
                Session["IdUsuario"] = dt.Rows[0][0].ToString();
                Session["TipoUsuario"] = dt.Rows[0][1].ToString();
                Response.Redirect("Ecommerce.aspx");
            }
            else
            {
                Response.Write("<script>alert('El Correo o la contraseña son incorrectos')</script>");
            }
            
        }
    }
}