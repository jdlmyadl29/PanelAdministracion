using PanelAdministracion.Services;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace PanelAdministracion
{
    public partial class InfoServicio : System.Web.UI.Page
    {
        Validacion objValidacion = new Validacion();
        DataTable dt = new DataTable();
        private string estadoSer = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                actualizar();
            }
               
        }

        private void actualizar()
        {
            string consulta = "SELECT * FROM servicio WHERE ID=" + Session["IDservicio"].ToString();
            dt = objValidacion.traer_Datos(consulta);
            GridView1.DataSource = dt;
            GridView1.DataBind();
            lblCelular.Text = dt.Rows[0][7].ToString();
            lblProp.Text = dt.Rows[0][2].ToString();
            lblNumero.Text = dt.Rows[0][4].ToString();
            lblEstado.Text = dt.Rows[0][9].ToString();
            imgCelular.ImageUrl = dt.Rows[0][10].ToString();
            lblFecha.Text = dt.Rows[0][1].ToString();
            lblCuenta.Text = compararFechas(Convert.ToDateTime(dt.Rows[0][1].ToString()));
        }
        private string compararFechas(DateTime fecha)
        {
            TimeSpan fechaSpan = (DateTime.Now.Date - fecha.Date);
            return fechaSpan.TotalDays.ToString();
        }
        protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
        {
            GridView1.EditIndex = e.NewEditIndex;
            actualizar();
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            FileUpload1.Visible = true;
            btnGuardar.Visible = true;
        }

        protected void btnGuardar_Click(object sender, EventArgs e)
        {
            string archivo = "";
            if (FileUpload1.HasFile)
            {
                string ext = System.IO.Path.GetExtension(FileUpload1.FileName);
                ext = ext.ToLower();
                int tam = FileUpload1.PostedFile.ContentLength;
                if ((ext == ".png") || (ext == ".jpg") || (ext == ".jfif") || (ext == ".jpeg"))
                {
                    FileUpload1.SaveAs(Server.MapPath("~/build/images/" + FileUpload1.FileName));
                    archivo = "Foto='~/build/images/" + FileUpload1.FileName + "'";
                }
                else
                {
                    Response.Write("<script>alert('El formato de imagen no es válido')</script>");
                }
            }
            if(archivo != "")
            {
                string valor = "ID=" + Session["IDservicio"].ToString();
                bool respuesta = objValidacion.ejecutar_MySQL(archivo, valor, "servicio", "UPDATE", "");
                if(respuesta == true)
                {
                    Response.Write("<script>alert('Foto cambiada con éxito')</script>");
                    actualizar();

                }
                else
                {
                    Response.Write("<script>alert('Error al cambiar la foto')</script>");
                }
            }
        }

        protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            string campos = "";
            GridViewRow row = (GridViewRow)GridView1.Rows[e.RowIndex]; 
            TextBox descripcion = GridView1.Rows[0].FindControl("txtDescrip") as TextBox;
            TextBox valor = GridView1.Rows[0].FindControl("txtValor") as TextBox;
            DropDownList estado = GridView1.Rows[0].FindControl("ddlEstado") as DropDownList;
            estadoSer = estado.SelectedValue;

            if(descripcion.Text != "")
            {
                campos += "Descripcion='" + descripcion.Text + "'";
            }

            if(campos != "" && valor.Text != "")
            {
                campos += ",Valor_Estimado=" + valor.Text;
               
            }
            else if(campos == "" && valor.Text != "")
            {
                campos += "Valor_Estimado=" + valor.Text;
            }
            
            if (campos != "")
            {
                campos += ",Estado='" + estado.SelectedValue + "'";
            }
            else
            {
                campos += "Estado='" + estado.SelectedValue + "'";
            }
            
            editarFila(campos);  
            
        }

        private void comprobar()
        {
            if(estadoSer == "Reparado")
            {
                string campo = "Reparado=1";
                string id = "ID=" + Session["IDservicio"].ToString();
                bool respuesta = objValidacion.ejecutar_MySQL(campo, id, "servicio", "UPDATE", "");
            }
        }
        private void editarFila(string campos)
        {
            string id = "ID=" + Session["IDservicio"].ToString();
            bool respuesta = objValidacion.ejecutar_MySQL(campos, id, "servicio", "UPDATE", "");
            if(respuesta == true)
            {
                comprobar();
                GridView1.EditIndex = -1;
                actualizar();
            }
            else
            {
                Response.Write("<script>alert('Error al modificar los datos')</script>");
            }
        }

        protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            GridView1.EditIndex = -1;
            actualizar();
        }
    }
}