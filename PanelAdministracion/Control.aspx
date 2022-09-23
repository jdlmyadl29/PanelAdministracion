<%@ Page Title="" Language="C#" MasterPageFile="~/Sesion.Master" AutoEventWireup="true" CodeBehind="Control.aspx.cs" Inherits="PanelAdministracion.WebForm1" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script src="build/js/chosen.jquery.min.js"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="content2" runat="server">
    
    <!-- /top tiles -->
     <div class="row">
              <div class="col-md-12">
                <div class="x_panel">
                  <div class="x_title">
                    <h3>Control de Reparaciones de Celulares</h3>
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
                                <h2>Buscar servicio por documento de identidad <i class="fa fa-search"></i></h2>
                                <asp:DropDownList ID="ddlIdenti" runat="server" Width="200px" AppendDataBoundItems="True" Font-Size="Medium">
                                    <asp:ListItem Selected="True">Selecciona</asp:ListItem>
                                </asp:DropDownList>
                                <asp:LinkButton ID="linkBuscar" runat="server" CssClass="btn btn-info" OnClick="linkBuscar_Click">Buscar
                                <i class="fa fa-search"></i>
                            </asp:LinkButton>
                                
                            </div>
                            <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
                                <asp:Button ID="btnNuevo" runat="server" Text="Nuevo Servicio" CssClass="btn btn-success"/>
                                <ajaxToolkit:ModalPopupExtender ID="ModalPopupExtender1" PopupControlID="Panel1" TargetControlID="btnNuevo" CancelControlID="btnCerrar" runat="server"></ajaxToolkit:ModalPopupExtender>      
                                <asp:Panel ID="Panel1" runat="server" CssClass="Popup" align="center" style = "display:none" Height="500px" Width="800px">  
                                <iframe style="width: 800px; height: 500px;" id="iframe1" src="Formulario.aspx" runat="server"></iframe>  
                                <asp:Button ID="btnCerrar" runat="server" BackColor="Red" ForeColor="White" Text="Cerrar" OnClick="btnCerrar_Click" Width="100px" Font-Bold="True" Height="40px" Font-Size="Large" />  
                                </asp:Panel>  
                            <br />
                            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" OnRowCommand="GridView1_RowCommand" BorderColor="Black" CellPadding="4" ForeColor="#333333" GridLines="Vertical" HorizontalAlign="Center" Font-Size="Medium" CellSpacing="10">
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
                    
                        </form>
                         <script>
                             $('#<%=ddlIdenti.ClientID%>').chosen();
                        </script>
                    </div>
                  </div>
                </div>
       
    </div>
</asp:Content>
    
    
    
   
   
