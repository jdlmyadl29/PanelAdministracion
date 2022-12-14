<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FormularioProducto.aspx.cs" Inherits="PanelAdministracion.FormularioProducto" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
<meta charset="utf-8"/>
<meta http-equiv="X-UA-Compatible" content="IE=edge"/>
<meta name="viewport" content="width=device-width, initial-scale=1"/>
    <!-- Bootstrap -->
    <link href="Content/bootstrap.min.css" rel="stylesheet" type="text/css"/>
    <!-- Font Awesome -->
    <link href="Extras/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css"/>
    <!-- Custom Theme Style -->
    <link href="build/css/custom.min.css" rel="stylesheet" type="text/css"/>
    <!-- NProgress -->
	<link href="Extras/vendors/nprogress/nprogress.css" rel="stylesheet"/>
	<!-- iCheck -->
	<link href="Extras/vendors/iCheck/skins/flat/green.css" rel="stylesheet"/>
	<!-- bootstrap-wysiwyg -->
	<link href="Extras/vendors/google-code-prettify/bin/prettify.min.css" rel="stylesheet"/>
	<!-- Select2 -->
	<link href="Extras/vendors/select2/dist/css/select2.min.css" rel="stylesheet"/>
	<!-- Switchery -->
	<link href="Extras/vendors/switchery/dist/switchery.min.css" rel="stylesheet"/>
	<!-- starrr -->
	<link href="Extras/vendors/starrr/dist/starrr.css" rel="stylesheet"/>
	<!-- bootstrap-daterangepicker -->
	<link href="Extras/vendors/bootstrap-daterangepicker/daterangepicker.css" rel="stylesheet"/>
    <script src="Scripts/jquery-3.4.1.min.js"></script>
    <script src="build/js/chosen.jquery.min.js"></script>
    <link href="https://cdnjs.cloudflare.com/ajax/libs/chosen/1.8.7/chosen.min.css" rel="stylesheet"/>
    <title></title>
