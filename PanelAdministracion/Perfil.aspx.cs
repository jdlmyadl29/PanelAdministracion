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
    public partial class Perfil : System.Web.UI.Page
    {
        private Validacion objValidacion = new Validacion();
        DataTable dt;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                actualizarGrid(0);
                cargarDatos();
            }
        }
        void Page_PreInit(Object sender, EventArgs e)
        {
            if (Session["TipoUsuario"].ToString() == "ASISTENTE VENTAS")
            {
                this.MasterPageFile = "~/Sesion_Staff.Master";
            }

        }

        private void actualizarGrid(int num)
        {
            string consulta = "";
            if (num == 0)
            {
                consulta = "SELECT * FROM usuario WHERE ID=" + Session["IdUsuario"].ToString();
                GridView1.DataSource = objValidacion.traer_Datos(consulta);
                GridView1.DataBind();
            }
            else
            {
                btnModificar.Visible = false;
                consulta = "SELECT * FROM usuario WHERE ID=-1";
                GridView1.DataSource = objValidacion.traer_Datos(consulta);
                GridView1.DataBind();
            }


        }

        protected void btnModificar_Click(object sender, EventArgs e)
        {
            actualizarGrid(1);
            
        }

        private void cargarDatos()
        {
            string consulta = "SELECT * FROM usuario WHERE ID=" + Session["IdUsuario"].ToString();
            dt = new DataTable();
            dt = objValidacion.traer_Datos(consulta);
            txtNick.Text = dt.Rows[0][2].ToString();
            txtNombre.Text = dt.Rows[0][1].ToString();
            txtDireccion.Text = dt.Rows[0][6].ToString();
            txtTelefono.Text = dt.Rows[0][5].ToString();
        }

        protected void btnCancelar_Click(object sender, EventArgs e)
        {
            actualizarGrid(0);
            cargarDatos();
        }

        protected void btnGuardar_Click(object sender, EventArgs e)
        {
            string campos = "Nombre='" + txtNombre.Text.ToString() + "',Nick='" + txtNick.Text.ToString();
            campos += "',Telefono='" + txtTelefono.Text.ToString() + "',Direccion='" + txtDireccion.Text.ToString() + "'";
            string valores = "ID=" + Session["IdUsuario"].ToString();
            bool respuesta = objValidacion.ejecutar_MySQL(campos, valores, "usuario", "UPDATE", "");
            if (respuesta == true)
            {
                Response.Write("<script>alert('Datos Modificados con Exito!')</script>");
                actualizarGrid(0);
                cargarDatos();
            }
            else
            {
                Response.Write("<script>alert('Error al modificar los datos')</script>");
            }
        }
    }
}