using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using PanelAdministracion.Services;

namespace PanelAdministracion.Services
{
    public class Validacion
    {
        private DataTable dt;
        private Conexion objConexion = new Conexion();

        public DataTable traer_Datos(string consulta)
        {
            dt = new DataTable();
            dt = objConexion.consultar(consulta);
            return dt;
        }
        public bool ejecutar_MySQL(string campos, string valores, string origen, string accion, string condicion)
        {
            bool respuesta = false;
            string sentencia = "";
            switch (accion)
            {
                case "INSERT":
                    if (validar_Campos(condicion) == false)
                    {
                        sentencia = "INSERT INTO " + origen + "(" + campos + ") " + "VALUES(" + valores + ")";
                    }
                    break;
                case "UPDATE":
                    sentencia = "UPDATE " + origen + " SET " + campos + " WHERE " + valores;
                    break;
                case "DELETE":   
                    sentencia = "DELETE FROM " + origen + " WHERE " + valores;  
                break;
            }
            respuesta = objConexion.generar_Sentencias(sentencia);
            return respuesta;
        }
        public bool validar_Campos(string condicion)
        {
            bool respuesta = false; ;
            if (condicion != "")
            {
                dt = new DataTable();
                dt = objConexion.consultar(condicion);
              
                if (dt.Rows.Count > 0)
                {
                    respuesta = true;
                }

            }
            return respuesta;
        }
    }
}