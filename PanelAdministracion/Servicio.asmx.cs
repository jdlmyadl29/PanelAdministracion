using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;
using System.Data.Odbc;
using System.Data;
using System.Web.Script.Services;

namespace PanelAdministracion
{
    /// <summary>
    /// Descripción breve de Servicio
    /// </summary>
    [WebService(Namespace = "http://tempuri.org/")]
    [WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
    [System.ComponentModel.ToolboxItem(false)]
    // Para permitir que se llame a este servicio web desde un script, usando ASP.NET AJAX, quite la marca de comentario de la línea siguiente. 
    // [System.Web.Script.Services.ScriptService]
    public class Servicio : System.Web.Services.WebService
    {

        [WebMethod]
        public string HelloWorld()
        {
            return "Hola a todos";
        }

        [WebMethod]
        [ScriptMethod()]
        public List<string> get(string prefixText, int count)
        {
            string cadena = "DRIVER=MySQL ODBC 8.0 ANSI Driver;SERVER=127.0.0.1;UID=root;PWD=;DATABASE=dbadmin;PORT=3306";
            OdbcConnection con = new OdbcConnection(cadena);
            List<string> lista = new List<string>();

            OdbcCommand cmd = new OdbcCommand();
            cmd.CommandText = "SELECT Identificacion FROM servicio WHERE Identificacion LIKE '% @prefixText+ %'";
            cmd.Connection = con;
            con.Open();
            cmd.Parameters.AddWithValue("@prefixText", prefixText);
            using (OdbcDataReader rd = cmd.ExecuteReader())
            {
                while (rd.Read())
                {
                    lista.Add(rd["Identificacion"].ToString());
                }
            }
            con.Close();

            return lista;
        }
        [WebMethod]
        public List<string> getDocs(string username)
        {
            List<string> result = new List<string>();
            using (OdbcConnection con = new OdbcConnection("DRIVER=MySQL ODBC 8.0 ANSI Driver;SERVER=127.0.0.1;UID=root;PWD=;DATABASE=dbadmin;PORT=3306"))
            {
                using (OdbcCommand cmd = new OdbcCommand("SELECT Identificacion FROM servicio WHERE Identificacion LIKE '%'+@SearchText+'%'", con))
                {
                    con.Open();
                    cmd.Parameters.AddWithValue("@SearchText", username);
                    OdbcDataReader dr = cmd.ExecuteReader();
                    while (dr.Read())
                    {
                        result.Add(dr["Identificacion"].ToString());
                    }
                    return result;
                }
            }
        }
    }
}
