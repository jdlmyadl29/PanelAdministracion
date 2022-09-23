<%@ Page Title="" Language="C#" MasterPageFile="~/Sesion.Master" AutoEventWireup="true" CodeBehind="Ecommerce.aspx.cs" Inherits="PanelAdministracion.Ecommerce" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script src="build/js/chosen.jquery.min.js"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="content2" runat="server">
        <div class="row">
              <div class="col-md-12">
                <div class="x_panel">
                  <div class="x_title">
                    <h3>Servicios Adquiridos</h3>
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

                    <asp:GridView ID="GridView1" runat="server" GridLines="None" AutoGenerateColumns="False" ForeColor="#333333" HorizontalAlign="Center" OnRowCommand="GridView1_RowCommand" ShowFooter="True" Font-Names="Calibri" Font-Size="Medium">
                        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                        <Columns>
                        <asp:TemplateField>
                            <ItemTemplate>
                                <asp:Image ID="Image" ImageUrl='<%# Bind("Foto") %>' runat="server" BorderStyle="Ridge" ImageAlign="Left" Height="170px" Width="170px"/>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Servicios Adquiridos">
                           
                            <ItemTemplate>
                            <asp:Label ID="lblID" runat="server" Text='<%# Bind("ID") %>' Visible="false"></asp:Label>
                            <br/>
                            <asp:Label ID="lblCodigo" runat="server" Text='<%# Bind("Codigo") %>'></asp:Label>
                            <br/>
                            <asp:Label ID="lblDescripcion" runat="server" Text='<%# Bind("Descripcion") %>'></asp:Label>
                            <br/>
                            </i><asp:Label ID="lblTexto" runat="server" Text='<%# Bind("Texto") %>'></asp:Label>
                            <br/>
                            <asp:Label ID="lblPrecio" runat="server" Text='<%# Bind("Precio") %>'></asp:Label>
                            <br/>

                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:ButtonField Text="Detalle Servicio" CommandName="Select" ControlStyle-BackColor="#FF0066" ControlStyle-ForeColor="White" ControlStyle-Font-Bold="true">
                       
                        <FooterStyle BorderStyle="None" />
                        <HeaderStyle BorderStyle="None" />
                        <ItemStyle BorderStyle="None" />
                        </asp:ButtonField>
                               
                        </Columns>
                         
                        <EditRowStyle BackColor="#999999" Font-Size="Medium" />
                        <FooterStyle BackColor="#FF0066" Font-Bold="True" ForeColor="White" />
                        <HeaderStyle BackColor="#FF0066" Font-Bold="True" ForeColor="White" Font-Italic="True" Font-Size="Larger" />
                        <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                        <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                        <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                        <SortedAscendingCellStyle BackColor="#E9E7E2" />
                        <SortedAscendingHeaderStyle BackColor="#506C8C" />
                        <SortedDescendingCellStyle BackColor="#FFFDF8" />
                        <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
                         
                    </asp:GridView>    
                </form>
                    
                  </div>
                </div>
             </div>
    </div>
</asp:Content>
