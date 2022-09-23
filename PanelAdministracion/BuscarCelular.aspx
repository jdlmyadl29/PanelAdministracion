<%@ Page Title="" Language="C#" MasterPageFile="~/General.Master" AutoEventWireup="true" CodeBehind="BuscarCelular.aspx.cs" Inherits="PanelAdministracion.BuscarCelular" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="content2" runat="server">
    <div class="page-title">
        <div class="title_left">
        <h3>Reparación de Celulares</h3>
        </div>

        <div class="title_right">
        <div class="col-md-5 col-sm-5  form-group row pull-right top_search">
            <div class="input-group">
            <input type="text" class="form-control" placeholder="Busca algo">
            <span class="input-group-btn">
                        <button class="btn btn-secondary" type="button">Ir</button>
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
            <h2>Buscar mi Celular <small>Ingresando mi Cédula</small></h2>
            <ul class="nav navbar-right panel_toolbox">
                <li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a>
                </li>
                <li class="dropdown">
                <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false"><i class="fa fa-wrench"></i></a>
                <ul class="dropdown-menu" role="menu">
                    <li><a href="#">Configuración</a>
                    </li>
                    
                </ul>
                </li>
                <li><a class="close-link"><i class="fa fa-close"></i></a>
                </li>
            </ul>
            <div class="clearfix"></div>
            </div>
            <div class="x_content">


            <!-- Smart Wizard -->
            <div id="wizard" class="form_wizard wizard_horizontal">
                <ul class="wizard_steps">
                <li>
                    <a href="#">
                    <span class="step_no">1</span>
                    <span class="step_descr">
                        Paso 1<br />
                        <small>Ingresa tu documento de identidad</small>
                    </span>
                    </a>
                </li>
                <li>
                    <a href="#">
                    <span class="step_no">2</span>
                    <span class="step_descr">
                        Paso 2<br />
                        <small>Pulsa el botón Buscar</small>
                    </span>
                    </a>
                </li>
                <li>
                    <a href="#">
                    <span class="step_no">3</span>
                    <span class="step_descr">
                        Paso 3<br />
                        <small>Mira el estado de tu Celular</small>
                    </span>
                    </a>
                </li>
                </ul>
                <div id="step-1">
                <form class="form-horizontal form-label-left" runat="server">
                    <div class="form-group row">
                    <label class="col-form-label col-md-3 col-sm-3 label-align" for="first-name">Documento de Identidad <span class="required">*</span>
                    </label>
                    <div class="col-md-6 col-sm-6 ">
                        <asp:TextBox ID="txtIdenti" Width="200px" runat="server" TextMode="Number"></asp:TextBox>
                        <asp:Button ID="btnBuscar" runat="server" CssClass="btn btn-primary" Text="Buscar" OnClick="btnBuscar_Click" />
                    </div>
                    </div>
                    <asp:GridView ID="GridView1" runat="server" OnRowCommand="GridView1_RowCommand" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" Font-Size="Medium" ForeColor="Black" GridLines="Vertical">
                        <AlternatingRowStyle BackColor="#CCCCCC" />
                    <Columns>
                        <asp:TemplateField ShowHeader="False">
                            <ItemTemplate>
                            <asp:Label ID="lblID" runat="server" Text='<%# Bind("ID") %>' Visible="false"></asp:Label>
                            </ItemTemplate>
                            <ControlStyle BorderStyle="None" />
                            <FooterStyle BorderStyle="None" />
                            <HeaderStyle BorderStyle="None" />
                            <ItemStyle BorderStyle="None" />
                        </asp:TemplateField>
                        <asp:TemplateField ShowHeader="False">
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Fecha Recibido">
                            <ItemTemplate>
                            <asp:Label ID="Label1" runat="server" Text='<%# Bind("Fecha") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Propietario">
                            <ItemTemplate>                      
                            <asp:Label ID="lblProp" runat="server" Text='<%# Bind("Propietario") %>'></asp:Label>
                                </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Celular">
                            <ItemTemplate>
                            <asp:Label ID="lblCel" runat="server" Text='<%# Bind("Celular") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Descripción del daño">
                            <ItemTemplate>
                            <asp:Label ID="lblDanio" runat="server" Text='<%# Bind("Descripcion") %>'></asp:Label>
                                </ItemTemplate>
                        </asp:TemplateField>
                         <asp:TemplateField HeaderText="Estado">
                            <ItemTemplate>
                            <asp:Label ID="lblEsta" runat="server" Text='<%# Bind("Estado") %>'></asp:Label>
                                </ItemTemplate>
                        </asp:TemplateField>
                        <asp:ButtonField Text="Ver más" CommandName="Select" ControlStyle-CssClass="btn btn-primary btn-xs">
                        <ControlStyle CssClass="btn btn-primary btn-xs" BorderStyle="None"></ControlStyle>
                        <FooterStyle BorderStyle="None" />
                        <HeaderStyle BorderStyle="None" />
                        <ItemStyle BorderStyle="None" />
                        </asp:ButtonField>
                        </Columns>
                        <FooterStyle BackColor="#CCCCCC" />
                        <HeaderStyle BackColor="Black" Font-Bold="True" Font-Size="Large" ForeColor="White" />
                        <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                        <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                        <SortedAscendingCellStyle BackColor="#F1F1F1" />
                        <SortedAscendingHeaderStyle BackColor="#808080" />
                        <SortedDescendingCellStyle BackColor="#CAC9C9" />
                        <SortedDescendingHeaderStyle BackColor="#383838" />
                      </asp:GridView>
                    
                    <asp:Panel ID="Panel1" runat="server" CssClass="form-horizontal" Visible="False">
                        <div class="form-group row">
                        <h3><asp:Label ID="lblCelular" runat="server" Text="Label"></asp:Label></h3>
                        <h4>Estado: <asp:Label ID="lblEstado" runat="server" Text="Label" ForeColor="Black"></asp:Label></h4>
                        <h4>Recibido el <asp:Label ID="lblFecha" runat="server" Text="Label" ForeColor="Black"></asp:Label> (Hace <asp:Label ID="lblCuenta" runat="server" Text="Label" ForeColor="Black"></asp:Label> días)</h4>
                        <asp:Image ID="imgCelular" runat="server" Height="250px" Width="250px"/>
                        <h4>Abonaste: $<asp:Label ID="lblAbono" runat="server" Text="0" ForeColor="Black"></asp:Label></h4>
                        <h4>Valor Estimado: $<asp:Label ID="lblValor" runat="server" Text="0" ForeColor="Black"></asp:Label></h4>
                        <asp:Label ID="lblMsg" runat="server" Font-Size="Large" BackColor="#00CC00" ForeColor="Black"></asp:Label>
                        </div>
                    </asp:Panel>
                </form>
                </div>
                </div>
                </div>
            </div>
            </div>
        </div>
</asp:Content>
