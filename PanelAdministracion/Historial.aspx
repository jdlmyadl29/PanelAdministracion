<%@ Page Title="" Language="C#" MasterPageFile="~/Sesion.Master" AutoEventWireup="true" CodeBehind="Historial.aspx.cs" Inherits="PanelAdministracion.Historial" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="content2" runat="server">
    <div class="">
            <div class="page-title">
              <div class="title_left">
                <h3>Historial de pagos</h3>
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
              <div class="col-md-12">
                <div class="x_panel">
                  <div class="x_title">
                    <h3>Selecciona el período de tiempo</h3>
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
                        <form id="form1" runat="server">
                            <div id="demo-form2" class="form-horizontal form-label-left">
                            <div class="item form-group">
								<label class="col-form-label col-md-3 col-sm-3 label-align">Fechas
								</label>
								<div class="col-md-6 col-sm-6 ">
									<input id="fecha" class="date-picker form-control" runat="server" placeholder="dd-mm-yyyy" type="text" required="required" onfocus="this.type='date'" onmouseover="this.type='date'" onclick="this.type = 'date'" onblur="this.type='text'" onmouseout="timeFunctionLong(this)">
                                    <br />
                                    <input id="fecha2" class="date-picker form-control" runat="server" placeholder="dd-mm-yyyy" type="text" required="required" onfocus="this.type='date'" onmouseover="this.type='date'" onclick="this.type = 'date'" onblur="this.type='text'" onmouseout="timeFunctionLong(this)">
									<script>
                                        function timeFunctionLong(input) {
                                            setTimeout(function () {
                                                input.type = 'text';
                                            }, 60000);
                                        }
									</script>
								</div>
							</div>
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <asp:LinkButton ID="LinkButton1" runat="server" CssClass="btn btn-success" OnClick="linkBuscar_Click">Buscar
                                <i class="fa fa-search"></i>
                            </asp:LinkButton>
                                <br />
                                <br />
                            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" OnRowCommand="GridView1_RowCommand" BorderColor="Black" CellPadding="4" ForeColor="#333333" GridLines="Vertical" HorizontalAlign="Center" Font-Size="Medium" CellSpacing="4">
                                <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
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
                                   
                                <asp:TemplateField HeaderText="Fecha Recibido">
                                    <ItemTemplate>
                                    <asp:Label ID="lblFecha" runat="server" Text='<%# Bind("Fecha") %>'></asp:Label>
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
                            
                                <asp:ButtonField Text="Ver más" CommandName="Select" ControlStyle-CssClass="btn btn-primary btn-xs">
                                <ControlStyle CssClass="btn btn-primary btn-xs" BorderStyle="None" ForeColor="White"></ControlStyle>
                                <FooterStyle BorderStyle="None" />
                                <HeaderStyle BorderStyle="None" />
                                <ItemStyle BorderStyle="None" />
                                </asp:ButtonField>
                            
                                </Columns>
                                <EditRowStyle BackColor="#999999" />
                                <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                                <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" Font-Size="Large" HorizontalAlign="Center" Wrap="False" />
                                <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                                <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                                <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                                <SortedAscendingCellStyle BackColor="#E9E7E2" />
                                <SortedAscendingHeaderStyle BackColor="#506C8C" />
                                <SortedDescendingCellStyle BackColor="#FFFDF8" />
                                <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
                            </asp:GridView>
                        </div>
                        </form>
                         
                    </div>
                  </div>
                </div>
       </div>
    </div>
</asp:Content>
