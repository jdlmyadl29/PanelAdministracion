using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using PanelAdministracion.Services;

namespace PanelAdministracion
{
    public partial class Sesion_Staff : System.Web.UI.MasterPage
    {
        DataTable dt;
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
            string consulta = "SELECT Nombre, Tipo FROM usuario WHERE ID=" + Session["IdUsuario"].ToString();
            dt = objValidacion.traer_Datos(consulta);
            lblUsuario.Text = dt.Rows[0][0].ToString();
            lblTipo.Text = dt.Rows[0][1].ToString();
        }

        public string obtenerFoto()
        {
            dt = new DataTable();
            string consulta = "SELECT Foto FROM usuario WHERE ID=" + Session["IdUsuario"].ToString();
            dt = objValidacion.traer_Datos(consulta);
            return dt.Rows[0][0].ToString();
            
        }
    }
}