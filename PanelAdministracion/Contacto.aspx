<%@ Page Title="" Language="C#" MasterPageFile="~/General.Master" AutoEventWireup="true" CodeBehind="Contacto.aspx.cs" Inherits="PanelAdministracion.Contacto" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="content2" runat="server">
    <div class="">
            <div class="page-title">
              <div class="title_left">
                <h3>Somos Servicios Digitales SA</h3>
              </div>

              <div class="title_right">
                <div class="col-md-5 col-sm-5  form-group pull-right top_search">
                  <div class="input-group">
                    <input type="text" class="form-control" placeholder="Buscar por...">
                    <span class="input-group-btn">
                      <button class="btn btn-secondary" type="button">Ir!</button>
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
                    <h2>Servicios Digitales <small>Para las empresas del futuro</small></h2>
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
                    <div class="col-md-3 col-sm-3  profile_left">
                      <div class="profile_img">
                        <div id="crop-avatar">
                          <!-- Current avatar -->
                          <img class="img-responsive avatar-view" src="build/images/serviciosDigitales.png" alt="Avatar" title="Change the avatar">
                        </div>
                      </div>
                      <h3>Servicios Digitales S.A</h3>

                      <ul class="list-unstyled user_data">
                        <li><i class="fa fa-map-marker user-profile-icon"></i> Medellín, Carrera 37, #56B CL 10 7-85
                        </li>

                        <li>
                          <i class="fa fa-phone user-profile-icon"></i> (601)3348907
                        </li>

                        <li class="m-top-xs">
                          <i class="fa fa-facebook-square user-profile-icon"></i>
                          <a href="https://www.facebook.com/todoparatucelulartecnologia" target="_blank">Nuestro Facebook</a>
                        </li>
                      </ul>

                      <br />

                      <!-- start skills -->
                      <h4>Nuestras Stats</h4>
                      <ul class="list-unstyled user_data">
                        <li>
                          <p>Servicio al cliente</p>
                          <div class="progress progress_sm">
                            <div class="progress-bar bg-green" role="progressbar" data-transitiongoal="100"></div>
                          </div>
                        </li>
                        <li>
                          <p>Confiabilidad</p>
                          <div class="progress progress_sm">
                            <div class="progress-bar bg-green" role="progressbar" data-transitiongoal="100"></div>
                          </div>
                        </li>
                        <li>
                          <p>Calidad del servicio</p>
                          <div class="progress progress_sm">
                            <div class="progress-bar bg-green" role="progressbar" data-transitiongoal="100"></div>
                          </div>
                        </li>
                        <li>
                          <p>Amabilidad</p>
                          <div class="progress progress_sm">
                            <div class="progress-bar bg-green" role="progressbar" data-transitiongoal="100"></div>
                          </div>
                        </li>
                      </ul>
                      <!-- end of skills -->

                    </div>
                    <div class="col-md-9 col-sm-9 ">

                      <div class="profile_title">
                        <div class="col-md-6">
                          <h2>¿Qué dicen nuestros clientes de nosotros?</h2>
                        </div>
                        <div class="col-md-6">
                          <div id="reportrange" class="pull-right" style="margin-top: 5px; background: #fff; cursor: pointer; padding: 5px 10px; border: 1px solid #E6E9ED">
                            <i class="glyphicon glyphicon-calendar fa fa-calendar"></i>
                            <span>December 30, 2014 - January 28, 2015</span> <b class="caret"></b>
                          </div>
                        </div>
                      </div>
                     

                      <div class="" role="tabpanel" data-example-id="togglable-tabs">
                        <ul id="myTab" class="nav nav-tabs bar_tabs" role="tablist">
                          <li role="presentation" class="active"><a href="#tab_content1" id="home-tab" role="tab" data-toggle="tab" aria-expanded="true">Valoraciones</a>
                          </li>
                        </ul>
                        <div id="myTabContent" class="tab-content">
                          <div role="tabpanel" class="tab-pane active " id="tab_content1" aria-labelledby="home-tab">

                            <!-- start recent activity -->
                            <ul class="messages">
                              <li>
                                <img src="build/images/img.jpg" class="avatar" alt="Avatar">
                                <div class="message_date">
                                  <h3 class="date text-info">24 Mayo</h3>
                                  <p class="ratings">
                                        <a href="#"><span class="fa fa-star"></span></a>
                                        <a href="#"><span class="fa fa-star"></span></a>
                                        <a href="#"><span class="fa fa-star"></span></a>
                                        <a href="#"><span class="fa fa-star"></span></a>
                                        <a href="#"><span class="fa fa-star"></span></a>
                                    </p>
                                </div>
                                <div class="message_wrapper">
                                  <h4 class="heading">Esteban Ruíz Londoño/Servientrega S.A.S</h4>
                                  <blockquote class="message">Servicios Digitales tiene las mejores herramientas para la organización y representación de datos</blockquote>
                                  <br />
                                </div>
                              </li>
                              <li>
                                <img src="build/images/picture.jpg" class="avatar" alt="Avatar">
                                <div class="message_date">
                                  <h3 class="date text-error">14 Abril</h3>
                                  <p class="ratings">
                                        <a href="#"><span class="fa fa-star"></span></a>
                                        <a href="#"><span class="fa fa-star"></span></a>
                                        <a href="#"><span class="fa fa-star"></span></a>
                                        <a href="#"><span class="fa fa-star"></span></a>
                                        <a href="#"><span class="fa fa-star-o"></span></a>
                                  </p>
                                </div>
                                <div class="message_wrapper">
                                  <h4 class="heading">Manuela Alvarez/Surtiventas S.A</h4>
                                  <blockquote class="message">Las herramientas para el análisis de datos son excelentes recursos para la toma de decisiones dentro de la organización</blockquote>
                                  <br />
                                  
                                </div>
                              </li>
                              <li>
                                <img src="build/images/cropper.jpg" class="avatar" alt="Avatar">
                                <div class="message_date">
                                  <h3 class="date text-info">12 Enero</h3>
                                  <p class="ratings">
                                    <a href="#"><span class="fa fa-star"></span></a>
                                    <a href="#"><span class="fa fa-star"></span></a>
                                    <a href="#"><span class="fa fa-star"></span></a>
                                    <a href="#"><span class="fa fa-star"></span></a>
                                    <a href="#"><span class="fa fa-star-o"></span></a>
                                  </p>
                                </div>
                                <div class="message_wrapper">
                                  <h4 class="heading">Estefanía Posada Largo/Homecenter S.A</h4>
                                  <blockquote class="message">Las herramientas de respaldo de información son excelentes para salvaguardar información esencial para la empresa</blockquote>
                                  <br />
                                  
                                </div>
                              </li>
                              <li>
                                <img src="build/images/avatar3.png" class="avatar" alt="Avatar">
                                <div class="message_date">
                                  <h3 class="date text-error">06 Enero</h3>
                                  <p class="ratings">
                                    <a href="#"><span class="fa fa-star"></span></a>
                                    <a href="#"><span class="fa fa-star"></span></a>
                                    <a href="#"><span class="fa fa-star"></span></a>
                                    <a href="#"><span class="fa fa-star"></span></a>
                                    <a href="#"><span class="fa fa-star"></span></a>
                                  </p>
                                </div>
                                <div class="message_wrapper">
                                  <h4 class="heading">Carolina Gonzáles Mazo/Tecnosoluciones S.A</h4>
                                  <blockquote class="message">El soporte técnico está disponible las 24 horas. Dispuestos a solucionar cualquier inconveniente con los servicios y productos digitales adquiridos</blockquote>
                                  <br />
                                  
                                </div>
                              </li>

                            </ul>
                            <!-- end recent activity -->

                          </div>
                         
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
</asp:Content>
