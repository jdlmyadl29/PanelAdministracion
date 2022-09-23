<%@ Page Title="" Language="C#" MasterPageFile="~/Sesion.Master" AutoEventWireup="true" CodeBehind="Detalle.aspx.cs" Inherits="PanelAdministracion.Detalle" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="content2" runat="server">
    <div class="">
            <div class="page-title">
              <div class="title_left">
                <h3>Información del Producto</h3>
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
                    <h2><asp:Label ID="lblDescripcion" runat="server" Text="Label"></asp:Label></h2>
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
                        <div class="item form-group">
                            <asp:Label ID="Label2" runat="server" Text="Descripcion" ValidateRequestMode="Enabled" AssociatedControlID="txtDescripcion" CssClass="col-form-label col-md-3 col-sm-3 label-align"></asp:Label><span class="required">*</span>
							<div class="col-md-6 col-sm-6 ">
                                <asp:TextBox ID="txtDescripcion" runat="server" Cssclass="form-control"></asp:TextBox>
                            </div>
                        </div>
                        <div class="item form-group">
							<asp:TextBox ID="txtParrafo" runat="server" TextMode="MultiLine" Cssclass="form-control" Height="90px"></asp:TextBox>
                        </div>
                      
                      <br />
                        <div class="item form-group">
							<asp:Label ID="Label1" runat="server" Text="Stock" ValidateRequestMode="Enabled" AssociatedControlID="txtStock" CssClass="col-form-label col-md-3 col-sm-3 label-align"></asp:Label><span class="required">*</span>
							<div class="col-md-6 col-sm-6 ">
								<asp:TextBox ID="txtStock" runat="server" Cssclass="form-control" TextMode="Number"></asp:TextBox>
							</div>
						</div>
                        <div class="item form-group">
							<asp:Label ID="Label3" runat="server" Text="Precio" ValidateRequestMode="Enabled" AssociatedControlID="txtPrecio" CssClass="col-form-label col-md-3 col-sm-3 label-align"></asp:Label><span class="required">*</span>
							<div class="col-md-6 col-sm-6 ">
								<asp:TextBox ID="txtPrecio" runat="server" Cssclass="form-control"></asp:TextBox>
							</div>
						</div>
						<div class="item form-group">
							<asp:Label ID="Label4" runat="server" Text="Descuento" ValidateRequestMode="Enabled" AssociatedControlID="txtDescuento" CssClass="col-form-label col-md-3 col-sm-3 label-align"></asp:Label>
							<div class="col-md-6 col-sm-6 ">
								<asp:TextBox ID="txtDescuento" runat="server" Cssclass="form-control" TextMode="Number"></asp:TextBox>
							</div>
						</div>
                      <div class="">
                        <h2>Colores Disponibles</h2>
                        <ul class="list-inline prod_color display-layout">
                          <li>
                            <p>Verde</p>
                            <div class="color bg-green"></div>
                          </li>
                          <li>
                            <p>Azul</p>
                            <div class="color bg-blue"></div>
                          </li>
                          <li>
                            <p>Rojo</p>
                            <div class="color bg-red"></div>
                          </li>
                          <li>
                            <p>Naranja</p>
                            <div class="color bg-orange"></div>
                          </li>

                        </ul>
                      </div>
                      <br />

                      <div class="">
                        <div class="product_price">
                          <h1 class="price">$<asp:Label ID="lblFinal" runat="server" Text="Label"></asp:Label></h1>
                          <span class="price-tax">Precio final</span>
                          <br>
                        </div>
                      </div>
                       <br />
                        <div class="item form-group">
                            <asp:Button ID="btnCambiar" runat="server" CssClass="btn btn-primary" Text="Modificar Datos" OnClick="btnCambiar_Click" />
                            <asp:Button ID="btnEliminar" runat="server" CssClass="btn btn-danger" Text="Eliminar Producto" OnClick="btnEliminar_Click" />
                        </div>
                      <div class="product_social">
                        <ul class="list-inline display-layout">
                          <li><a href="#"><i class="fa fa-facebook-square"></i></a>
                          </li>
                          <li><a href="#"><i class="fa fa-twitter-square"></i></a>
                          </li>
                          <li><a href="#"><i class="fa fa-envelope-square"></i></a>
                          </li>
                          <li><a href="#"><i class="fa fa-rss-square"></i></a>
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