</head>
<body class="bg-white">
	<div class="container body">
		<div class="main_container">
			<div class="right_col" role="main">
				<div class="">
					<div class="page-title">
						<div class="title_left">
							<h3>Ingreso de productos</h3>
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
									<h2>Ingresa la información del Producto</h2>
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
											<asp:Label ID="Label1" runat="server" Text="Código" ValidateRequestMode="Enabled" AssociatedControlID="txtCodigo" CssClass="col-form-label col-md-3 col-sm-3 label-align"></asp:Label><span class="required">*</span>
											<div class="col-md-6 col-sm-6 ">
												<asp:TextBox ID="txtCodigo" runat="server" Cssclass="form-control"></asp:TextBox>
											</div>
										</div>
										<div class="item form-group">
											<asp:Label ID="Label2" runat="server" Text="Descripción" ValidateRequestMode="Enabled" AssociatedControlID="txtDescripcion" CssClass="col-form-label col-md-3 col-sm-3 label-align"></asp:Label><span class="required">*</span>
											<div class="col-md-6 col-sm-6 ">
												<asp:TextBox ID="txtDescripcion" runat="server" Cssclass="form-control"></asp:TextBox>
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
												<asp:TextBox ID="txtDescuento" runat="server" Cssclass="form-control" TextMode="Number" MaxLength="3"></asp:TextBox>
											</div>
										</div>
										<div class="item form-group">
											<asp:Label ID="Label6" runat="server" Text="Precio Final" ValidateRequestMode="Enabled" AssociatedControlID="txtFinal" CssClass="col-form-label col-md-3 col-sm-3 label-align"></asp:Label>
											<div class="col-md-6 col-sm-6 ">
												<asp:TextBox ID="txtFinal" runat="server" Cssclass="form-control"  ReadOnly="true" Enabled="False"></asp:TextBox>
											</div>
										</div>
										<div class="item form-group">
											<label class="col-form-label col-md-3 col-sm-3 label-align">Disponibilidad</label>
											<div class="col-md-6 col-sm-6 ">
												<div id="gender" class="btn-group" data-toggle="buttons">
													<label class="btn btn-success" data-toggle-class="btn-primary" data-toggle-passive-class="btn-default">
														<input type="radio" name="gender" value="male" class="join-btn"/> &nbsp; Disponible &nbsp;
													</label>
													<label class="btn btn-danger" data-toggle-class="btn-primary" data-toggle-passive-class="btn-default">
														<input type="radio" name="gender" value="female" class="join-btn"/> Agotado
													</label>
												</div>
											</div>
										</div>
										
										<div class="ln_solid"></div>

									<%--</form>--%>
									</div>	
								</div>
							</div>
								<div class="col-md-6 ">
									<div class="x_panel">
										<div class="x_title">
											<h2>Datos adicionales</h2>
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
											<br />
												<div class="form-group row">
													<label class="control-label col-md-3 col-sm-3 ">Publicar</label>
													<div class="col-md-9 col-sm-9 ">
														<div class="">
															<label>
																<input type="checkbox" class="js-switch" checked />
															</label>
														</div>
													</div>
												</div>
												<div class="item form-group">
													<asp:Label ID="Label5" runat="server" Text="Stock" ValidateRequestMode="Enabled" AssociatedControlID="txtStock" CssClass="col-form-label col-md-3 col-sm-3 label-align"></asp:Label>
													<div class="col-md-6 col-sm-6 ">
														<asp:TextBox ID="txtStock" runat="server" Cssclass="form-control"></asp:TextBox>
													</div>
												</div>
												<div class="item form-group">
													<asp:Label ID="Label7" runat="server" Text="Foto Producto" ValidateRequestMode="Enabled" AssociatedControlID="FileUpload1" CssClass="col-form-label col-md-3 col-sm-3 label-align"></asp:Label>
													<div class="col-md-6 col-sm-6 ">
														<asp:FileUpload ID="FileUpload1" runat="server"/>
													</div>
												</div>
										</div>
									</div>

								</div>
						</div>
							<div class="col-md-12 col-sm-12 ">
							<div class="x_panel">
								<div class="x_title">
									<h2>Descripción larga del Producto</h2>
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
									<div id="alerts"></div>
									<div class="btn-toolbar editor" data-role="editor-toolbar" data-target="#editor-one">
										<div class="btn-group">
											<a class="btn dropdown-toggle" data-toggle="dropdown" title="Font"><i class="fa fa-font"></i><b class="caret"></b></a>
											<ul class="dropdown-menu">
											</ul>
										</div>

										<div class="btn-group">
											<a class="btn dropdown-toggle" data-toggle="dropdown" title="Font Size"><i class="fa fa-text-height"></i>&nbsp;<b class="caret"></b></a>
											<ul class="dropdown-menu">
												<li>
													<a data-edit="fontSize 5">
														<p style="font-size:17px">Huge</p>
													</a>
												</li>
												<li>
													<a data-edit="fontSize 3">
														<p style="font-size:14px">Normal</p>
													</a>
												</li>
												<li>
													<a data-edit="fontSize 1">
														<p style="font-size:11px">Small</p>
													</a>
												</li>
											</ul>
										</div>

										<div class="btn-group">
											<a class="btn" data-edit="bold" title="Bold (Ctrl/Cmd+B)"><i class="fa fa-bold"></i></a>
											<a class="btn" data-edit="italic" title="Italic (Ctrl/Cmd+I)"><i class="fa fa-italic"></i></a>
											<a class="btn" data-edit="strikethrough" title="Strikethrough"><i class="fa fa-strikethrough"></i></a>
											<a class="btn" data-edit="underline" title="Underline (Ctrl/Cmd+U)"><i class="fa fa-underline"></i></a>
										</div>

										<div class="btn-group">
											<a class="btn" data-edit="insertunorderedlist" title="Bullet list"><i class="fa fa-list-ul"></i></a>
											<a class="btn" data-edit="insertorderedlist" title="Number list"><i class="fa fa-list-ol"></i></a>
											<a class="btn" data-edit="outdent" title="Reduce indent (Shift+Tab)"><i class="fa fa-dedent"></i></a>
											<a class="btn" data-edit="indent" title="Indent (Tab)"><i class="fa fa-indent"></i></a>
										</div>

										<div class="btn-group">
											<a class="btn" data-edit="justifyleft" title="Align Left (Ctrl/Cmd+L)"><i class="fa fa-align-left"></i></a>
											<a class="btn" data-edit="justifycenter" title="Center (Ctrl/Cmd+E)"><i class="fa fa-align-center"></i></a>
											<a class="btn" data-edit="justifyright" title="Align Right (Ctrl/Cmd+R)"><i class="fa fa-align-right"></i></a>
											<a class="btn" data-edit="justifyfull" title="Justify (Ctrl/Cmd+J)"><i class="fa fa-align-justify"></i></a>
										</div>

										<div class="btn-group">
											<a class="btn dropdown-toggle" data-toggle="dropdown" title="Hyperlink"><i class="fa fa-link"></i></a>
											<div class="dropdown-menu input-append">
												<input class="span2" placeholder="URL" type="text" data-edit="createLink" />
												<button class="btn" type="button">Add</button>
											</div>
											<a class="btn" data-edit="unlink" title="Remove Hyperlink"><i class="fa fa-cut"></i></a>
										</div>

										<div class="btn-group">
											<a class="btn" title="Insert picture (or just drag & drop)" id="pictureBtn"><i class="fa fa-picture-o"></i></a>
											<input type="file" data-role="magic-overlay" data-target="#pictureBtn" data-edit="insertImage" />
										</div>

										<div class="btn-group">
											<a class="btn" data-edit="undo" title="Undo (Ctrl/Cmd+Z)"><i class="fa fa-undo"></i></a>
											<a class="btn" data-edit="redo" title="Redo (Ctrl/Cmd+Y)"><i class="fa fa-repeat"></i></a>
										</div>
									</div>
									<asp:TextBox ID="txtParrafo" CssClass="editor-wrapper" runat="server" TextMode="MultiLine" Width="700px" ></asp:TextBox>

									<br />
									<div class="ln_solid"></div>
										<div class="form-group row">
											<div class="col-md-9 col-sm-9  offset-md-3">
												<asp:Button ID="btnBorrar" runat="server" Text="Borrar Datos" CssClass="btn btn-primary" OnClick="btnBorrar_Click"/>
												<asp:Button ID="btnIngresar" runat="server" Text="Ingresar Producto" CssClass="btn btn-success" OnClick="btnIngresar_Click"/>
											</div>
										</div>

								</div>
							</div>
						</div>
					</form>
					</div><!--aqui-->
				</div>
			</div>
		</div>
     <!-- jQuery -->
    <script src="Scripts/jquery-3.4.1.min.js"></script>
    <!-- Bootstrap -->
    <script src="Extras/bootstrap/dist/js/bootstrap.bundle.min.js"></script>
    <!-- FastClick -->
    <script src="Extras/fastclick/lib/fastclick.js"></script>
    <!-- Custom Theme Scripts -->
    <script src="build/js/custom.min.js"></script>
	<!-- Switchery -->
	<script src="Extras/switchery/dist/switchery.min.js"></script>
	<!-- NProgress -->
	<script src="Extras/nprogress/nprogress.js"></script>
	<!-- bootstrap-progressbar -->
	<script src="Extras/bootstrap-progressbar/bootstrap-progressbar.min.js"></script>
	<!-- bootstrap-wysiwyg -->
	<script src="Extras/bootstrap-wysiwyg/js/bootstrap-wysiwyg.min.js"></script>
	<script src="Extras/jquery.hotkeys/jquery.hotkeys.js"></script>
	<script src="Extras/vendors/google-code-prettify/src/prettify.js"></script>
	<!-- Select2 -->
	<script src="Extras/select2/dist/js/select2.full.min.js"></script>
	<!-- Parsley -->
	<script src="Extras/parsleyjs/dist/parsley.min.js"></script>
	<!-- Autosize -->
	<script src="Extras/autosize/dist/autosize.min.js"></script>
	<!-- starrr -->
	<script src="Extras/starrr/dist/starrr.js"></script>
</body>
</html>