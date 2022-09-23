<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Formulario.aspx.cs" Inherits="PanelAdministracion.Formulario" %>

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
    <link href="build/css/custom.min.css" rel="stylesheet" type="text/css"/>
    <script src="Scripts/jquery-3.4.1.min.js"></script>
    <script src="build/js/chosen.jquery.min.js"></script>
    <link href="https://cdnjs.cloudflare.com/ajax/libs/chosen/1.8.7/chosen.min.css" rel="stylesheet"/>
    <title></title>
</head>
<body class="bg-white">
        <form id="form1" runat="server">
        <span class="section">Ingresar Nuevo Servicio</span>
        <div class="field item form-group">
            <label class="col-form-label col-md-3 col-sm-3  label-align">Nombre Propietario<span
                class="required">*</span></label>
            <div class="col-md-6 col-sm-6">
            <asp:TextBox ID="txtPropietario" runat="server" AutoPostBack="true"></asp:TextBox>
            </div>
        </div>
        <div class="field item form-group">
            <label class="col-form-label col-md-3 col-sm-3  label-align">Identificación Propietario<span
                class="required">*</span></label>
            <div class="col-md-6 col-sm-6">
                <asp:TextBox ID="txtIdenti" runat="server" TextMode="Number"></asp:TextBox> 
            </div>
        </div>
        <div class="field item form-group">
            <label class="col-form-label col-md-3 col-sm-3  label-align">Teléfono Propietario<span
                class="required">*</span></label>
            <div class="col-md-6 col-sm-6">
            <asp:TextBox ID="txtTelefono" runat="server" TextMode="Phone"></asp:TextBox> 
            </div>
        </div>
        <div class="field item form-group">
            <label class="col-form-label col-md-3 col-sm-3  label-align">Celular a Reparar<span
                class="required">*</span></label>
            <div class="col-md-6 col-sm-6">
            <asp:DropDownList ID="ddlCelular" runat="server" AppendDataBoundItems="True">
                <asp:ListItem Selected="True">Selecciona</asp:ListItem>
                </asp:DropDownList>
            </div>
        </div>
        <div class="field item form-group">
            <label class="col-form-label col-md-3 col-sm-3  label-align">Descripción del daño<span
                class="required">*</span></label>
            <div class="col-md-6 col-sm-6">
                <asp:TextBox ID="txtDescrip" runat="server" TextMode="MultiLine"></asp:TextBox> 
            </div>
        </div>
        <div class="field item form-group">
            <label class="col-form-label col-md-3 col-sm-3  label-align">Abona<span
                class="required">*</span></label>
            <div class="col-md-6 col-sm-6">
                <asp:TextBox ID="txtAbono" Text="0" runat="server" TextMode="Number"></asp:TextBox> 
            </div>
        </div>
        <div class="ln_solid">
            <div class="form-group">
            <div class="col-md-6 offset-md-3">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="btnAceptar" CssClass="btn-success" runat="server" Text="Aceptar" OnClick="btnAceptar_Click" />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="btnBorrar" CssClass="btn-primary" runat="server" Text="Borrar Datos" OnClick="btnBorrar_Click" />
            </div>
            </div>
        </div>
        </form>
        <script>
            $('#<%=ddlCelular.ClientID%>').chosen();
        </script>
         
     <!-- jQuery -->
    <script src="Scripts/jquery-3.4.1.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/chosen/1.8.7/chosen.jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/chosen/1.8.7/chosen.min.css"></script>
    <!-- Bootstrap -->
    <script src="Extras/bootstrap/dist/js/bootstrap.bundle.min.js"></script>
    <!-- FastClick -->
    <script src="Extras/fastclick/lib/fastclick.js"></script>
    <!-- Custom Theme Scripts -->
    <script src="build/js/custom.min.js"></script>
</body>
</html>
