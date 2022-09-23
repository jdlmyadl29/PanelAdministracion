using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Script.Services;
using PanelAdministracion.Services;

namespace PanelAdministracion
{
    public partial class Historial : System.Web.UI.Page
    {
        Validacion objValidacion = new Validacion();
        private string id = "";
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        void Page_PreInit(Object sender, EventArgs e)
        {
            if (Session["TipoUsuario"].ToString() == "ASISTENTE VENTAS")
            {
                this.MasterPageFile = "~/Sesion_Staff.Master";
            }

        }
        protected void GridView1_RowCommand(Object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "Select")
            {
                int index = Convert.ToInt32(e.CommandArgument);
                GridViewRow selectedRow = GridView1.Rows[index];
                Label lblStrucID = (Label)selectedRow.FindControl("lblID");
                id = lblStrucID.Text.ToString();
                Session["IDservicio"] = id;
                Response.Redirect("InfoServicio.aspx");

            }
        }
    
        protected void linkBuscar_Click(object sender, EventArgs e)
        {
            string fechas = Convert.ToDateTime(fecha.Value.ToString()) + "' AND '" + Convert.ToDateTime(fecha2.Value.ToString()) + "'";

            string consulta = "SELECT ID, Fecha, Propietario, Celular, Descripcion FROM servicio WHERE Fecha BETWEEN '" + fechas;
            GridView1.DataSource = objValidacion.traer_Datos(consulta);
            GridView1.DataBind();
        }

    }
}