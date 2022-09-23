using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using PanelAdministracion.Services;

namespace PanelAdministracion
{
    public partial class EcommerceCliente : System.Web.UI.Page
    {
        Validacion objValidacion = new Validacion();
        private string idProducto = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                actualizarGrid();
            }
        }
        private void actualizarGrid()
        {
            string consulta = "SELECT * FROM servicio_digital";
            GridView1.DataSource = objValidacion.traer_Datos(consulta);
            GridView1.DataBind();

            string consulta2 = "SELECT DISTINCT Descripcion FROM servicio_digital";
            ddlIdenti.DataSource = objValidacion.traer_Datos(consulta2);
            ddlIdenti.DataTextField = "Descripcion";
            ddlIdenti.DataBind();
        }
        protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "Select")
            {
                int index = Convert.ToInt32(e.CommandArgument);
                GridViewRow selectedRow = GridView1.Rows[index];
                Label lblStrucID = (Label)selectedRow.FindControl("lblID");
                idProducto = lblStrucID.Text;
                Session["IdProducto"] = idProducto;
                Response.Redirect("DetalleCliente.aspx");

            }
        }

        protected void linkTodos_Click(object sender, EventArgs e)
        {
            actualizarGrid();
        }

        protected void linkBuscar_Click(object sender, EventArgs e)
        {
            string consulta = "SELECT * FROM servicio_digital WHERE Descripcion='" + ddlIdenti.SelectedItem.ToString() + "'";
            GridView1.DataSource = objValidacion.traer_Datos(consulta);
            GridView1.DataBind();
        }

       
    }
}