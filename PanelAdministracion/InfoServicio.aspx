<%@ Page Title="" Language="C#" MasterPageFile="~/Sesion.Master" AutoEventWireup="true" CodeBehind="InfoServicio.aspx.cs" Inherits="PanelAdministracion.InfoServicio" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="content2" runat="server">
    <!-- /top tiles -->
     <div class="row">
         <form id="form1" runat="server">
              <div class="col-md-12">
                
                <div class="x_panel">
                  <div class="x_title">
                    <h3><asp:Label ID="lblCelular" runat="server" Text="Label" ForeColor="Black"></asp:Label> de <asp:Label ID="lblProp" runat="server" Text="Label" ForeColor="Black"></asp:Label></h3>
                    <h4>Estado: <asp:Label ID="lblEstado" runat="server" Text="Label" ForeColor="Black"></asp:Label></h4>
                    <h4>Recibido el <asp:Label ID="lblFecha" runat="server" Text="Label" ForeColor="Black"></asp:Label>(Hace <asp:Label ID="lblCuenta" runat="server" Text="Label" ForeColor="Black"></asp:Label> días)</h4>
                    <h4>Número de contacto: <asp:Label ID="lblNumero" runat="server" Text="Label" ForeColor="Black"></asp:Label></h4>
                  </div>
                
                    <asp:Image ID="imgCelular" runat="server" Height="200px" Width="180px"/>
                    <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click">¿Quieres cambiar la foto?</asp:LinkButton>
                    <br />
                    <asp:FileUpload ID="FileUpload1" runat="server" Visible="False"/>
                    <br />
                    <asp:Button ID="btnGuardar" runat="server" Text="Cambiar" CssClass="btn btn-success" OnClick="btnGuardar_Click" Visible="False" />
                    <ul class="nav navbar-right panel_toolbox">
                      <li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a>
                      </li>
                      <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false"><i class="fa fa-wrench"></i></a>
                        <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
                            <a class="dropdown-item" href="#">Configuraciones</a>
                         </div>
                      </li>
                      <li><a class="close-link"><i class="fa fa-close"></i></a>
                      </li>
                    </ul>
                </div>
                    <div class="x_content">
                            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" OnRowEditing="GridView1_RowEditing" BorderColor="Black" CellPadding="4" ForeColor="#333333" GridLines="Vertical" HorizontalAlign="Center" OnRowUpdating="GridView1_RowUpdating" OnRowCancelingEdit="GridView1_RowCancelingEdit" Font-Names="Arial" Font-Size="Medium" CellSpacing="25">
                                <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                                <Columns>
                                
                                <asp:TemplateField HeaderText="Propietario">
                                    <EditItemTemplate>
                                        <asp:TextBox ID="txtProp" Text="Propietario" runat="server" ReadOnly="True" BackColor="#FFFF99"></asp:TextBox>
                                    </EditItemTemplate>
                                    <ItemTemplate>                      
                                    <asp:Label ID="lblProp" runat="server" Text='<%# Bind("Propietario") %>'></asp:Label>
                                     </ItemTemplate>
                                    <HeaderStyle HorizontalAlign="Center" />
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="Celular">
                                    <EditItemTemplate>
                                        <asp:TextBox ID="txtCel" Text="Celular" runat="server" ReadOnly="True" BackColor="#FFFF99"></asp:TextBox>
                                    </EditItemTemplate>
                                    <ItemTemplate>
                                    <asp:Label ID="lblCel" runat="server" Text='<%# Bind("Celular") %>'></asp:Label>
                                    </ItemTemplate>
                                    <HeaderStyle HorizontalAlign="Center" />
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="Descripción del daño">
                                    <EditItemTemplate>
                                        <asp:TextBox ID="txtDescrip" runat="server" TextMode="MultiLine"></asp:TextBox>
                                    </EditItemTemplate>
                                    <ItemTemplate>
                                    <asp:Label ID="lblDanio" runat="server" Text='<%# Bind("Descripcion") %>'></asp:Label>
                                     </ItemTemplate>
                                    <HeaderStyle HorizontalAlign="Center" />
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="Valor Estimado">
                                    <EditItemTemplate>
                                        <asp:TextBox ID="txtValor" runat="server" TextMode="Number"></asp:TextBox>
                                    </EditItemTemplate>
                                    <ItemTemplate>
                                    <asp:Label ID="lblValor" runat="server" Text='<%# Bind("Valor_Estimado") %>'></asp:Label>
                                     </ItemTemplate>
                                    <HeaderStyle HorizontalAlign="Center" />
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="Estado">
                                    <EditItemTemplate>
                                        <asp:DropDownList ID="ddlEstado" runat="server">
                                            <asp:ListItem Text="En Preparación"></asp:ListItem>
                                            <asp:ListItem Text="Está siendo Reparado"></asp:ListItem>
                                            <asp:ListItem Text="Reparado"></asp:ListItem>
                                        </asp:DropDownList>
                                    </EditItemTemplate>
                                     <ItemTemplate>
                                        <asp:Label ID="lblEstado" runat="server" Text='<%# Bind("Estado") %>'></asp:Label>
                                    </ItemTemplate>
                                    <HeaderStyle HorizontalAlign="Center" />
                                </asp:TemplateField>
                                
                                <asp:CommandField ButtonType="Button" ShowEditButton="True">
                               
                                
                                    <ControlStyle CssClass="btn-primary" />
                                    </asp:CommandField>
                               
                                
                                </Columns>
                                <EditRowStyle BackColor="#999999" Font-Overline="False" Font-Size="Medium" HorizontalAlign="Center" />
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
                    
                </div>
             </form>
            </div>
</asp:Content>
