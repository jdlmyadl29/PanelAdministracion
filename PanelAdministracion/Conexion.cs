using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.Odbc;

namespace PanelAdministracion
{
    public class Conexion
    {
        private static string cadena = "DRIVER=MySQL ODBC 8.0 ANSI Driver;SERVER=127.0.0.1;UID=root;PWD=;DATABASE=dbadmin;PORT=3306";
        private OdbcConnection con = new OdbcConnection(cadena);
        private OdbcCommand cmd;
        private OdbcDataAdapter da;
        private DataTable dt;
        private void conectar()
        {
            try
            {
                con.Open();
            }
            catch
            {

            }
        }

        public DataTable consultar(string consulta)
        {
            conectar();
            if (con.State == ConnectionState.Open)
            {
                dt = new DataTable();
                cmd = new OdbcCommand(consulta, con);
                da = new OdbcDataAdapter(cmd);
                da.Fill(dt);
            }
            con.Close();
            return dt;

        }
        public List<string> obtenerDocs(string cedula)
        {
            List<string> lista = new List<string>();
            conectar();
            if (con.State == ConnectionState.Open)
            {
                string query = string.Format("SELECT Identificacion FROM servicio WHERE Identificacion LIKE '%{0}%'", cedula);
                cmd = new OdbcCommand(query, con);
                OdbcDataReader rd = cmd.ExecuteReader();
                while (rd.Read())
                {
                    lista.Add(rd.GetString(0));
                }
                con.Close();
            }
            return lista;
        }
        public bool generar_Sentencias(string sentencia)
        {
            conectar();
            bool respuesta = false;
            if (con.State == ConnectionState.Open)
            {
                if (sentencia != "")
                {
                    cmd = new OdbcCommand(sentencia, con);
                    int num = cmd.ExecuteNonQuery();
                    if (num > 0)
                    {
                        respuesta = true;
                    }

                }

            }
            con.Close();
            return respuesta;
        }
    }
}
