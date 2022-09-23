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
    public partial class BuscarCelular : System.Web.UI.Page
    {
        private Validacion objValidacion = new Validacion();
        private DataTable dt;
        private DataTable dt2;
        private string idServicio = "";
        protected void Page_Load(object sender, EventArgs e)
        {
          
        }
        private void actualizarGrid1()
        {
            dt = new DataTable();
            string consulta = "SELECT * FROM servicio WHERE Identificacion='" + txtIdenti.Text.ToString() + "' ORDER BY Fecha DESC";
            dt = objValidacion.traer_Datos(consulta);
            GridView1.DataSource = dt;
            GridView1.DataBind();
        }
        private void actualizarDatos(string id)
        {
            dt2 = new DataTable();
            string consulta = "SELECT * FROM servicio WHERE ID=" + id;
            dt2 = objValidacion.traer_Datos(consulta);
            imgCelular.ImageUrl = dt2.Rows[0][10].ToString();
            lblFecha.Text = dt2.Rows[0][1].ToString();
            lblEstado.Text = dt2.Rows[0][9].ToString();
            lblCelular.Text = dt2.Rows[0][7].ToString();
            lblAbono.Text = dt2.Rows[0][5].ToString();
            lblValor.Text = dt2.Rows[0][6].ToString();
            lblCuenta.Text = compararFechas(Convert.ToDateTime(dt2.Rows[0][1].ToString()));
            string estado = dt2.Rows[0][11].ToString();
            if (estado == "True")
            {
                lblMsg.Text = "Puedes venir a reclamar tu celular!";
            }
            else
            {
                lblMsg.Text = "";
            }
        }
        private string compararFechas(DateTime fecha)
        {
            TimeSpan fechaSpan = (DateTime.Now.Date - fecha.Date);
            return fechaSpan.TotalDays.ToString();
        }
        protected void btnBuscar_Click(object sender, EventArgs e)
        {
            actualizarGrid1();
            Panel1.Visible = false;
        }

        protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "Select")
            {
                int index = Convert.ToInt32(e.CommandArgument);
                GridViewRow selectedRow = GridView1.Rows[index];
                Label lblStrucID = (Label)selectedRow.FindControl("lblID");
                idServicio = lblStrucID.Text;
                Panel1.Visible = true;
                actualizarDatos(idServicio);
            }
        }
    }
}