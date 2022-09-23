using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using PanelAdministracion.Services;

namespace PanelAdministracion
{
    public partial class Ecommerce : System.Web.UI.Page
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
            string consulta = "SELECT * FROM servicio_digital WHERE ID < 4";
            GridView1.DataSource = objValidacion.traer_Datos(consulta);
            GridView1.DataBind();

        }

        protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "Select")
            {
                

            }
        }

        protected void linkTodos_Click(object sender, EventArgs e)
        {
            actualizarGrid();
        }
    }
}
