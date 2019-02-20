<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SupervisorTabla.aspx.cs" Inherits="Proyecto_Web.Vistas.Private.Supervisor.Supervisor" %>

<!DOCTYPE html>

<html lang="es">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <meta name="description" content="" />
    <meta name="author" content="Dashboard" />
    <meta name="keyword" content="Dashboard, Bootstrap, Admin, Template, Theme, Responsive, Fluid, Retina" />
    <title>Morelac</title>

    <!-- Favicons -->
    <link href="../../../Plantilla/Privado/img/icon/vaca.png" rel="icon" />
    <link href="../../../Plantilla/Privado/img/icon/vaca.png" rel="apple-touch-icon" />

    <!-- Bootstrap core CSS -->
    <link href="../../../Plantilla/Privado/lib/bootstrap/css/bootstrap.min.css" rel="stylesheet" />
    <!--external css-->
    <link href="lib/font-awesome/css/font-awesome.css" rel="stylesheet" />
    <link rel="stylesheet" type="text/css" href="../../../Plantilla/Privado/css/zabuto_calendar.css" />
    <link rel="stylesheet" type="text/css" href="../../../Plantilla/Privado/lib/gritter/css/jquery.gritter.css" />

    <link rel="stylesheet" type="text/css" href="../../../Plantilla/Privado/lib/bootstrap-fileupload/bootstrap-fileupload.css" />
    <link rel="stylesheet" type="text/css" href="../../../Plantilla/Privado/lib/bootstrap-datepicker/css/datepicker.css" />
    <link rel="stylesheet" type="text/css" href="../../../Plantilla/Privado/lib/bootstrap-daterangepicker/daterangepicker.css" />
    <link rel="stylesheet" type="text/css" href="../../../Plantilla/Privado/lib/bootstrap-timepicker/compiled/timepicker.css" />
    <link rel="stylesheet" type="text/css" href="../../../Plantilla/Privado/lib/bootstrap-datetimepicker/datertimepicker.css" />

    <!-- Custom styles for this template -->
    <link href="../../../Plantilla/Privado/css/style.css" rel="stylesheet" />
    <link href="../../../Plantilla/Privado/css/style-responsive.css" rel="stylesheet" />
    <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet" />
    <link href="https://fonts.googleapis.com/css?family=Roboto:400,700,300" rel="stylesheet" type="text/css" />

    <script src="../../../Plantilla/Privado/lib/chart-master/Chart.js"></script>
    <link href="../../../Plantilla/Privado/lib/advanced-datatable/css/demo_page.css" rel="stylesheet" />
    <link href="../../../Plantilla/Privado/lib/advanced-datatable/css/demo_table.css" rel="stylesheet" />
    <link rel="stylesheet" href="../../../Plantilla/Privado/lib/advanced-datatable/css/DT_bootstrap.css" />

    <script src="../../../Plantilla/Privado/lib/chart-master/Chart.js"></script>


