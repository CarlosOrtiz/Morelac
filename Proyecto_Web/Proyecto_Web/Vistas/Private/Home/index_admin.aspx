<%@ Page Title="" Language="C#" MasterPageFile="~/Vistas/Private/Home/Admin.Master" AutoEventWireup="true" CodeBehind="index_admin.aspx.cs" Inherits="Proyecto_Web.Vistas.Private.index_admin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" runat="server">
 <%--    <h3>USER VISITS</h3>  
  <div> 
    <f class="col-lg-9 main-chart">
            <!--CUSTOM CHART START -->
            <div class="border-head">
              <h3>USER VISITS</h3>
            </div>
            <div class="custom-bar-chart">
              <ul class="y-axis">
                <li><span>10.000</span></li>
                <li><span>8.000</span></li>
                <li><span>6.000</span></li>
                <li><span>4.000</span></li>
                <li><span>2.000</span></li>
                <li><span>0</span></li>
              </ul>
              <div class="bar">
                <div class="title">JAN</div>
                <div class="value tooltips" data-original-title="8.500" data-toggle="tooltip" data-placement="top" style="height: 85%;"></div>
              </div>
              <div class="bar ">
                <div class="title">FEB</div>
                <div class="value tooltips" data-original-title="5.000" data-toggle="tooltip" data-placement="top" style="height: 50%;"></div>
              </div>
              <div class="bar ">
                <div class="title">MAR</div>
                <div class="value tooltips" data-original-title="6.000" data-toggle="tooltip" data-placement="top" style="height: 60%;"></div>
              </div>
              <div class="bar ">
                <div class="title">APR</div>
                <div class="value tooltips" data-original-title="4.500" data-toggle="tooltip" data-placement="top" style="height: 45%;"></div>
              </div>
              <div class="bar">
                <div class="title">MAY</div>
                <div class="value tooltips" data-original-title="3.200" data-toggle="tooltip" data-placement="top" style="height: 32%;"></div>
              </div>
              <div class="bar ">
                <div class="title">JUN</div>
                <div class="value tooltips" data-original-title="6.200" data-toggle="tooltip" data-placement="top" style="height: 62%;"></div>
              </div>
              <div class="bar">
                <div class="title">JUL</div>
                <div class="value tooltips" data-original-title="7.500" data-toggle="tooltip" data-placement="top" style="height: 75%;"></div>
              </div>
            </div>
            <!--custom chart end-->
            <div class="row mt">
              <!-- SERVER STATUS PANELS -->
              <div class="col-md-4 col-sm-4 mb">
                <div class="grey-panel pn donut-chart">
                  <div class="grey-header">
                    <h5>SERVER LOAD</h5>
                  </div>
                  <canvas id="serverstatus01" height="120" width="120" style="width: 120px; height: 120px;"></canvas>
                  <script>
                      var doughnutData = [{
                          value: 70,
                          color: "#FF6B6B"
                      },
                      {
                          value: 30,
                          color: "#fdfdfd"
                      }
                      ];
                      var myDoughnut = new Chart(document.getElementById("serverstatus01").getContext("2d")).Doughnut(doughnutData);
                  </script>
                  <div class="row">
                    <div class="col-sm-6 col-xs-6 goleft">
                      <p>Usage<br>Increase:</p>
                    </div>
                    <div class="col-sm-6 col-xs-6">
                      <h2>21%</h2>
                    </div>
                  </div>
                </div>
                <!-- /grey-panel -->
              </div>
              <!-- /col-md-4-->
              <div class="col-md-4 col-sm-4 mb">
                <div class="darkblue-panel pn">
                  <div class="darkblue-header">
                    <h5>DROPBOX STATICS</h5>
                  </div>
                  <canvas id="serverstatus02" height="120" width="120" style="width: 120px; height: 120px;"></canvas>
                  <script>
                      var doughnutData = [{
                          value: 60,
                          color: "#1c9ca7"
                      },
                      {
                          value: 40,
                          color: "#f68275"
                      }
                      ];
                      var myDoughnut = new Chart(document.getElementById("serverstatus02").getContext("2d")).Doughnut(doughnutData);
                  </script>
                  <p>April 17, 2014</p>
                  <footer>
                    <div class="pull-left">
                      <h5><i class="fa fa-hdd-o"></i> 17 GB</h5>
                    </div>
                    <div class="pull-right">
                      <h5>60% Used</h5>
                    </div>
                  </footer>
                </div>
                <!--  /darkblue panel -->
              </div>
              <!-- /col-md-4 -->
              <div class="col-md-4 col-sm-4 mb">
                <!-- REVENUE PANEL -->
                <div class="green-panel pn">
                  <div class="green-header">
                    <h5>REVENUE</h5>
                  </div>
                  <div class="chart mt">
                    <div class="sparkline" data-type="line" data-resize="true" data-height="75" data-width="90%" data-line-width="1" data-line-color="#fff" data-spot-color="#fff" data-fill-color="" data-highlight-line-color="#fff" data-spot-radius="4" data-data="[200,135,667,333,526,996,564,123,890,464,655]"><canvas width="221" height="75" style="display: inline-block; width: 221px; height: 75px; vertical-align: top;"></canvas></div>
                  </div>
                  <p class="mt"><b>$ 17,980</b><br>Month Income</p>
                </div>
              </div>
              <!-- /col-md-4 -->
            </div>
            <!-- /row -->
            <div class="row">
              <!-- WEATHER PANEL -->
              <div class="col-md-4 mb">
                <div class="weather pn">
                  <i class="fa fa-cloud fa-4x"></i>
                  <h2>11º C</h2>
                  <h4>BUDAPEST</h4>
                </div>
              </div>
              <!-- /col-md-4-->
              <!-- DIRECT MESSAGE PANEL -->
              <div class="col-md-8 mb">
                <div class="message-p pn">
                  <div class="message-header">
                    <h5>DIRECT MESSAGE</h5>
                  </div>
                  <div class="row">
                    <div class="col-md-3 centered hidden-sm hidden-xs">
                      <img src="img/ui-danro.jpg" class="img-circle" width="65">
                    </div>
                    <div class="col-md-9">
                      <p>
                        <name>Dan Rogers</name>
                        sent you a message.
                      </p>
                      <p class="small">3 hours ago</p>
                      <p class="message">Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s.</p>
                      <form class="form-inline" role="form">
                        <div class="form-group">
                          <input type="text" class="form-control" id="exampleInputText" placeholder="Reply Dan">
                        </div>
                        <button type="submit" class="btn btn-default">Send</button>
                      </form>
                    </div>
                  </div>
                </div>
                <!-- /Message Panel-->
              </div>
              <!-- /col-md-8  -->
            </div>
            <div class="row">
              <!-- TWITTER PANEL -->
              <div class="col-md-4 mb">
                <div class="twitter-panel pn">
                  <i class="fa fa-twitter fa-4x"></i>
                  <p>Dashio is here! Take a look and enjoy this new Bootstrap Dashboard theme.</p>
                  <p class="user">@Alvrz_is</p>
                </div>
              </div>
              <!-- /col-md-4 -->
              <div class="col-md-4 mb">
                <!-- WHITE PANEL - TOP USER -->
                <div class="white-panel pn">
                  <div class="white-header">
                    <h5>TOP USER</h5>
                  </div>
                  <p><img src="img/ui-zac.jpg" class="img-circle" width="50"></p>
                  <p><b>Zac Snider</b></p>
                  <div class="row">
                    <div class="col-md-6">
                      <p class="small mt">MEMBER SINCE</p>
                      <p>2012</p>
                    </div>
                    <div class="col-md-6">
                      <p class="small mt">TOTAL SPEND</p>
                      <p>$ 47,60</p>
                    </div>
                  </div>
                </div>
              </div>
              <!-- /col-md-4 -->
              <div class="col-md-4 mb">
                <!-- INSTAGRAM PANEL -->
                <div class="instagram-panel pn">
                  <i class="fa fa-instagram fa-4x"></i>
                  <p>@THISISYOU<br> 5 min. ago
                  </p>
                  <p><i class="fa fa-comment"></i> 18 | <i class="fa fa-heart"></i> 49</p>
                </div>
              </div>
              <!-- /col-md-4 -->
            </div>
            <!-- /row -->
            <div class="row">
              <div class="col-lg-4 col-md-4 col-sm-4 mb">
                <div class="product-panel-2 pn">
                  <div class="badge badge-hot">HOT</div>
                  <img src="img/product.jpg" width="200" alt="">
                  <h5 class="mt">Flat Pack Heritage</h5>
                  <h6>TOTAL SALES: 1388</h6>
                  <button class="btn btn-small btn-theme04">FULL REPORT</button>
                </div>
              </div>
              <!-- /col-md-4 -->
              <!--  PROFILE 02 PANEL -->
              <div class="col-lg-4 col-md-4 col-sm-4 mb">
                <div class="content-panel pn">
                  <div id="profile-02">
                    <div class="user">
                      <img src="img/friends/fr-06.jpg" class="img-circle" width="80">
                      <h4>DJ SHERMAN</h4>
                    </div>
                  </div>
                  <div class="pr2-social centered">
                    <a href="#"><i class="fa fa-twitter"></i></a>
                    <a href="#"><i class="fa fa-facebook"></i></a>
                    <a href="#"><i class="fa fa-dribbble"></i></a>
                  </div>
                </div>
                <!-- /panel -->
              </div>
              <!--/ col-md-4 -->
              <div class="col-md-4 col-sm-4 mb">
                <div class="green-panel pn">
                  <div class="green-header">
                    <h5>DISK SPACE</h5>
                  </div>
                  <canvas id="serverstatus03" height="120" width="120" style="width: 120px; height: 120px;"></canvas>
                  <script>
                      var doughnutData = [{
                          value: 60,
                          color: "#2b2b2b"
                      },
                      {
                          value: 40,
                          color: "#fffffd"
                      }
                      ];
                      var myDoughnut = new Chart(document.getElementById("serverstatus03").getContext("2d")).Doughnut(doughnutData);
                  </script>
                  <h3>60% USED</h3>
                </div>
              </div>
              <!-- /col-md-4 -->
            </div>
            <!-- /row -->
          </f>
      </div>--%>
    <!-- /col-lg-9 END SECTION MIDDLE -->
    <!-- **********************************************************************************************************************************************************
              RIGHT SIDEBAR CONTENT
              *********************************************************************************************************************************************************** -->
     <div class="col-lg-9 main-chart"></div>
    <div class="col-lg-3 ds">
     
        <h4 class="centered mt">LISTA DE PERMISOS </h4>
        <!-- First Activity -->
        <div class="desc">
            <div class="thumb">
                <span class="badge bg-theme"><i class="fa fa-clock-o"></i></span>
            </div>
            <div class="details">
                <p>
                    <muted>Just Now</muted>
                    <br>
                    <a href="#">Paul Rudd</a> purchased an item.<br>
                </p>
            </div>
        </div>

        <!-- USERS ONLINE SECTION -->
        <h4 class="centered mt">MEJORES PROVEEDORES</h4>
        <!-- First Member -->
        <div class="desc">
            <div class="thumb">
                <img class="img-circle" src="../../../Plantilla/Privado/img/img/ui-sam.jpg" width="35px" height="35px" align="">
            </div>
            <div class="details">
                <p>
                    <a href="#">DIVYA MANIAN</a><br>
                    <muted>Available</muted>
                </p>
            </div>
        </div>
      
        <!-- CALENDAR-->
        <div id="calendar" class="mb">
            <div class="panel green-panel no-margin">
                <div class="panel-body">
                    <div id="date-popover" class="popover top" style="cursor: pointer; margin-left: 33%; margin-top: -50px; width: 175px; display: none;" data-original-title="" title="">
                        <div class="arrow"></div>
                        <h3 class="popover-title" style="disadding: none;"></h3>
                        <div id="date-popover-content" class="popover-content"></div>
                    </div>
                    <div id="zabuto_calendar_20g9">
                        <div class="zabuto_calendar" id="zabuto_calendar_20g9">
                            <table class="table">
                                <tbody>
                                    <tr class="calendar-month-header">
                                        <th>
                                            <div class="calendar-month-navigation" id="zabuto_calendar_20g9_nav-prev"><span><span class="fa fa-chevron-left text-transparent"></span></span></div>
                                        </th>
                                        <th colspan="5"><span>February 2019</span></th>
                                        <th>
                                            <div class="calendar-month-navigation" id="zabuto_calendar_20g9_nav-next"><span><span class="fa fa-chevron-right text-transparent"></span></span></div>
                                        </th>
                                    </tr>
                                    <tr class="calendar-dow-header">
                                        <th>Mon</th>
                                        <th>Tue</th>
                                        <th>Wed</th>
                                        <th>Thu</th>
                                        <th>Fri</th>
                                        <th>Sat</th>
                                        <th>Sun</th>
                                    </tr>
                                    <tr class="calendar-dow">
                                        <td></td>
                                        <td></td>
                                        <td></td>
                                        <td></td>
                                        <td id="zabuto_calendar_20g9_2019-02-01" class="dow-clickable">
                                            <div id="zabuto_calendar_20g9_2019-02-01_day" class="day">1</div>
                                        </td>
                                        <td id="zabuto_calendar_20g9_2019-02-02" class="dow-clickable">
                                            <div id="zabuto_calendar_20g9_2019-02-02_day" class="day">2</div>
                                        </td>
                                        <td id="zabuto_calendar_20g9_2019-02-03" class="dow-clickable">
                                            <div id="zabuto_calendar_20g9_2019-02-03_day" class="day">3</div>
                                        </td>
                                    </tr>
                                    <tr class="calendar-dow">
                                        <td id="zabuto_calendar_20g9_2019-02-04" class="dow-clickable">
                                            <div id="zabuto_calendar_20g9_2019-02-04_day" class="day">4</div>
                                        </td>
                                        <td id="zabuto_calendar_20g9_2019-02-05" class="dow-clickable">
                                            <div id="zabuto_calendar_20g9_2019-02-05_day" class="day">5</div>
                                        </td>
                                        <td id="zabuto_calendar_20g9_2019-02-06" class="dow-clickable">
                                            <div id="zabuto_calendar_20g9_2019-02-06_day" class="day">6</div>
                                        </td>
                                        <td id="zabuto_calendar_20g9_2019-02-07" class="dow-clickable">
                                            <div id="zabuto_calendar_20g9_2019-02-07_day" class="day">7</div>
                                        </td>
                                        <td id="zabuto_calendar_20g9_2019-02-08" class="dow-clickable">
                                            <div id="zabuto_calendar_20g9_2019-02-08_day" class="day">8</div>
                                        </td>
                                        <td id="zabuto_calendar_20g9_2019-02-09" class="dow-clickable">
                                            <div id="zabuto_calendar_20g9_2019-02-09_day" class="day">9</div>
                                        </td>
                                        <td id="zabuto_calendar_20g9_2019-02-10" class="dow-clickable">
                                            <div id="zabuto_calendar_20g9_2019-02-10_day" class="day">10</div>
                                        </td>
                                    </tr>
                                    <tr class="calendar-dow">
                                        <td id="zabuto_calendar_20g9_2019-02-11" class="dow-clickable">
                                            <div id="zabuto_calendar_20g9_2019-02-11_day" class="day">11</div>
                                        </td>
                                        <td id="zabuto_calendar_20g9_2019-02-12" class="dow-clickable">
                                            <div id="zabuto_calendar_20g9_2019-02-12_day" class="day">12</div>
                                        </td>
                                        <td id="zabuto_calendar_20g9_2019-02-13" class="dow-clickable">
                                            <div id="zabuto_calendar_20g9_2019-02-13_day" class="day">13</div>
                                        </td>
                                        <td id="zabuto_calendar_20g9_2019-02-14" class="dow-clickable">
                                            <div id="zabuto_calendar_20g9_2019-02-14_day" class="day">14</div>
                                        </td>
                                        <td id="zabuto_calendar_20g9_2019-02-15" class="dow-clickable">
                                            <div id="zabuto_calendar_20g9_2019-02-15_day" class="day">15</div>
                                        </td>
                                        <td id="zabuto_calendar_20g9_2019-02-16" class="dow-clickable">
                                            <div id="zabuto_calendar_20g9_2019-02-16_day" class="day">16</div>
                                        </td>
                                        <td id="zabuto_calendar_20g9_2019-02-17" class="dow-clickable">
                                            <div id="zabuto_calendar_20g9_2019-02-17_day" class="day">17</div>
                                        </td>
                                    </tr>
                                    <tr class="calendar-dow">
                                        <td id="zabuto_calendar_20g9_2019-02-18" class="dow-clickable">
                                            <div id="zabuto_calendar_20g9_2019-02-18_day" class="day">18</div>
                                        </td>
                                        <td id="zabuto_calendar_20g9_2019-02-19" class="dow-clickable">
                                            <div id="zabuto_calendar_20g9_2019-02-19_day" class="day">19</div>
                                        </td>
                                        <td id="zabuto_calendar_20g9_2019-02-20" class="dow-clickable">
                                            <div id="zabuto_calendar_20g9_2019-02-20_day" class="day">20</div>
                                        </td>
                                        <td id="zabuto_calendar_20g9_2019-02-21" class="dow-clickable">
                                            <div id="zabuto_calendar_20g9_2019-02-21_day" class="day">21</div>
                                        </td>
                                        <td id="zabuto_calendar_20g9_2019-02-22" class="dow-clickable">
                                            <div id="zabuto_calendar_20g9_2019-02-22_day" class="day">22</div>
                                        </td>
                                        <td id="zabuto_calendar_20g9_2019-02-23" class="dow-clickable">
                                            <div id="zabuto_calendar_20g9_2019-02-23_day" class="day">23</div>
                                        </td>
                                        <td id="zabuto_calendar_20g9_2019-02-24" class="dow-clickable">
                                            <div id="zabuto_calendar_20g9_2019-02-24_day" class="day">24</div>
                                        </td>
                                    </tr>
                                    <tr class="calendar-dow">
                                        <td id="zabuto_calendar_20g9_2019-02-25" class="dow-clickable">
                                            <div id="zabuto_calendar_20g9_2019-02-25_day" class="day">25</div>
                                        </td>
                                        <td id="zabuto_calendar_20g9_2019-02-26" class="dow-clickable">
                                            <div id="zabuto_calendar_20g9_2019-02-26_day" class="day">26</div>
                                        </td>
                                        <td id="zabuto_calendar_20g9_2019-02-27" class="dow-clickable">
                                            <div id="zabuto_calendar_20g9_2019-02-27_day" class="day">27</div>
                                        </td>
                                        <td id="zabuto_calendar_20g9_2019-02-28" class="dow-clickable">
                                            <div id="zabuto_calendar_20g9_2019-02-28_day" class="day">28</div>
                                        </td>
                                        <td></td>
                                        <td></td>
                                        <td></td>
                                    </tr>
                                </tbody>
                            </table>
                            <div class="legend" id="zabuto_calendar_20g9_legend">
                                <span class="legend-text"><span class="badge badge-event">00</span> Special event</span><span class="legend-block"><ul class="legend">
                                    <li class="event"></li>
                                    <span>Regular event</span>
                                </ul>
                                </span>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- / calendar -->
    </div>
    <!-- /col-lg-3 -->
</asp:Content>
