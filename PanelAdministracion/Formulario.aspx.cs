using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using PanelAdministracion.Services;
namespace PanelAdministracion
{
    public partial class Formulario : System.Web.UI.Page
    {
        Validacion objValidacion = new Validacion();
        protected void Page_Load(object sender, EventArgs e)
        {
            cargarDrop();
            //limpiarCampos();
        }

        private void cargarDrop()
        {
            string consulta = "SELECT Modelo FROM celular";
            ddlCelular.DataSource = objValidacion.traer_Datos(consulta);
            ddlCelular.DataTextField = "Modelo";
            ddlCelular.DataBind();
        }
        private void limpiarCampos()
        {
            txtPropietario.Text = "";
            txtIdenti.Text = "";
            txtTelefono.Text = "";
            txtDescrip.Text = "";
            txtAbono.Text = "";
        }
   
        protected void btnAceptar_Click(object sender, EventArgs e)
        {
            string campos = "Fecha, Propietario, Identificacion, Telefono, Abono, Valor_Estimado, Celular, Descripcion, Estado, Foto, Reparado";
            string valores = "'" + DateTime.Now.ToString() + "','" + txtPropietario.Text.ToString() + "','";
            valores += txtIdenti.Text.ToString() + "','" + txtTelefono.Text.ToString() + "'," + txtAbono.Text.ToString();
            valores += ",0,'" + ddlCelular.SelectedItem.ToString() + "','" + txtDescrip.Text.ToString() + "','En preparacion','~/build/images/celular.jpg',0";
            if(objValidacion.ejecutar_MySQL(campos, valores, "servicio", "INSERT", ""))
            {
                Response.Write("<script>alert('Servicio ingresado con Éxito')</script>");
                limpiarCampos();
            }
            else
            {
                Response.Write("<script>alert('Ha ocurrido un error al ingresar el Servicio')</script>");
            }
        }

        protected void btnBorrar_Click(object sender, EventArgs e)
        {
            limpiarCampos();
        }
    }
}