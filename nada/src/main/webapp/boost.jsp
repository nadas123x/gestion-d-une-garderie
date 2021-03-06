
<link rel="stylesheet" href="paper-dashboard-master/assets/css/bootstrap.min.css">
<script src="paper-dashboard-master/assets/js/core/jquery.min.js" type="text/javascript"></script>
<script src="paper-dashboard-master/assets/js/core/popper.min.js" type="text/javascript"></script>
<script src="paper-dashboard-master/assets/js/core/bootstrap.min.js" type="text/javascript"></script>
<script src="paper-dashboard-master/assets/js/plugins/perfect-scrollbar.jquery.min.js" type="text/javascript"></script>
<script src="paper-dashboard-master/assets/js/plugins/bootstrap-notify.js"></script>

<!--  Plugin for Switches, full documentation here: http://www.jque.re/plugins/version3/bootstrap.switch/ -->
<script src="paper-dashboard-master/assets/js/plugins/chartjs.js"></script>

<!--  Plugin for the Sliders, full documentation here: http://refreshless.com/nouislider/ -->

<!--  Google Maps Plugin    -->
<script type="text/javascript" src="https://maps.googleapis.com/maps/api/js?key=YOUR_KEY_HERE"></script>

<!-- Chart JS -->

<!--  Notifications Plugin    -->

<!-- Control Center for Paper Dashboard: parallax effects, scripts for the example pages etc -->
<script src="../assets/js/paper-dashboard.js?v=2.0.0" type="text/javascript"></script>

