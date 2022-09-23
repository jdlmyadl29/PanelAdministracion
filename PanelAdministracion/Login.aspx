<%@ Page Title="" Language="C#" MasterPageFile="~/General.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="PanelAdministracion.Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="content2" runat="server">
    <div class="login">
      <a class="hiddenanchor" id="signup"></a>
      <a class="hiddenanchor" id="signin"></a>

      <div class="login_wrapper">
        <div class="animate form login_form">
          <section class="login_content">
            <form id="form1" runat="server">
              <h1>Iniciar Sesión</h1>
              <div>
                <asp:TextBox ID="txtUsuario" CssClass="form-control" runat="server"></asp:TextBox>
              </div>
              <div>
                <asp:TextBox ID="txtClave" CssClass="form-control" runat="server" TextMode="Password"></asp:TextBox>
              </div>
              <div>
                <a class="reset_pass" href="#">¿Olvidaste tu contraseña?</a>
                <asp:Button ID="btnIngresar" CssClass="btn btn-success submit" runat="server" Text="Ingresar" OnClick="btnIngresar_Click" />
                
              </div>

              <div class="clearfix"></div>

              <div class="separator">
                <div class="clearfix"></div>
                <br />

                <div>
      
                  <p><i class="fa fa-wrench"></i> Servicios Digitales S.A</p>
                </div>
              </div>
            </form>
          </section>
        </div>
      </div>
    </div>
</asp:Content>
