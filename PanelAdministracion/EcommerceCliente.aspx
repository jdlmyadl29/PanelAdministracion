<%@ Page Title="" Language="C#" MasterPageFile="~/General.Master" AutoEventWireup="true" CodeBehind="EcommerceCliente.aspx.cs" Inherits="PanelAdministracion.EcommerceCliente" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script src="build/js/chosen.jquery.min.js"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="content2" runat="server">
    <div class="row">
              <div class="col-md-12">
                <div class="x_panel">
                  <div class="x_title">
                    <h3>Portafolio de servicios<i class="fa fa-suitcase"></i></h3>
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
                            <div class="input-group">
                                <h2>Buscar Servicios</h2>
                                <asp:DropDownList ID="ddlIdenti" runat="server" Width="400px" AppendDataBoundItems="True" Font-Size="Medium">
                                    <asp:ListItem Selected="True">Selecciona</asp:ListItem>
                                </asp:DropDownList>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

                                <asp:LinkButton ID="linkBuscar" runat="server" CssClass="btn btn-success" OnClick="linkBuscar_Click">Buscar
                                    <i class="fa fa-search"></i>
                                </asp:LinkButton>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
   
                                <asp:LinkButton ID="linkTodos" runat="server" CssClass="btn btn-primary" OnClick="linkTodos_Click">Ver Todos
                                    <i class="fa fa-eye"></i>
                                </asp:LinkButton>
                            </div>
                   
                     <asp:GridView ID="GridView1" runat="server" GridLines="None" AutoGenerateColumns="False" ForeColor="#333333" OnRowCommand="GridView1_RowCommand" ShowFooter="True" Font-Names="Arial" Font-Size="Large" BorderStyle="Solid" BorderColor="#003366" BorderWidth="10px" CaptionAlign="Top" CellSpacing="10" HorizontalAlign="Center" CellPadding="0">
                        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                        <Columns>
                        <asp:TemplateField>
                            <ItemTemplate>
                                <asp:Image ID="Image" ImageUrl='<%# Bind("Foto") %>' runat="server" BorderStyle="Ridge" ImageAlign="Left" Height="170px" Width="170px"/>
                            </ItemTemplate>
                        </asp:TemplateField>
                        
                            <asp:TemplateField>
                                <ItemTemplate>
                                    <asp:Label ID="lblID" runat="server" Text='<%# Bind("ID") %>' Visible="false"></asp:Label>
                                 </ItemTemplate>
                            </asp:TemplateField>

                            <asp:TemplateField HeaderText="Descripción">
                                <ItemTemplate>
                                    <asp:Label ID="lblDescripcion" runat="server" Text='<%# Bind("Descripcion") %>'></asp:Label>
                                </ItemTemplate>
                                <HeaderStyle HorizontalAlign="Center" />
                            </asp:TemplateField>

                            <asp:TemplateField HeaderText="Detalle">
                                <ItemTemplate>
                                    <asp:Label ID="lblTexto" runat="server" Text='<%# Bind("Texto") %>'></asp:Label>
                                </ItemTemplate>
                                <HeaderStyle HorizontalAlign="Center" />
                            </asp:TemplateField>

                            

                            <asp:TemplateField HeaderText="Precio">
                                <ItemTemplate>
                                    <i class="fa fa-dollar"></i><asp:Label ID="lblPrecio" runat="server" Text='<%# Bind("Precio") %>'></asp:Label>
                                </ItemTemplate>
                                <HeaderStyle HorizontalAlign="Center" />
                            </asp:TemplateField>
                            
                            <asp:TemplateField HeaderText="Rate">
                                <ItemTemplate>
                                    <p class="ratings">
                                        <a href="#"><span class="fa fa-star"></span></a>
                                        <a href="#"><span class="fa fa-star"></span></a>
                                        <a href="#"><span class="fa fa-star"></span></a>
                                        <a href="#"><span class="fa fa-star"></span></a>
                                        <a href="#"><span class="fa fa-star-o"></span></a>
                                    </p>
                                </ItemTemplate>
                                <HeaderStyle HorizontalAlign="Center" />
                            </asp:TemplateField>
                        
                        <asp:ButtonField Text="Ver más" CommandName="Select" ControlStyle-BackColor="#FF0066" ControlStyle-ForeColor="White" ControlStyle-Font-Bold="true">
                       
                        <ControlStyle BackColor="#003366" Font-Bold="True" ForeColor="White"></ControlStyle>

                        <FooterStyle BorderStyle="None" />
                        <HeaderStyle BorderStyle="None" HorizontalAlign="Center" VerticalAlign="Middle" />
                        <ItemStyle BorderStyle="None" />
                        </asp:ButtonField>
                               
                        </Columns>
                         
                        <EditRowStyle BackColor="#999999" Font-Size="Medium" />
                        <FooterStyle BackColor="#003366" Font-Bold="True" ForeColor="White" />
                        <HeaderStyle BackColor="#003366" Font-Bold="True" ForeColor="White" Font-Italic="True" Font-Size="Larger" HorizontalAlign="Center" VerticalAlign="Middle" />
                        <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                        <RowStyle BackColor="#F7F6F3" ForeColor="#333333" Wrap="True" />
                        <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                        <SortedAscendingCellStyle BackColor="#E9E7E2" />
                        <SortedAscendingHeaderStyle BackColor="#506C8C" />
                        <SortedDescendingCellStyle BackColor="#FFFDF8" />
                        <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
                         
                    </asp:GridView>
                            
                    
                </form>
                    <script>
                        $('#<%=ddlIdenti.ClientID%>').chosen();
                    </script>
                  </div>
                </div>
             </div>
    </div>
</asp:Content>
