using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Web;

namespace PanelAdministracion.Services
{
    public class Seguridad
    {
        public string encriptar_Base(string palabra)
        {
            string result = string.Empty;
            byte[] encryted = System.Text.Encoding.Unicode.GetBytes(palabra);
            result = Convert.ToBase64String(encryted);
            return result;
        }
        public string desencriptar_Base(string palabra)
        {
            string result = string.Empty;
            byte[] decryted = Convert.FromBase64String(palabra);
            result = System.Text.Encoding.Unicode.GetString(decryted);
            return result;
        }
        
        public string encriptar_ASCII(string palabra)
        {
            string codigo = "";
            string letra;
            int caracter;

            for (int i = 0; i < palabra.Length; i++)
            {
                letra = palabra.Substring(i, 1);
                caracter = Encoding.ASCII.GetBytes(letra)[0];
                codigo += Convert.ToChar(caracter - 5);
            }
            return codigo;
        }
        
        public string desencriptar_ASCII(string palabra)
        {
            string codigo = "";
            string letra;
            int caracter;

            for (int i = 0; i < palabra.Length; i++)
            {
                letra = palabra.Substring(i, 1);
                caracter = Encoding.ASCII.GetBytes(letra)[0];
                codigo += Convert.ToChar(caracter + 5);
            }
            return codigo;
        }
    }
}