</head>
<body>
    <form id="form2" runat="server">
        <section id="container">
            <!-- **********************************************************************************************************************************************************
        TOP BAR CONTENT & NOTIFICATIONS
        *********************************************************************************************************************************************************** -->
            <!--header start-->
            <header class="header black-bg">
                <div class="sidebar-toggle-box">
                    <div class="fa fa-bars tooltips" data-placement="right" data-original-title="Toggle Navigation"></div>
                </div>
                <!--logo start-->
                <a href="index_admin.aspx" class="logo"><b>MORE<span>LACTEOS</span></b></a>
                <!--logo end-->
                <%--   <div class="nav notify-row" id="top_menu">
                    <!--  notification start -->
                    <ul class="nav top-menu">
                        <!-- settings start -->
                        <li class="dropdown">
                            <a data-toggle="dropdown" class="dropdown-toggle" href="index_admin.aspx">
                                <i class="fa fa-tasks"></i>
                                <span class="badge bg-theme">4</span>
                            </a>
                            <ul class="dropdown-menu extended tasks-bar">
                                <div class="notify-arrow notify-arrow-green"></div>
                                <li>
                                    <p class="green">You have 4 pending tasks</p>
                                </li>
                                <li>
                                    <a href="index.html#">
                                        <div class="task-info">
                                            <div class="desc">Dashio Admin Panel</div>
                                            <div class="percent">40%</div>
                                        </div>
                                        <div class="progress progress-striped">
                                            <div class="progress-bar progress-bar-success" role="progressbar" aria-valuenow="40" aria-valuemin="0" aria-valuemax="100" style="width: 40%">
                                                <span class="sr-only">40% Complete (success)</span>
                                            </div>
                                        </div>
                                    </a>
                                </li>
                                <li>
                                    <a href="index.html#">
                                        <div class="task-info">
                                            <div class="desc">Database Update</div>
                                            <div class="percent">60%</div>
                                        </div>
                                        <div class="progress progress-striped">
                                            <div class="progress-bar progress-bar-warning" role="progressbar" aria-valuenow="60" aria-valuemin="0" aria-valuemax="100" style="width: 60%">
                                                <span class="sr-only">60% Complete (warning)</span>
                                            </div>
                                        </div>
                                    </a>
                                </li>
                                <li>
                                    <a href="index.html#">
                                        <div class="task-info">
                                            <div class="desc">Product Development</div>
                                            <div class="percent">80%</div>
                                        </div>
                                        <div class="progress progress-striped">
                                            <div class="progress-bar progress-bar-info" role="progressbar" aria-valuenow="80" aria-valuemin="0" aria-valuemax="100" style="width: 80%">
                                                <span class="sr-only">80% Complete</span>
                                            </div>
                                        </div>
                                    </a>
                                </li>
                                <li>
                                    <a href="index.html#">
                                        <div class="task-info">
                                            <div class="desc">Payments Sent</div>
                                            <div class="percent">70%</div>
                                        </div>
                                        <div class="progress progress-striped">
                                            <div class="progress-bar progress-bar-danger" role="progressbar" aria-valuenow="70" aria-valuemin="0" aria-valuemax="100" style="width: 70%">
                                                <span class="sr-only">70% Complete (Important)</span>
                                            </div>
                                        </div>
                                    </a>
                                </li>
                                <li class="external">
                                    <a href="#">See All Tasks</a>
                                </li>
                            </ul>
                        </li>
                        <!-- settings end -->
                        <!-- inbox dropdown start-->
                        <li id="header_inbox_bar" class="dropdown">
                            <a data-toggle="dropdown" class="dropdown-toggle" href="index.html#">
                                <i class="fa fa-envelope-o"></i>
                                <span class="badge bg-theme">5</span>
                            </a>
                            <ul class="dropdown-menu extended inbox">
                                <div class="notify-arrow notify-arrow-green"></div>
                                <li>
                                    <p class="green">You have 5 new messages</p>
                                </li>
                                <li>
                                    <a href="index.html#">
                                        <span class="photo">
                                            <img alt="avatar" src="../../../Plantilla/Privado/img/ui-zac.jpg"></span>
                                        <span class="subject">
                                            <span class="from">Zac Snider</span>
                                            <span class="time">Just now</span>
                                        </span>
                                        <span class="message">Hi mate, how is everything?
                                        </span>
                                    </a>
                                </li>
                                <li>
                                    <a href="index.html#">
                                        <span class="photo">
                                            <img alt="avatar" src="../../../Plantilla/Privado/img/ui-divya.jpg"></span>
                                        <span class="subject">
                                            <span class="from">Divya Manian</span>
                                            <span class="time">40 mins.</span>
                                        </span>
                                        <span class="message">Hi, I need your help with this.
                                        </span>
                                    </a>
                                </li>
                                <li>
                                    <a href="index.html#">
                                        <span class="photo">
                                            <img alt="avatar" src="../../../Plantilla/Privado/img/ui-danro.jpg"></span>
                                        <span class="subject">
                                            <span class="from">Dan Rogers</span>
                                            <span class="time">2 hrs.</span>
                                        </span>
                                        <span class="message">Love your new Dashboard.
                                        </span>
                                    </a>
                                </li>
                                <li>
                                    <a href="index.html#">
                                        <span class="photo">
                                            <img alt="avatar" src="../../../Plantilla/Privado/img/ui-sherman.jpg"></span>
                                        <span class="subject">
                                            <span class="from">Dj Sherman</span>
                                            <span class="time">4 hrs.</span>
                                        </span>
                                        <span class="message">Please, answer asap.
                                        </span>
                                    </a>
                                </li>
                                <li>
                                    <a href="index.html#">See all messages</a>
                                </li>
                            </ul>
                        </li>
                        <!-- inbox dropdown end -->
                        <!-- notification dropdown start-->
                        <li id="header_notification_bar" class="dropdown">
                            <a data-toggle="dropdown" class="dropdown-toggle" href="index.html#">
                                <i class="fa fa-bell-o"></i>
                                <span class="badge bg-warning">7</span>
                            </a>
                            <ul class="dropdown-menu extended notification">
                                <div class="notify-arrow notify-arrow-yellow"></div>
                                <li>
                                    <p class="yellow">You have 7 new notifications</p>
                                </li>
                                <li>
                                    <a href="index.html#">
                                        <span class="label label-danger"><i class="fa fa-bolt"></i></span>
                                        Server Overloaded.
                  <span class="small italic">4 mins.</span>
                                    </a>
                                </li>
                                <li>
                                    <a href="index.html#">
                                        <span class="label label-warning"><i class="fa fa-bell"></i></span>
                                        Memory #2 Not Responding.
                  <span class="small italic">30 mins.</span>
                                    </a>
                                </li>
                                <li>
                                    <a href="index.html#">
                                        <span class="label label-danger"><i class="fa fa-bolt"></i></span>
                                        Disk Space Reached 85%.
                  <span class="small italic">2 hrs.</span>
                                    </a>
                                </li>
                                <li>
                                    <a href="index.html#">
                                        <span class="label label-success"><i class="fa fa-plus"></i></span>
                                        New User Registered.
                  <span class="small italic">3 hrs.</span>
                                    </a>
                                </li>
                                <li>
                                    <a href="index.html#">See all notifications</a>
                                </li>
                            </ul>
                        </li>
                        <!-- notification dropdown end -->
                    </ul>
                    <!--  notification end -->
                </div>--%>
                <div class="top-menu">
                    <ul class="nav pull-right top-menu">
                        <li>
                            <asp:LinkButton runat="server" ID="Btn_cerrar" Text="Cerrar Sesión" CssClass="logout" OnClick="Btn_cerrar_Click"></asp:LinkButton>
                        </li>
                    </ul>
                </div>
            </header>
            <!--header end-->
            <!-- **********************************************************************************************************************************************************
        MAIN SIDEBAR MENU
        *********************************************************************************************************************************************************** -->
            <!--sidebar start-->
            <aside>
                <div id="sidebar" class="nav-collapse ">
                    <!-- sidebar menu start-->
                    <ul class="sidebar-menu" id="nav-accordion">
                        <p class="centered">
                            <a href="profile.html">
                                <img src="<%=foto %>" class="img-circle" width="100" />
                            </a>
                        </p>
                        <h5 class="centered"><%=Nombre %> </h5>

                        <asp:Repeater runat="server" ID="Rep_Menu_Dinamico">
                            <ItemTemplate>
                                <li>
                                    <a href="<%#Eval("MENU_URL") %>">
                                        <i class="<%#Eval("MENU_ICON")%>"></i>
                                        <span><%#Eval("MENU_NOMBRE") %></span>
                                    </a>
                                </li>
                            </ItemTemplate>
                        </asp:Repeater>
                    </ul>
                </div>
            </aside>
            <!--main content start-->
            <section id="main-content">
                <section class="wrapper ">
                    <%-- <div class="row mb">--%>
                    <h3><i class="fa fa-angle-right"></i>Advanced Table Example</h3>
                    <div class="row mb">
                        <!-- page start-->
                        <div class="content-panel">
                            <div class="adv-table">
                                <table cellpadding="0" cellspacing="0" border="0" class="display table table-bordered" id="hidden-table-info">
                                    <thead>
                                        <tr>
                                            <th>Identificación</th>
                                            <th>Nombre</th>
                                            <th class="hidden-phone">ACCIONES</th>
                                             <th class="hidden-phone"> </th>
                                           <%-- <th class="hidden-phone"></th>--%>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <asp:Repeater ID="Tabla_Supervisor" runat="server">
                                            <ItemTemplate>
                                                <tr class="gradeA">
                                                    <td><%#Eval("NOMBRET") %></td>
                                                    <td><%#Eval("IDT") %></td>
                                                    <td><button class="btn btn-success"><i class="fa fa-edit"></i> Editar</button> </td>
                                               <td> </td>
                                                    </tr>
                                            </ItemTemplate>
                                        </asp:Repeater>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                        <!-- page end-->
                    </div>
                    <!-- /row -->
                    <%--     </div>--%>
                </section>
            </section>

            <!--main content end-->
            <!--footer start-->
            <footer class="site-footer">
                <div class="text-center">
                    <p>
                        &copy; Derechos de autor <strong>CARLOS & JOHANT</strong>. Todos los derechos reservados
                    </p>
                    <div class="credits">
                        Creado por <a href="#">CAOL & JVV</a>
                    </div>
                    <a href="index.html#" class="go-top">
                        <i class="fa fa-angle-up"></i>
                    </a>
                </div>
            </footer>
            <!--footer end-->
        </section>

        <!-- js placed at the end of the document so the pages load faster -->
        <script src="../../../Plantilla/Privado/lib/jquery/jquery.min.js"></script>
        <script type="text/javascript" language="javascript" src="../../../Plantilla/Privado/lib/advanced-datatable/js/jquery.js"></script>
        <script src="../../../Plantilla/Privado/lib/bootstrap/js/bootstrap.min.js"></script>
        <script class="include" type="text/javascript" src="../../../Plantilla/Privado/lib/jquery.dcjqaccordion.2.7.js"></script>
        <script src="../../../Plantilla/Privado/lib/jquery.scrollTo.min.js"></script>
        <script src="../../../Plantilla/Privado/lib/jquery.nicescroll.js" type="text/javascript"></script>
        <script type="text/javascript" language="javascript" src="../../../Plantilla/Privado/lib/advanced-datatable/js/jquery.dataTables.js"></script>
        <script type="text/javascript" src="../../../Plantilla/Privado/lib/advanced-datatable/js/DT_bootstrap.js"></script>
        <!--common script for all pages-->
        <script src="../../../Plantilla/Privado/lib/common-scripts.js"></script>
        <!--script for this page-->
        <script type="text/javascript">
            /* Formating function for row details */
            function fnFormatDetails(oTable, nTr) {
                var aData = oTable.fnGetData(nTr);
                var sOut = '<table cellpadding="5" cellspacing="0" border="0" style="padding-left:50px;">';
                sOut += '<tr><td>Rendering engine:</td><td>' + aData[1] + ' ' + aData[4] + '</td></tr>';
                sOut += '<tr><td>Link to source:</td><td>Could provide a link here</td></tr>';
                sOut += '<tr><td>Extra info:</td><td>And any further details here (images etc)</td></tr>';
                sOut += '</table>';

                return sOut;
            }

            $(document).ready(function () {
                /*
                 * Insert a 'details' column to the table
                 */
                var nCloneTh = document.createElement('th');
                var nCloneTd = document.createElement('td');
                nCloneTd.innerHTML = '<img src="lib/advanced-datatable/images/details_open.png">';
                nCloneTd.className = "center";

                $('#hidden-table-info thead tr').each(function () {
                    this.insertBefore(nCloneTh, this.childNodes[0]);
                });

                $('#hidden-table-info tbody tr').each(function () {
                    this.insertBefore(nCloneTd.cloneNode(true), this.childNodes[0]);
                });

                /*
                 * Initialse DataTables, with no sorting on the 'details' column
                 */
                var oTable = $('#hidden-table-info').dataTable({
                    "aoColumnDefs": [{
                        "bSortable": false,
                        "aTargets": [0]
                    }],
                    "aaSorting": [
                        [1, 'asc']
                    ]
                });

                /* Add event listener for opening and closing details
                 * Note that the indicator for showing which row is open is not controlled by DataTables,
                 * rather it is done here
                 */
                $('#hidden-table-info tbody td img').live('click', function () {
                    var nTr = $(this).parents('tr')[0];
                    if (oTable.fnIsOpen(nTr)) {
                        /* This row is already open - close it */
                        this.src = "lib/advanced-datatable/media/images/details_open.png";
                        oTable.fnClose(nTr);
                    } else {
                        /* Open this row */
                        this.src = "lib/advanced-datatable/images/details_close.png";
                        oTable.fnOpen(nTr, fnFormatDetails(oTable, nTr), 'details');
                    }
                });
            });
        </script>
    </form>
</body>
</html>
