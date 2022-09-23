<%@ Page Title="" Language="C#" MasterPageFile="~/General.Master" AutoEventWireup="true" CodeBehind="Asesor.aspx.cs" Inherits="PanelAdministracion.Asesor" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="content2" runat="server">
    <div class="">
					<div class="page-title">
						<div class="title_left">
							<h3>Asesoría Comercial</h3>
						</div>

						<div class="title_right">
							<div class="col-md-5 col-sm-5  form-group pull-right top_search">
								<div class="input-group">
									<input type="text" class="form-control" placeholder="Buscar por..."/>
									<span class="input-group-btn">
										<button class="btn btn-default" type="button">Ir</button>
									</span>
								</div>
							</div>
						</div>
					</div>
					<div class="clearfix"></div>
					<form id="form2" data-parsley-validate="" class="form-horizontal form-label-left" runat="server">
					<div class="row">
						<div class="col-md-12 col-sm-12 ">
							<div class="x_panel">
								<div class="x_title">
									<h2>Llena el siguiente formulario y nos comunicaremos contigo</h2>
									<ul class="nav navbar-right panel_toolbox">
										<li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a>
										</li>
										<li class="dropdown">
											<a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false"><i class="fa fa-wrench"></i></a>
											<ul class="dropdown-menu" role="menu">
												<li><a class="dropdown-item" href="#">Settings 1</a>
												</li>
												<li><a class="dropdown-item" href="#">Settings 2</a>
												</li>
											</ul>
										</li>
										<li><a class="close-link"><i class="fa fa-close"></i></a>
										</li>
									</ul>
									<div class="clearfix"></div>
								</div>
								<div class="x_content">

										<div class="item form-group">
											<asp:Label ID="Label1" runat="server" Text="Nombre/Razón Social" ValidateRequestMode="Enabled" AssociatedControlID="txtNombre" CssClass="col-form-label col-md-3 col-sm-3 label-align"></asp:Label><span class="required">*</span>
											<div class="col-md-6 col-sm-6 ">
												<asp:TextBox ID="txtNombre" runat="server" Cssclass="form-control"></asp:TextBox>
											</div>
										</div>
										<div class="item form-group">
											<asp:Label ID="Label2" runat="server" Text="¿Sobre qué servicio requieres asesoría?" ValidateRequestMode="Enabled" AssociatedControlID="txtDescripcion" CssClass="col-form-label col-md-3 col-sm-3 label-align"></asp:Label><span class="required">*</span>
											<div class="col-md-6 col-sm-6 ">
												<asp:TextBox ID="txtDescripcion" runat="server" Cssclass="form-control"></asp:TextBox>
											</div>
										</div>
										<div class="item form-group">
											<asp:Label ID="Label3" runat="server" Text="Dirección" ValidateRequestMode="Enabled" AssociatedControlID="txtDireccion" CssClass="col-form-label col-md-3 col-sm-3 label-align"></asp:Label><span class="required">*</span>
											<div class="col-md-6 col-sm-6 ">
												<asp:TextBox ID="txtDireccion" runat="server" Cssclass="form-control"></asp:TextBox>
											</div>
										</div>
										<div class="item form-group">
											<asp:Label ID="Label4" runat="server" Text="Teléfono" ValidateRequestMode="Enabled" AssociatedControlID="txtTelefono" CssClass="col-form-label col-md-3 col-sm-3 label-align"></asp:Label>
											<div class="col-md-6 col-sm-6 ">
												<asp:TextBox ID="txtTelefono" runat="server" Cssclass="form-control" TextMode="Number" MaxLength="3"></asp:TextBox>
											</div>
										</div>
										<div class="item form-group">
											<asp:Label ID="Label6" runat="server" Text="Email" ValidateRequestMode="Enabled" AssociatedControlID="txtEmail" CssClass="col-form-label col-md-3 col-sm-3 label-align"></asp:Label>
											<div class="col-md-6 col-sm-6 ">
												<asp:TextBox ID="txtEmail" runat="server" Cssclass="form-control" TextMode="Email"></asp:TextBox>
											</div>
										</div>

										<div class="ln_solid"></div>
										<div class="form-group row">
											<div class="col-md-9 col-sm-9  offset-md-3">
												<asp:Button ID="btnBorrar" runat="server" Text="Borrar Datos" CssClass="btn btn-primary" OnClick="btnBorrar_Click"/>
												<asp:Button ID="btnIngresar" runat="server" Text="Solicitar Asesoría" CssClass="btn btn-success" OnClick="btnIngresar_Click"/>
											</div>
										</div>

									<%--</form>--%>
									</div>	
								</div>
							</div>
								
						</div>
							
					</form>
				</div>
</asp:Content>
