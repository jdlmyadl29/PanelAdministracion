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
    public partial class AdminUsuarios : System.Web.UI.Page
    {
        private Validacion objValidacion = new Validacion();
        private Seguridad objSeguridad = new Seguridad();
        private string idUsuario = "";
        private string archivo = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                actualizarGrid(0);
            }
            
        }
        private void actualizarGrid(int num)
        {
            string consulta = "";
            if (num == 0)
            {
                btnNuevo.Visible = true;
                consulta = "SELECT * FROM usuario";
                GridView1.DataSource = objValidacion.traer_Datos(consulta);
                GridView1.DataBind();
            }
            else
            {
                btnNuevo.Visible = false;
                consulta = "SELECT * FROM usuario WHERE ID=-1";
                GridView1.DataSource = objValidacion.traer_Datos(consulta);
                GridView1.DataBind();
            }
            

        }
       
        protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "Select")
            {
                int index = Convert.ToInt32(e.CommandArgument);
                GridViewRow selectedRow = GridView1.Rows[index];
                Label lblStrucID = (Label)selectedRow.FindControl("lblID");
                idUsuario = lblStrucID.Text;
                bool respuesta = objValidacion.ejecutar_MySQL("", "ID=" + idUsuario, "usuario", "DELETE", "");
                if (respuesta == true)
                {
                    Response.Write("<script>alert('Usuario Eliminado con Exito')</script>");
                    actualizarGrid(0);
                }
                else
                {
                    Response.Write("<script>alert('Error al eliminar el usuario')</script>");
                }
                
            }
        }

        private void cargarFoto()
        {
            if (FileUpload1.HasFile)
            {
                lblMsg.Visible = false;
                string ext = System.IO.Path.GetExtension(FileUpload1.FileName);
                ext = ext.ToLower();
                int tam = FileUpload1.PostedFile.ContentLength;
                if ((ext == ".png") || (ext == ".jpg") || (ext == ".jfif") || (ext == ".jpeg"))
                {
                    FileUpload1.SaveAs(Server.MapPath("~/build/images/" + FileUpload1.FileName));
                    archivo = "'build/images/" + FileUpload1.FileName + "'";
                }
                else
                {
                    Response.Write("<script>alert('El formato de imagen no es válido')</script>");
                }
            }
            else
            {
                archivo = "'build/images/user.png'";
            }
        }

        protected void btnGuardar_Click(object sender, EventArgs e)
        {
            //string clave = objSeguridad.encriptar_ASCII(txtClave.Text.ToString());
            cargarFoto();
            string campos = "Nombre,Nick,Clave,Tipo,Telefono,Direccion,Foto";
            string valores = "'" + txtNombre.Text.ToString() + "','" + txtNick.Text.ToString() + "','" + txtClave.Text.ToString();
            valores += "','" + ddlTipo.SelectedItem.ToString() + "','" + txtTelefono.Text.ToString() + "','";
            valores += txtDireccion.Text.ToString() + "'," + archivo;
            string condicion = "SELECT ID FROM usuario WHERE Nick='" + txtNick.Text.ToString() + "'";
            bool respuesta = objValidacion.ejecutar_MySQL(campos, valores, "usuario", "INSERT", condicion);
            if (respuesta == true)
            {
                Response.Write("<script>alert('Usuario creado con éxito')</script>");
                actualizarGrid(0);
                limpiarDatos();
            }
            else
            {
                Response.Write("<script>alert('Ya existe un usuario con el NickName: " + txtNick.Text.ToString() + "')</script>");
            }
        }
        protected void btnNuevo_Click(object sender, EventArgs e)
        {
            actualizarGrid(1);
        }

        protected void btnTodos_Click(object sender, EventArgs e)
        {
            actualizarGrid(0);
        }

        protected void btnDefecto_Click(object sender, EventArgs e)
        {
            lblMsg.Text = "✔Foto por defecto seleccionada";
            lblMsg.Visible = true;
            
        }

        private void limpiarDatos()
        {
            txtNombre.Text = "";
            txtNick.Text = "";
            txtClave.Text = "";
            txtRepetir.Text = "";
            txtTelefono.Text = "";
            txtDireccion.Text = "";
            lblMsg.Visible = false;
            archivo = "";
        }
    }
}