<!-- Paper Dashboard DEMO methods, don't include it in your project! -->
<script src="../assets/demo/js/demo.js"></script>
<!--     Fonts and icons     -->
<link href="https://fonts.googleapis.com/css?family=Montserrat:400,700,200" rel="stylesheet" />
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/latest/css/font-awesome.min.css" />
<!doctype html>
<html lang="en">
  <head>
    <title>Hello, world!</title>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0" name="viewport" />

    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />

    <!--     Fonts and icons     -->
    <link href="https://fonts.googleapis.com/css?family=Montserrat:400,700,200" rel="stylesheet" />
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/latest/css/font-awesome.min.css" />

    <!-- Material Kit CSS -->
    <link href="../assets/css/bootstrap.min.css" rel="stylesheet" />
    <link href="../assets/css/paper-dashboard.css?v=2.0.0" rel="stylesheet" />

  </head>
  <body>
    <div class="wrapper">
      <div class="sidebar" data-color="white">
      <!--
      Tip 1: You can change the color of the sidebar using: data-color="white | black"

      -->

        <div class="logo">
          <a href="http://www.creative-tim.com" class="simple-text logo-normal">
              Creative Tim
          </a>
        </div>

        <div class="sidebar-wrapper">
          <div class="user">
              <div class="photo">
                  <img src="../assets/img/chet.jpg" />
              </div>
              <div class="info">
                  <a data-toggle="collapse" href="#collapseExample" class="collapsed">
                      <span>
                          Chet Facker
                          <b class="caret"></b>
                      </span>
                  </a>
                  <div class="clearfix"></div>
                  <div class="collapse" id="collapseExample">
                      <ul class="nav">
                          <li>
                              <a href="#">
                                  <span class="sidebar-mini-icon">MP</span>
                                  <span class="sidebar-normal">My Profile</span>
                              </a>
                          </li>
                          <li>
                              <a href="#">
                                  <span class="sidebar-mini-icon">EP</span>
                                  <span class="sidebar-normal">Edit Profile</span>
                              </a>
                          </li>
                          <li>
                              <a href="#">
                                  <span class="sidebar-mini-icon">S</span>
                                  <span class="sidebar-normal">Settings</span>
                              </a>
                          </li>
                      </ul>
                  </div>
              </div>
          </div>
          <ul class="nav">

              <li class="active">
                  <a href="../examples/dashboard.html">
                      <i class="nc-icon nc-app"></i>
                      <p>Example 1</p>
                  </a>
              </li>

              <li>
                  <a data-toggle="collapse" href="#pagesExamples">
                      <i class="nc-icon nc-layout-11"></i>
                      <p>Example 2
                         <b class="caret"></b>
                      </p>
                  </a>

                  <div class="collapse" id="pagesExamples">
                      <ul class="nav">
                          <li>
                              <a href="../examples/pages/pricing.html">
                                  <span class="sidebar-mini-icon">C1</span>
                                  <span class="sidebar-normal">Collapse 1</span>
                              </a>
                          </li>
                          <li>
                              <a href="../examples/pages/timeline.html">
                                  <span class="sidebar-mini-icon">C2</span>
                                  <span class="sidebar-normal">Collapse 2</span>
                              </a>
                          </li>
                      </ul>
                  </div>
              </li>
          </ul>
        </div>
      </div>

      <div class="main-panel">
        <nav class="navbar navbar-expand-lg navbar-transparent navbar-absolute">
          <div class="container-fluid">


            <div class="navbar-wrapper">
              <div class="navbar-toggle">
                <button type="button" class="navbar-toggler">
                  <span class="navbar-toggler-bar bar1"></span>
                  <span class="navbar-toggler-bar bar2"></span>
                  <span class="navbar-toggler-bar bar3"></span>
                </button>
              </div>
              <a class="navbar-brand" href="#pablo">Dashboard</a>
            </div>



            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navigation" aria-controls="navigation-index" aria-expanded="false" aria-label="Toggle navigation">
              <span class="navbar-toggler-bar navbar-kebab"></span>
              <span class="navbar-toggler-bar navbar-kebab"></span>
              <span class="navbar-toggler-bar navbar-kebab"></span>
            </button>

              <div class="collapse navbar-collapse justify-content-end" id="navigation">



              <form>
                  <div class="input-group no-border">
                      <input type="text" value="" class="form-control" placeholder="Search...">
                      <span class="input-group-addon">
                        <i class="nc-icon nc-zoom-split"></i>
                      </span>
                  </div>
              </form>

              <ul class="navbar-nav">
                <li class="nav-item">
                  <a class="nav-link" href="#pablo">
                    <i class="nc-icon nc-chart-bar-32"></i>
                    <p>
                      <span class="d-lg-none d-md-block">Stats</span>
                    </p>
                  </a>
                </li>
                <li class="nav-item dropdown">
                  <a class="nav-link dropdown-toggle" href="http://example.com" id="navbarDropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                    <i class="nc-icon nc-vector"></i>
                    <p>
                      <span class="d-lg-none d-md-block">Some Actions</span>
                    </p>
                  </a>
                  <div class="dropdown-menu dropdown-menu-right" aria-labelledby="navbarDropdownMenuLink">
                    <a class="dropdown-item" href="#">Action</a>
                    <a class="dropdown-item" href="#">Another action</a>
                    <a class="dropdown-item" href="#">Something else here</a>
                  </div>
                </li>

                <li class="nav-item">
                  <a class="nav-link" href="#pablo">
                    <i class="nc-icon nc-single-02"></i>
                    <p>
                      <span class="d-lg-none d-md-block">Account</span>
                    </p>
                  </a>
                </li>
              </ul>


              </div>
          </div>
        </nav>

        <div class="panel-header panel-header-sm">
        </div>

        <div class="content">
          <div class="card">
            <div class="card-header">
              <h3>Hello, world!</h3>
            </div>
          </div>          
        </div>

        <footer class="footer" >
          <div class="container-fluid">
            <nav>
              <ul>
                <li>
                    <a href="https://www.creative-tim.com">
                        Creative Tim
                    </a>
                </li>
                <li>
                    <a href="https://creative-tim.com/presentation">
                       About Us
                    </a>
                </li>
                <li>
                    <a href="https://creative-tim.com/blog">
                       Blog
                    </a>
                </li>
                <li>
                    <a href="https://github.com/creativetimofficial/paper-dashboard-2/blob/master/LICENSE.md">
                        MIT License
                    </a>
                </li>
              </ul>
            </nav>
            <div class="copyright">
              &copy; <script>document.write(new Date().getFullYear())</script> Coded by <a href="https://www.creative-tim.com" target="_blank">Creative Tim</a>.
            </div>
          </div>
        </footer>
      </div>
    </div>
  </body>
  <!--   Core JS Files   -->
  <script src="../assets/js/core/jquery.min.js" type="text/javascript"></script>
  <script src="../assets/js/core/popper.min.js" type="text/javascript"></script>
  <script src="../assets/js/core/bootstrap.min.js" type="text/javascript"></script>
  <script src="../assets/js/plugins/perfect-scrollbar.jquery.min.js" type="text/javascript"></script>
  <script src="../assets/js/plugins/moment.min.js"></script>

  <!--  Plugin for Switches, full documentation here: http://www.jque.re/plugins/version3/bootstrap.switch/ -->
  <script src="../assets/js/plugins/bootstrap-switch.js"></script>

  <!--  DataTables.net Plugin, full documentation here: https://datatables.net/    -->
  <script src="../assets/js/plugins/jquery.dataTables.min.js"></script>

  <!--  Google Maps Plugin    -->
  <script type="text/javascript" src="https://maps.googleapis.com/maps/api/js?key=YOUR_KEY_HERE"></script>

  <!-- Chart JS -->
  <script src="../assets/js/plugins/chartjs.min.js"></script>

  <!--  Notifications Plugin    -->
  <script src="../assets/js/plugins/bootstrap-notify.js"></script>

  <!-- Control Center for Paper Dashboard: parallax effects, scripts for the example pages etc -->
  <script src="../assets/js/paper-dashboard.js?v=2.0.0" type="text/javascript"></script>
</html>