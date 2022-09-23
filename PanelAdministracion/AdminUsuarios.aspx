<%@ Page Title="" Language="C#" MasterPageFile="~/Sesion.Master" AutoEventWireup="true" CodeBehind="AdminUsuarios.aspx.cs" Inherits="PanelAdministracion.AdminUsuarios" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="content2" runat="server">
    <div class="page-title">
        <div class="title_left">
        <h3>Control de Usuarios</h3>
        </div>
    </div>
  <div class="clearfix"></div>
	<form id="form1" runat="server">
        <div class="row">
            <div class="x_panel">
      
                <div class="x_content">
                    
                    <asp:Button ID="btnNuevo" runat="server" Text="Nuevo Usuario" CssClass="btn btn-success" OnClick="btnNuevo_Click" /><asp:Button ID="btnTodos" runat="server" CssClass="btn btn-primary" Text="Ver Todos" OnClick="btnTodos_Click" />
                    <asp:GridView ID="GridView1" runat="server" GridLines="None" AutoGenerateColumns="False" ForeColor="#333333" HorizontalAlign="Center" OnRowCommand="GridView1_RowCommand" ShowFooter="True" Font-Names="Calibri" Font-Size="Medium">
                        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                        <Columns>
                        <asp:TemplateField>
                            <ItemTemplate>
                                <asp:Image ID="Image" ImageUrl='<%# Bind("Foto") %>' runat="server" BorderStyle="Ridge" ImageAlign="Left" Height="170px" Width="170px"/>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Usuarios">
                           
                            <ItemTemplate>
                            <asp:Label ID="lblID" runat="server" Text='<%# Bind("ID") %>' Visible="false"></asp:Label>
                            <br/>
                            <asp:Label ID="lblUsuario" runat="server" Text='<%# Bind("Nombre") %>'></asp:Label>
                            <br/>
                            <i class="fa fa-user"></i><asp:Label ID="lblNick" runat="server" Text='<%# Bind("Nick") %>'></asp:Label>
                            <br/>
                            <i class="fa fa-briefcase"></i><asp:Label ID="lblTipo" runat="server" Text='<%# Bind("Tipo") %>'></asp:Label>
                            <br/>
                            <i class="fa fa-phone"></i><asp:Label ID="lblCel" runat="server" Text='<%# Bind("Telefono") %>'></asp:Label>
                            <br/>
                            <i class="fa fa-building"></i><asp:Label ID="lblDireccion" runat="server" Text='<%# Bind("Direccion") %>'></asp:Label>
                            <br />
                            <p class="ratings">
                                <a href="#"><span class="fa fa-star"></span></a>
                                <a href="#"><span class="fa fa-star"></span></a>
                                <a href="#"><span class="fa fa-star"></span></a>
                                <a href="#"><span class="fa fa-star"></span></a>
                                <a href="#"><span class="fa fa-star-o"></span></a>
                            </p>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:ButtonField Text="Eliminar Usuario" CommandName="Select">
                        <ControlStyle CssClass="btn btn-danger" BorderStyle="None"></ControlStyle>
                        <FooterStyle BorderStyle="None" />
                        <HeaderStyle BorderStyle="None" />
                        <ItemStyle BorderStyle="None" />
                        </asp:ButtonField>
                               
                        </Columns>
                         
                        <EditRowStyle BackColor="#999999" Font-Size="Medium" />
                        <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                        <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" Font-Italic="True" Font-Size="Larger" />
                        <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                        <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                        <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                        <SortedAscendingCellStyle BackColor="#E9E7E2" />
                        <SortedAscendingHeaderStyle BackColor="#506C8C" />
                        <SortedDescendingCellStyle BackColor="#FFFDF8" />
                        <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
                         
                    </asp:GridView>    
                </div>
            </div>
        </div>
        
        <div class="row">
			<div class="col-md-12 col-sm-12 ">
				<div class="x_panel">
					<div class="x_title">
						<h2>Crear Nuevo Usuario</h2>
						<ul class="nav navbar-right panel_toolbox">
							<li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a>
							</li>
							<li class="dropdown">
								<a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false"><i class="fa fa-wrench"></i></a>
								<ul class="dropdown-menu" role="menu">
									<li><a class="dropdown-item" href="#">Configuracion</a>
									</li>
									
								</ul>
							</li>
							<li><a class="close-link"><i class="fa fa-close"></i></a>
							</li>
						</ul>
						<div class="clearfix"></div>
					</div>
					<div class="x_content">
						<br />
							
						<div class="item form-group">
							<label class="col-form-label col-md-3 col-sm-3 label-align">Nombre <span class="required">*</span>
							</label>
							<div class="col-md-6 col-sm-6 ">
								<asp:TextBox ID="txtNombre" Cssclass="form-control" runat="server"></asp:TextBox>
							</div>
						</div>
						<div class="item form-group">
							<label class="col-form-label col-md-3 col-sm-3 label-align">Nickname <span class="required">*</span>
							</label>
							<div class="col-md-6 col-sm-6 ">
								<asp:TextBox ID="txtNick" Cssclass="form-control" runat="server"></asp:TextBox>
							</div>
						</div>
                        <div class="item form-group">
							<label class="col-form-label col-md-3 col-sm-3 label-align">Foto de Perfil</label>
							<div class="col-md-6 col-sm-6 ">
								<asp:FileUpload ID="FileUpload1" runat="server" />
								<br />
								<asp:Button ID="btnDefecto" runat="server" CssClass="btn btn-primary" Text="Foto por defecto" OnClick="btnDefecto_Click" /><asp:Label ID="lblMsg" runat="server" Text="" Visible="false"></asp:Label>
							</div>
						</div>
						<div class="item form-group">
							<label for="middle-name" class="col-form-label col-md-3 col-sm-3 label-align">Tipo de Usuario</label>
							<div class="col-md-6 col-sm-6 ">
								<asp:DropDownList ID="ddlTipo" runat="server">
                                    <asp:ListItem>ASISTENTE VENTAS</asp:ListItem>
                                    <asp:ListItem>ADMINISTRADOR</asp:ListItem>
                                </asp:DropDownList>
							</div>
						</div>
                        <div class="item form-group">
							<label class="col-form-label col-md-3 col-sm-3 label-align">Contraseña <span class="required">*</span>
							</label>
							<div class="col-md-6 col-sm-6 ">
								<asp:TextBox ID="txtClave" Cssclass="form-control" runat="server" TextMode="Password"></asp:TextBox>
							</div>
						</div>
                        <div class="item form-group">
							<label class="col-form-label col-md-3 col-sm-3 label-align">Repite la Contraseña <span class="required">*</span>
							</label>
							<div class="col-md-6 col-sm-6 ">
								<asp:TextBox ID="txtRepetir" Cssclass="form-control" runat="server" TextMode="Password"></asp:TextBox><asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="Las contraseñas no coinciden" ControlToCompare="txtClave" ControlToValidate="txtRepetir"></asp:CompareValidator>
							</div>
						</div>
						<div class="item form-group">
							<label for="middle-name" class="col-form-label col-md-3 col-sm-3 label-align">Teléfono <span class="required">*</span></label>
							<div class="col-md-6 col-sm-6 ">
								<asp:TextBox ID="txtTelefono" Cssclass="form-control" runat="server" TextMode="Number"></asp:TextBox>
							</div>
						</div>
						<div class="item form-group">
							<label for="middle-name" class="col-form-label col-md-3 col-sm-3 label-align">Dirección <span class="required">*</span></label>
							<div class="col-md-6 col-sm-6 ">
								<asp:TextBox ID="txtDireccion" Cssclass="form-control" runat="server"></asp:TextBox>
							</div>
						</div>
						<div class="ln_solid"></div>
						<div class="item form-group">
							<div class="col-md-6 col-sm-6 offset-md-3">
                              
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Button ID="btnBorrar" runat="server" class="btn btn-primary" Text="Borrar Datos" /><asp:Button ID="btnGuardar" runat="server" class="btn btn-success" Text="Guardar" OnClick="btnGuardar_Click" />
								
							</div>
						</div>

									
					</div>
				</div>
			</div>
		</div>
</form>
</asp:Content>
