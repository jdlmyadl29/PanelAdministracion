using PanelAdministracion.Services;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.Odbc;
using System.Web.Script.Services;

namespace PanelAdministracion
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        Validacion objValidacion = new Validacion();
        private string id = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                actualizarDatos();
            }
            
        }
        void Page_PreInit(Object sender, EventArgs e)
        {
            if (Session["TipoUsuario"].ToString() == "ASISTENTE VENTAS")
            {
                this.MasterPageFile = "~/Sesion_Staff.Master";
            }
            
        }
        private void actualizarDatos()
        {
            string consulta = "SELECT ID, Fecha, Propietario, Celular, Descripcion FROM servicio WHERE Reparado=0";
            GridView1.DataSource = objValidacion.traer_Datos(consulta);
            GridView1.DataBind();
            string consulta2 = "SELECT DISTINCT Identificacion FROM servicio";
            ddlIdenti.DataSource = objValidacion.traer_Datos(consulta2);
            ddlIdenti.DataTextField = "Identificacion";
            ddlIdenti.DataBind();
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
        protected void btnCerrar_Click(object sender, EventArgs e)
        {
            actualizarDatos();
        }
        protected void linkBuscar_Click(object sender, EventArgs e)
        {
            string consulta = "SELECT ID, Fecha, Propietario, Celular, Descripcion FROM servicio WHERE Identificacion='";
            consulta += ddlIdenti.SelectedItem.ToString() + "'";
            GridView1.DataSource = objValidacion.traer_Datos(consulta);
            GridView1.DataBind();
        }

    }
}