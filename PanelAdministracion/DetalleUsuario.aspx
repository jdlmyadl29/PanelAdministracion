<%@ Page Title="" Language="C#" MasterPageFile="~/Sesion.Master" AutoEventWireup="true" CodeBehind="DetalleUsuario.aspx.cs" Inherits="PanelAdministracion.DetalleUsuario" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="content2" runat="server">
    <div class="">
            <div class="page-title">
              <div class="title_left">
                <h3>Información del Servicio</h3>
              </div>

              <div class="title_right">
                <div class="col-md-5 col-sm-5  form-group pull-right top_search">
                  <div class="input-group">
                    <input type="text" class="form-control" placeholder="Buscar por...">
                    <span class="input-group-btn">
                      <button class="btn btn-default" type="button">Ir</button>
                    </span>
                  </div>
                </div>
              </div>
            </div>
            
            <div class="clearfix"></div>

            <div class="row">
              <div class="col-md-12 col-sm-12 ">
                <div class="x_panel">
                  <div class="x_title">
                    <h2><asp:Label ID="lblDescripcion" runat="server" Text="Label" Font-Bold="True"></asp:Label></h2>
                    <ul class="nav navbar-right panel_toolbox">
                      <li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a>
                      </li>
                      <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false"><i class="fa fa-wrench"></i></a>
                        <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
                            <a class="dropdown-item" href="#">Settings 1</a>
                            <a class="dropdown-item" href="#">Settings 2</a>
                          </div>
                      </li>
                      <li><a class="close-link"><i class="fa fa-close"></i></a>
                      </li>
                    </ul>
                    <div class="clearfix"></div>
                  </div>
                  <div class="x_content">
                      <form id="form" runat="server">
                    <div class="col-md-7 col-sm-7 ">
                      <div class="product-image">
                        <asp:Image ID="Image1" runat="server" />
                      </div>
                      <div class="product_gallery">
                        <a>
                          <img src="build/images/Productos/noimage.jpg" alt="Imagen 2" />
                        </a>
                        <a>
                          <img src="build/images/Productos/noimage.jpg" alt="Imagen 3" />
                        </a>
                        <a>
                          <img src="build/images/Productos/noimage.jpg" alt="Imagen 4" />
                        </a>
                        <a>
                          <img src="build/images/Productos/noimage.jpg" alt="Imagen 5" />
                        </a>
                      </div>
                    </div>

                    <div class="col-md-5 col-sm-5 " style="border:0px solid #e5e5e5;">

                       <h3 class="prod_title"><asp:Label ID="lblDescripcion2" runat="server" Text="Label"></asp:Label></h3>

                      <p><asp:Label ID="lblParrafo" runat="server" Text="Label"></asp:Label></p>

                      <br />
                        <div class="">
                            <h2>Precio/Licencia</h2>
                            <span class="price-tax">$<asp:Label ID="lblPrecio" runat="server" Text="Label"></asp:Label></span>
                        </div>
                        
                      <div class="">
                        <div class="product_price">
                            <span class="price-tax">Precio final</span>
                          <h1 class="price">$<asp:Label ID="lblFinal" runat="server" Text="Label"></asp:Label></h1>
                         
                          <br>
                        </div>
                      </div>
                    
                       <br />
                        <div class="item form-group">
                            <asp:LinkButton ID="linkAgregar" runat="server" CssClass="btn btn-success" OnClick="linkAgregar_Click">Agregar al carrito
                                <i class="fa fa-shopping-cart"></i>
                            </asp:LinkButton>
                        </div>
                      <div class="product_social">
                        <ul class="list-inline display-layout">
                          <li><a href="https://www.facebook.com/todoparatucelulartecnologia" target="_blank"><i class="fa fa-facebook-square"></i></a>
                          </li>
                          <li><a href="#"><i class="fa fa-twitter-square"></i></a>
                          </li>
                          <li><a href="#"><i class="fa fa-envelope-square"></i></a>
                          </li>
                        </ul>
                      </div>
                     </div>
                        </form>
                     </div>     
                  </div>
                </div>
              </div>
            </div>
</asp:Content>
