<%@page import="za.co.trudon.tmt.data.type.request.LoginData"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <!-- Meta, title, CSS, favicons, etc. -->
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <title>Trudon Project Dashboard</title>

    <!-- Bootstrap -->
    <link href="../vendors/bootstrap/dist/css/bootstrap.min.css" rel="stylesheet">
    <!-- Font Awesome -->
    <link href="../vendors/font-awesome/css/font-awesome.min.css" rel="stylesheet">
    <!-- NProgress -->
    <link href="../vendors/nprogress/nprogress.css" rel="stylesheet">
    <!-- bootstrap-progressbar -->
    <link href="../vendors/bootstrap-progressbar/css/bootstrap-progressbar-3.3.4.min.css" rel="stylesheet">

    <!-- Custom Theme Style -->
    <link href="../build/css/custom.css" rel="stylesheet">
  </head>

  <body class="nav-md">
    <div class="container body">
      <div class="main_container">
        <div class="col-md-3 left_col">
          <div class="left_col scroll-view">
            <div class="navbar nav_title" style="border: 0;">
              <a href="#" class="site_title"><img src="../images/trudon_logo.png" width="62px"></a>
            </div>

            <div class="clearfix"></div>

            <!-- menu profile quick info -->
            <!--<div class="profile clearfix">
              <div class="profile_pic">
                <img src="images/img.jpg" alt="..." class="img-circle profile_img">
              </div>
              <div class="profile_info">
                <span>Welcome,</span>
                <h2>Tebs Ramekosi</h2>
              </div>
            </div>-->
            <!-- /menu profile quick info -->

            <br />

            <!-- sidebar menu -->
            <div id="sidebar-menu" class="main_menu_side hidden-print main_menu">
              <div class="menu_section">
                <ul class="nav side-menu">
                  <li class="active" id="projectDashboardBtn"><a><i class="fa fa-home"></i> Project Dashboard </a>
                    <!--<ul class="nav child_menu">
                      <li><a href="index.html">Dashboard</a></li>
                      <li><a href="index2.html">Dashboard2</a></li>
                      <li><a href="index3.html">Dashboard3</a></li>
                    </ul>-->
                  </li>
                  <li id="projectAdminBtn"><a><i class="fa fa-edit"></i> Project Administration </a>
                    <!--<ul class="nav child_menu">
                      <li><a href="form.html">General Form</a></li>
                      <li><a href="form_advanced.html">Advanced Components</a></li>
                      <li><a href="form_validation.html">Form Validation</a></li>
                      <li><a href="form_wizards.html">Form Wizard</a></li>
                      <li><a href="form_upload.html">Form Upload</a></li>
                      <li><a href="form_buttons.html">Form Buttons</a></li>
                    </ul>-->
                  </li>
                  <li id="resourcesBtn"><a><i class="fa fa-group"></i> Resources </a>
                    <!--<ul class="nav child_menu">
                      <li><a href="general_elements.html">General Elements</a></li>
                      <li><a href="media_gallery.html">Media Gallery</a></li>
                      <li><a href="typography.html">Typography</a></li>
                      <li><a href="icons.html">Icons</a></li>
                      <li><a href="glyphicons.html">Glyphicons</a></li>
                      <li><a href="widgets.html">Widgets</a></li>
                      <li><a href="invoice.html">Invoice</a></li>
                      <li><a href="inbox.html">Inbox</a></li>
                      <li><a href="calendar.html">Calendar</a></li>
                    </ul>-->
                  </li>
                  <li id="tasksBtn"><a><i class="fa fa-building"></i> Tasks </a></li>
                </ul>
              </div>

            </div>
            <!-- /sidebar menu -->

            <!-- /menu footer buttons -->
            <div class="sidebar-footer hidden-small">
              <a data-toggle="tooltip" data-placement="top" title="Settings">
                <span class="glyphicon glyphicon-cog" aria-hidden="true"></span>
              </a>
              <a data-toggle="tooltip" data-placement="top" title="FullScreen">
                <span class="glyphicon glyphicon-fullscreen" aria-hidden="true"></span>
              </a>
              <a data-toggle="tooltip" data-placement="top" title="Lock">
                <span class="glyphicon glyphicon-eye-close" aria-hidden="true"></span>
              </a>
              <a data-toggle="tooltip" data-placement="top" title="Logout">
                <span class="glyphicon glyphicon-off" aria-hidden="true"></span>
              </a>
            </div>
            <!-- /menu footer buttons -->
          </div>
        </div>
          <%
              LoginData loginData = (LoginData)session.getAttribute("loginData");
              String fullUserName = loginData.getUser().getFullName();
              fullUserName = fullUserName.substring(fullUserName.indexOf(':')+1);
          %>

        <!-- top navigation -->
        <div class="top_nav">
          <div class="nav_menu">
            <img src="../images/activiti_logo.png" style="float:left;margin-left:50px;margin-top:10px" width="150"/>
              <nav>
              <div class="nav toggle">
                <a id="menu_toggle"><i class="fa fa-bars"></i></a>
              </div>

              <ul class="nav navbar-nav navbar-right">
                <li class="">
                  <a href="javascript:;" class="user-profile dropdown-toggle" data-toggle="dropdown" aria-expanded="false">
                    <img src="../images/img.jpg" alt=""><%=fullUserName%>
                    <span class=" fa fa-angle-down" style="margin-left: -1px;"></span>
                  </a>
                  <ul class="dropdown-menu dropdown-usermenu pull-right">
                    <li><a href="javascript:;"> Profile</a></li>
                    <li>
                      <a href="javascript:;">
                        <span class="badge bg-red pull-right">50%</span>
                        <span>Settings</span>
                      </a>
                    </li>
                    <li><a href="javascript:;">Help</a></li>
                    <li><a href="login.html"><i class="fa fa-sign-out pull-right"></i> Log Out</a></li>
                  </ul>
                </li>

                <li role="presentation" class="dropdown">
                  <a href="javascript:;" class="dropdown-toggle info-number" data-toggle="dropdown" aria-expanded="false">
                    <i class="fa fa-envelope-o"></i>
                    <span class="badge bg-green">6</span>
                  </a>
                  <ul id="menu1" class="dropdown-menu list-unstyled msg_list" role="menu">
                    <li>
                      <a>
                        <span class="image"><img src="../images/img.jpg" alt="Profile Image" /></span>
                        <span>
                          <span>John Smith</span>
                          <span class="time">3 mins ago</span>
                        </span>
                        <span class="message">
                          Film festivals used to be do-or-die moments for movie makers. They were where...
                        </span>
                      </a>
                    </li>
                    <li>
                      <a>
                        <span class="image"><img src="../images/img.jpg" alt="Profile Image" /></span>
                        <span>
                          <span>John Smith</span>
                          <span class="time">3 mins ago</span>
                        </span>
                        <span class="message">
                          Film festivals used to be do-or-die moments for movie makers. They were where...
                        </span>
                      </a>
                    </li>
                    <li>
                      <a>
                        <span class="image"><img src="../images/img.jpg" alt="Profile Image" /></span>
                        <span>
                          <span>John Smith</span>
                          <span class="time">3 mins ago</span>
                        </span>
                        <span class="message">
                          Film festivals used to be do-or-die moments for movie makers. They were where...
                        </span>
                      </a>
                    </li>
                    <li>
                      <a>
                        <span class="image"><img src="../images/img.jpg" alt="Profile Image" /></span>
                        <span>
                          <span>John Smith</span>
                          <span class="time">3 mins ago</span>
                        </span>
                        <span class="message">
                          Film festivals used to be do-or-die moments for movie makers. They were where...
                        </span>
                      </a>
                    </li>
                    <li>
                      <div class="text-center">
                        <a>
                          <strong>See All Alerts</strong>
                          <i class="fa fa-angle-right"></i>
                        </a>
                      </div>
                    </li>
                  </ul>
                </li>
              </ul>
            </nav>
          </div>
        </div>
        <!-- /top navigation -->

        <!-- page content -->
        <div class="right_col" role="main">
          <div class="">
            <div class="page-title">
              <div class="title_left">
                <h3>Project Dashboard</h3>
              </div>

              <div class="title_right">
                <div class="col-md-5 col-sm-5 col-xs-12 form-group pull-right top_search">
                  <div class="input-group">
                    <!--<input type="text" class="form-control" placeholder="Search for...">
                    <span class="input-group-btn">
                      <button class="btn btn-default" type="button">Go!</button>
                    </span>-->
                  </div>
                </div>
              </div>
            </div>

            <div class="clearfix"></div>

            <div class="row">
              <div class="col-md-12">
                <div class="">
                  <div class="x_content">
                    <br />
                    <div class="row">
                      
                      <div class="col-md-3 col-xs-12 widget widget_tally_box">
                        <div class="x_panel ui-ribbon-container fixed_height_390">
                          <div class="x_title">
                            <a href="project_details.html"><h2><b>YEXT</b></h2></a>
                            <div class="clearfix"></div>
                          </div>
                          <div class="x_content">
                            <h3 class="name_title">Progress &nbsp;<i class="fa fa-arrow-up arrow-up"></i></h3>
                            <div style="text-align: center; margin-bottom: 17px">
                              <span class="chart" data-percent="92">
                                                  <span class="percent"></span>
                              </span>
                            </div>
                            <div class="divider"></div>
                            <h3 class="name_title">Impact</h3>
                            <p>Impact on revenue and usage</p>
                            <div class="flex">
                              <ul class="list-inline count2">
                                <li>
                                  <h3 class="impact-text">R 125M</h3>
                                  <span>Revenue</span>
                                </li>
                                <li>
                                  <h3 class="impact-text">1M UBs</h3>
                                  <span>Usage</span>
                                </li>
                              </ul>
                            </div>
                            <div class="divider"></div>
                            <h3 class="name_title">Project Team</h3>
                            <div class="flex">
                              <ul class="list-inline team-margin">
                                <li>
                                  <img src="../images/img.jpg" title="Tebs Ramekosi" class="img-circle profile_img team-member-status-up" style="border-color:#26b99a;">
                                </li>
                                <li>
                                    <img src="../images/user.png" title="Louis Nolan" class="img-circle profile_img team-member-status-down" style="border-color:#f9d407;">
                                </li>
                                <li>
                                    <img src="../images/user.png" title="Ignatius Mashimbye (Project Manager)" class="img-circle profile_img team-member-status-up" style="border-color:#ff5904;">
                                </li>
                                <li>
                                    <img src="../images/user.png" title="Matshepiso Ntahane" class="img-circle profile_img team-member-status-right" style="border-color:#26b99a;">
                                </li>
                                <li>
                                    <img src="../images/user.png" title="Dineo Ramokoena" class="img-circle profile_img team-member-status-up" style="border-color:#26b99a;">
                                </li>
                              </ul>
                            </div>
                            <div class="divider"></div>
                            <h3 class="name_title">Systems</h3>
                                <div id="echart_pie2" style="height:250px;"></div>
                            <div class="divider"></div>
                            <h3 class="name_title">Quality</h3>
                            <br/>
                            <div class="flex">
                                <div class="col-md-12">
                                    <div class="progress">
                                      Critical Bugs (Show Stoppers)<br/><div class="progress-bar progress-bar-danger quality-text" data-transitiongoal="25"></div>
                                    </div>
                                    <div class="progress">
                                      Medium Bugs<br/><div class="progress-bar progress-bar-warning quality-text" data-transitiongoal="45"></div>
                                    </div>
                                    <div class="progress">
                                      Successful QC<br/><div class="progress-bar progress-bar-success quality-text" data-transitiongoal="95"></div>
                                    </div>
                                  </div>
                            </div>
                            <div class="divider"></div>
                          </div>
                        </div>
                      </div>


                     <div class="col-md-3 col-xs-12 widget widget_tally_box">
                        <div class="x_panel ui-ribbon-container fixed_height_390">
                          <div class="ui-ribbon-wrapper">
                            <div class="ui-ribbon">
                              Completed
                            </div>
                          </div>
                          <div class="x_title">
                            <h2><b>New Sales Approach</b></h2>
                            <div class="clearfix"></div>
                          </div>
                          <div class="x_content">
                            <h3 class="name_title">Progress &nbsp;<i class="fa fa-arrow-up arrow-up"></i></h3>
                            <div style="text-align: center; margin-bottom: 17px">
                              <span class="chart" data-percent="100">
                                                  <span class="percent"></span>
                              </span>
                            </div>
                            <div class="divider"></div>
                            <h3 class="name_title">Impact</h3>
                            <p>Impact on revenue and usage</p>
                            <div class="flex">
                              <ul class="list-inline count2">
                                <li>
                                  <h3 class="impact-text">R 125M</h3>
                                  <span>Revenue</span>
                                </li>
                                <li>
                                  <h3 class="impact-text">1M UBs</h3>
                                  <span>Usage</span>
                                </li>
                              </ul>
                            </div>
                            <div class="divider"></div>
                            <h3 class="name_title">Project Team</h3>
                            <div class="flex">
                              <ul class="list-inline team-margin">
                                <li>
                                  <img src="../images/img.jpg" title="Tebs Ramekosi" class="img-circle profile_img team-member-status-up" style="border-color:#26b99a;">
                                </li>
                                <li>
                                    <img src="../images/user.png" title="Louis Nolan" class="img-circle profile_img team-member-status-down" style="border-color:#f9d407;">
                                </li>
                                <li>
                                    <img src="../images/user.png" title="Ignatius Mashimbye (Project Manager)" class="img-circle profile_img team-member-status-up" style="border-color:#ff5904;">
                                </li>
                                <li>
                                    <img src="../images/user.png" title="Matshepiso Ntahane" class="img-circle profile_img team-member-status-right" style="border-color:#26b99a;">
                                </li>
                                <li>
                                    <img src="../images/user.png" title="Dineo Ramokoena" class="img-circle profile_img team-member-status-up" style="border-color:#26b99a;">
                                </li>
                              </ul>
                            </div>
                            <div class="divider"></div>
                            <h3 class="name_title">Systems</h3>
                                <div id="project2" style="height:250px;"></div>
                            <div class="divider"></div>
                            <h3 class="name_title">Quality</h3>
                            <br/>
                            <div class="flex">
                                <div class="col-md-12">
                                    <div class="progress">
                                      Critical Bugs (Show Stoppers)<br/><div class="progress-bar progress-bar-danger quality-text" data-transitiongoal="25"></div>
                                    </div>
                                    <div class="progress">
                                      Medium Bugs<br/><div class="progress-bar progress-bar-warning quality-text" data-transitiongoal="45"></div>
                                    </div>
                                    <div class="progress">
                                      Successful QC<br/><div class="progress-bar progress-bar-success quality-text" data-transitiongoal="95"></div>
                                    </div>
                                  </div>
                            </div>
                            <div class="divider"></div>
                          </div>
                        </div>
                      </div>


                      <div class="col-md-3 col-xs-12 widget widget_tally_box">
                        <div class="x_panel ui-ribbon-container fixed_height_390">
                          <div class="x_title">
                            <h2><b>YellowPages Redesign</b></h2>
                            <div class="clearfix"></div>
                          </div>
                          <div class="x_content">
                            <h3 class="name_title">Progress &nbsp;<i class="fa fa-arrow-down arrow-down"></i></h3>
                            <div style="text-align: center; margin-bottom: 17px">
                              <span class="chart" data-percent="22">
                                                  <span class="percent"></span>
                              </span>
                            </div>
                            <div class="divider"></div>
                            <h3 class="name_title">Impact</h3>
                            <p>Impact on revenue and usage</p>
                            <div class="flex">
                              <ul class="list-inline count2">
                                <li>
                                  <h3 class="impact-text">R 200M</h3>
                                  <span>Revenue</span>
                                </li>
                                <li>
                                  <h3 class="impact-text">1M UBs</h3>
                                  <span>Usage</span>
                                </li>
                              </ul>
                            </div>
                            <div class="divider"></div>
                            <h3 class="name_title">Project Team</h3>
                            <div class="flex">
                              <ul class="list-inline team-margin">
                                <li>
                                  <img src="../images/img.jpg" title="Tebs Ramekosi" class="img-circle profile_img team-member-status-up" style="border-color:#26b99a;">
                                </li>
                                <li>
                                    <img src="../images/user.png" title="Louis Nolan" class="img-circle profile_img team-member-status-down" style="border-color:#f9d407;">
                                </li>
                                <li>
                                    <img src="../images/user.png" title="Ignatius Mashimbye (Project Manager)" class="img-circle profile_img team-member-status-up" style="border-color:#ff5904;">
                                </li>
                                <li>
                                    <img src="../images/user.png" title="Matshepiso Ntahane" class="img-circle profile_img team-member-status-right" style="border-color:#26b99a;">
                                </li>
                                <li>
                                    <img src="../images/user.png" title="Dineo Ramokoena" class="img-circle profile_img team-member-status-up" style="border-color:#26b99a;">
                                </li>
                              </ul>
                            </div>
                            <div class="divider"></div>
                            <h3 class="name_title">Systems</h3>
                                <div id="project3" style="height:250px;"></div>
                            <div class="divider"></div>
                            <h3 class="name_title">Quality</h3>
                            <br/>
                            <div class="flex">
                                <div class="col-md-12">
                                    <div class="progress">
                                      Critical Bugs (Show Stoppers)<br/><div class="progress-bar progress-bar-danger quality-text" data-transitiongoal="25"></div>
                                    </div>
                                    <div class="progress">
                                      Medium Bugs<br/><div class="progress-bar progress-bar-warning quality-text" data-transitiongoal="45"></div>
                                    </div>
                                    <div class="progress">
                                      Successful QC<br/><div class="progress-bar progress-bar-success quality-text" data-transitiongoal="95"></div>
                                    </div>
                                  </div>
                            </div>
                            <div class="divider"></div>
                          </div>
                        </div>
                      </div>


                      <div class="col-md-3 col-xs-12 widget widget_tally_box">
                        <div class="x_panel ui-ribbon-container fixed_height_390">
                          <div class="x_title">
                            <h2><b>Business Marketing</b></h2>
                            <div class="clearfix"></div>
                          </div>
                          <div class="x_content">
                            <h3 class="name_title">Progress &nbsp;<i class="fa fa-arrow-right arrow-right"></i></h3>
                            <div style="text-align: center; margin-bottom: 17px">
                              <span class="chart" data-percent="86">
                                                  <span class="percent"></span>
                              </span>
                            </div>
                            <div class="divider"></div>
                            <h3 class="name_title">Impact</h3>
                            <p>Impact on revenue and usage</p>
                            <div class="flex">
                              <ul class="list-inline count2">
                                <li>
                                  <h3 class="impact-text">R 125M</h3>
                                  <span>Revenue</span>
                                </li>
                                <li>
                                  <h3 class="impact-text">1M UBs</h3>
                                  <span>Usage</span>
                                </li>
                              </ul>
                            </div>
                            <div class="divider"></div>
                            <h3 class="name_title">Project Team</h3>
                            <div class="flex">
                              <ul class="list-inline team-margin">
                                <li>
                                  <img src="../images/img.jpg" title="Tebs Ramekosi" class="img-circle profile_img team-member-status-up" style="border-color:#26b99a;">
                                </li>
                                <li>
                                    <img src="../images/user.png" title="Louis Nolan" class="img-circle profile_img team-member-status-down" style="border-color:#f9d407;">
                                </li>
                                <li>
                                    <img src="../images/user.png" title="Ignatius Mashimbye (Project Manager)" class="img-circle profile_img team-member-status-up" style="border-color:#ff5904;">
                                </li>
                                <li>
                                    <img src="../images/user.png" title="Matshepiso Ntahane" class="img-circle profile_img team-member-status-right" style="border-color:#26b99a;">
                                </li>
                                <li>
                                    <img src="../images/user.png" title="Dineo Ramokoena" class="img-circle profile_img team-member-status-up" style="border-color:#26b99a;">
                                </li>
                              </ul>
                            </div>
                            <div class="divider"></div>
                            <h3 class="name_title">Systems</h3>
                                <div id="project4" style="height:250px;"></div>
                            <div class="divider"></div>
                            <h3 class="name_title">Quality</h3>
                            <br/>
                            <div class="flex">
                                <div class="col-md-12">
                                    <div class="progress">
                                      Critical Bugs (Show Stoppers)<br/><div class="progress-bar progress-bar-danger quality-text" data-transitiongoal="25"></div>
                                    </div>
                                    <div class="progress">
                                      Medium Bugs<br/><div class="progress-bar progress-bar-warning quality-text" data-transitiongoal="45"></div>
                                    </div>
                                    <div class="progress">
                                      Successful QC<br/><div class="progress-bar progress-bar-success quality-text" data-transitiongoal="95"></div>
                                    </div>
                                  </div>
                            </div>
                            <div class="divider"></div>
                          </div>
                        </div>
                      </div>

                      <div class="col-md-3 col-xs-12 widget widget_tally_box">
                        <div class="x_panel ui-ribbon-container fixed_height_390">
                          <div class="x_title">
                            <h2><b>Dept of Education</b></h2>
                            <div class="clearfix"></div>
                          </div>
                          <div class="x_content">
                            <h3 class="name_title">Progress &nbsp;<i class="fa fa-arrow-up arrow-up"></i></h3>
                            <div style="text-align: center; margin-bottom: 17px">
                              <span class="chart" data-percent="95">
                                                  <span class="percent"></span>
                              </span>
                            </div>
                            <div class="divider"></div>
                            <h3 class="name_title">Impact</h3>
                            <p>Impact on revenue and usage</p>
                            <div class="flex">
                              <ul class="list-inline count2">
                                <li>
                                  <h3 class="impact-text">R 125M</h3>
                                  <span>Revenue</span>
                                </li>
                                <li>
                                  <h3 class="impact-text">1M UBs</h3>
                                  <span>Usage</span>
                                </li>
                              </ul>
                            </div>
                            <div class="divider"></div>
                            <h3 class="name_title">Project Team</h3>
                            <div class="flex">
                              <ul class="list-inline team-margin">
                                <li>
                                  <img src="../images/img.jpg" title="Tebs Ramekosi" class="img-circle profile_img team-member-status-up" style="border-color:#26b99a;">
                                </li>
                                <li>
                                    <img src="../images/user.png" title="Louis Nolan" class="img-circle profile_img team-member-status-down" style="border-color:#f9d407;">
                                </li>
                                <li>
                                    <img src="../images/user.png" title="Ignatius Mashimbye (Project Manager)" class="img-circle profile_img team-member-status-up" style="border-color:#ff5904;">
                                </li>
                                <li>
                                    <img src="../images/user.png" title="Matshepiso Ntahane" class="img-circle profile_img team-member-status-right" style="border-color:#26b99a;">
                                </li>
                                <li>
                                    <img src="../images/user.png" title="Dineo Ramokoena" class="img-circle profile_img team-member-status-up" style="border-color:#26b99a;">
                                </li>
                              </ul>
                            </div>
                            <div class="divider"></div>
                            <h3 class="name_title">Systems</h3>
                                <div id="project5" style="height:250px;"></div>
                            <div class="divider"></div>
                            <h3 class="name_title">Quality</h3>
                            <br/>
                            <div class="flex">
                                <div class="col-md-12">
                                    <div class="progress">
                                      Critical Bugs (Show Stoppers)<br/><div class="progress-bar progress-bar-danger quality-text" data-transitiongoal="25"></div>
                                    </div>
                                    <div class="progress">
                                      Medium Bugs<br/><div class="progress-bar progress-bar-warning quality-text" data-transitiongoal="45"></div>
                                    </div>
                                    <div class="progress">
                                      Successful QC<br/><div class="progress-bar progress-bar-success quality-text" data-transitiongoal="95"></div>
                                    </div>
                                  </div>
                            </div>
                            <div class="divider"></div>
                          </div>
                        </div>
                      </div>

                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
        <!-- /page content -->

        <!-- footer content -->
        <footer>
          <div class="pull-right">
            
          </div>
          <div class="clearfix"></div>
        </footer>
        <!-- /footer content -->
      </div>
    </div>

    <!-- jQuery -->
    <script src="../vendors/jquery/dist/jquery.min.js"></script>
    <!-- Bootstrap -->
    <script src="../vendors/bootstrap/dist/js/bootstrap.min.js"></script>
    <!-- FastClick -->
    <script src="../vendors/fastclick/lib/fastclick.js"></script>
    <!-- NProgress -->
    <script src="../vendors/nprogress/nprogress.js"></script>    
    <!-- Chart.js -->
    <script src="../vendors/Chart.js/dist/Chart.min.js"></script>
    <!-- jQuery Sparklines -->
    <script src="../vendors/jquery-sparkline/dist/jquery.sparkline.min.js"></script>
    <!-- easy-pie-chart -->
    <script src="../vendors/jquery.easy-pie-chart/dist/jquery.easypiechart.min.js"></script>
    <!-- bootstrap-progressbar -->
    <script src="../vendors/bootstrap-progressbar/bootstrap-progressbar.min.js"></script>
    <!-- ECharts -->
    <script src="../vendors/echarts/dist/echarts.min.js"></script>
    <!-- Custom Theme Scripts -->
    <script src="../build/js/custom.js"></script>

    <!-- chart js -->
    <!-- <script type="text/javascript" src="js/moment/moment.min.js"></script> -->
    <!-- <script src="js/chartjs/chart.min.js"></script> -->
    <!-- bootstrap progress js -->
    <!-- <script src="js/progressbar/bootstrap-progressbar.min.js"></script> -->
    <!-- icheck -->
    <!-- <script src="js/icheck/icheck.min.js"></script> -->

    <!-- <script src="../build/js/custom.min.js"></script> -->

    <!-- pace -->
    <!-- <script src="js/pace/pace.min.js"></script> -->

    <!-- sparkline -->
    <!-- <script src="js/sparkline/jquery.sparkline.min.js"></script> -->
    <!-- easypie -->
    <!-- <script src="js/easypie/jquery.easypiechart.min.js"></script> -->
    <script>
      $(function() {
        $('.chart').easyPieChart({
          easing: 'easeOutElastic',
          delay: 3000,
          barColor: '#26B99A',
          trackColor: '#fff',
          scaleColor: false,
          lineWidth: 20,
          trackWidth: 16,
          lineCap: 'butt',
          onStep: function(from, to, percent) {
            $(this.el).find('.percent').text(Math.round(percent));
          }
        });
      });
    </script>

    <script>
      $(document).ready(function() {
        $('#projectAdminBtn').click(function(event) {
            //navigate to home page
            window.location.href = "projects";
        });
        
        $('#resourcesBtn').click(function(event) {
            //navigate to  resources
            window.location.href = "resources";
        });
        
        $('#tasksBtn').click(function(event) {
            //navigate to  resources
            window.location.href = "tasks";
        });
        
        Chart.defaults.global.legend = {
          enabled: false
        };

        new Chart(document.getElementById("canvas_line"), {
          type: 'line',
          data: {
            labels: ["January", "February", "March", "April", "May", "June", "July"],
            datasets: [{
              label: "My First dataset",
              backgroundColor: "rgba(38, 185, 154, 0.31)",
              borderColor: "rgba(38, 185, 154, 0.7)",
              pointBorderColor: "rgba(38, 185, 154, 0.7)",
              pointBackgroundColor: "rgba(38, 185, 154, 0.7)",
              pointHoverBackgroundColor: "#fff",
              pointHoverBorderColor: "rgba(220,220,220,1)",
              pointBorderWidth: 1,
              data: [31, 74, 6, 39, 20, 85, 7]
            }, {
              label: "My Second dataset",
              backgroundColor: "rgba(3, 88, 106, 0.3)",
              borderColor: "rgba(3, 88, 106, 0.70)",
              pointBorderColor: "rgba(3, 88, 106, 0.70)",
              pointBackgroundColor: "rgba(3, 88, 106, 0.70)",
              pointHoverBackgroundColor: "#fff",
              pointHoverBorderColor: "rgba(151,187,205,1)",
              pointBorderWidth: 1,
              data: [82, 23, 66, 9, 99, 4, 2]
            }]
          },
        });

        new Chart(document.getElementById("canvas_line1"), {
          type: 'line',
          data: {
            labels: ["January", "February", "March", "April", "May", "June", "July"],
            datasets: [{
              label: "My First dataset",
              backgroundColor: "rgba(38, 185, 154, 0.31)",
              borderColor: "rgba(38, 185, 154, 0.7)",
              pointBorderColor: "rgba(38, 185, 154, 0.7)",
              pointBackgroundColor: "rgba(38, 185, 154, 0.7)",
              pointHoverBackgroundColor: "#fff",
              pointHoverBorderColor: "rgba(220,220,220,1)",
              pointBorderWidth: 1,
              data: [31, 74, 6, 39, 20, 85, 7]
            }, {
              label: "My Second dataset",
              backgroundColor: "rgba(3, 88, 106, 0.3)",
              borderColor: "rgba(3, 88, 106, 0.70)",
              pointBorderColor: "rgba(3, 88, 106, 0.70)",
              pointBackgroundColor: "rgba(3, 88, 106, 0.70)",
              pointHoverBackgroundColor: "#fff",
              pointHoverBorderColor: "rgba(151,187,205,1)",
              pointBorderWidth: 1,
              data: [82, 23, 66, 9, 99, 4, 2]
            }]
          },
        });

        new Chart(document.getElementById("canvas_line2"), {
          type: 'line',
          data: {
            labels: ["January", "February", "March", "April", "May", "June", "July"],
            datasets: [{
              label: "My First dataset",
              backgroundColor: "rgba(38, 185, 154, 0.31)",
              borderColor: "rgba(38, 185, 154, 0.7)",
              pointBorderColor: "rgba(38, 185, 154, 0.7)",
              pointBackgroundColor: "rgba(38, 185, 154, 0.7)",
              pointHoverBackgroundColor: "#fff",
              pointHoverBorderColor: "rgba(220,220,220,1)",
              pointBorderWidth: 1,
              data: [31, 74, 6, 39, 20, 85, 7]
            }, {
              label: "My Second dataset",
              backgroundColor: "rgba(3, 88, 106, 0.3)",
              borderColor: "rgba(3, 88, 106, 0.70)",
              pointBorderColor: "rgba(3, 88, 106, 0.70)",
              pointBackgroundColor: "rgba(3, 88, 106, 0.70)",
              pointHoverBackgroundColor: "#fff",
              pointHoverBorderColor: "rgba(151,187,205,1)",
              pointBorderWidth: 1,
              data: [82, 23, 66, 9, 99, 4, 2]
            }]
          },
        });

        new Chart(document.getElementById("canvas_line3"), {
          type: 'line',
          data: {
            labels: ["January", "February", "March", "April", "May", "June", "July"],
            datasets: [{
              label: "My First dataset",
              backgroundColor: "rgba(38, 185, 154, 0.31)",
              borderColor: "rgba(38, 185, 154, 0.7)",
              pointBorderColor: "rgba(38, 185, 154, 0.7)",
              pointBackgroundColor: "rgba(38, 185, 154, 0.7)",
              pointHoverBackgroundColor: "#fff",
              pointHoverBorderColor: "rgba(220,220,220,1)",
              pointBorderWidth: 1,
              data: [31, 74, 6, 39, 20, 85, 7]
            }, {
              label: "My Second dataset",
              backgroundColor: "rgba(3, 88, 106, 0.3)",
              borderColor: "rgba(3, 88, 106, 0.70)",
              pointBorderColor: "rgba(3, 88, 106, 0.70)",
              pointBackgroundColor: "rgba(3, 88, 106, 0.70)",
              pointHoverBackgroundColor: "#fff",
              pointHoverBorderColor: "rgba(151,187,205,1)",
              pointBorderWidth: 1,
              data: [82, 23, 66, 9, 99, 4, 2]
            }]
          },
        });

        new Chart(document.getElementById("canvas_line4"), {
          type: 'line',
          data: {
            labels: ["January", "February", "March", "April", "May", "June", "July"],
            datasets: [{
              label: "My First dataset",
              backgroundColor: "rgba(38, 185, 154, 0.31)",
              borderColor: "rgba(38, 185, 154, 0.7)",
              pointBorderColor: "rgba(38, 185, 154, 0.7)",
              pointBackgroundColor: "rgba(38, 185, 154, 0.7)",
              pointHoverBackgroundColor: "#fff",
              pointHoverBorderColor: "rgba(220,220,220,1)",
              pointBorderWidth: 1,
              data: [31, 74, 6, 39, 20, 85, 7]
            }, {
              label: "My Second dataset",
              backgroundColor: "rgba(3, 88, 106, 0.3)",
              borderColor: "rgba(3, 88, 106, 0.70)",
              pointBorderColor: "rgba(3, 88, 106, 0.70)",
              pointBackgroundColor: "rgba(3, 88, 106, 0.70)",
              pointHoverBackgroundColor: "#fff",
              pointHoverBorderColor: "rgba(151,187,205,1)",
              pointBorderWidth: 1,
              data: [82, 23, 66, 9, 99, 4, 2]
            }]
          },
        });
      });


      //Charts Start here
      var theme = {
          color: [
              '#26B99A', '#34495E', '#BDC3C7', '#3498DB',
              '#9B59B6', '#8abb6f', '#759c6a', '#bfd3b7'
          ],

          title: {
              itemGap: 8,
              textStyle: {
                  fontWeight: 'normal',
                  color: '#408829'
              }
          },

          dataRange: {
              color: ['#1f610a', '#97b58d']
          },

          toolbox: {
              color: ['#408829', '#408829', '#408829', '#408829']
          },

          tooltip: {
              backgroundColor: 'rgba(0,0,0,0.5)',
              axisPointer: {
                  type: 'line',
                  lineStyle: {
                      color: '#408829',
                      type: 'dashed'
                  },
                  crossStyle: {
                      color: '#408829'
                  },
                  shadowStyle: {
                      color: 'rgba(200,200,200,0.3)'
                  }
              }
          },

          dataZoom: {
              dataBackgroundColor: '#eee',
              fillerColor: 'rgba(64,136,41,0.2)',
              handleColor: '#408829'
          },
          grid: {
              borderWidth: 0
          },

          categoryAxis: {
              axisLine: {
                  lineStyle: {
                      color: '#408829'
                  }
              },
              splitLine: {
                  lineStyle: {
                      color: ['#eee']
                  }
              }
          },

          valueAxis: {
              axisLine: {
                  lineStyle: {
                      color: '#408829'
                  }
              },
              splitArea: {
                  show: true,
                  areaStyle: {
                      color: ['rgba(250,250,250,0.1)', 'rgba(200,200,200,0.1)']
                  }
              },
              splitLine: {
                  lineStyle: {
                      color: ['#eee']
                  }
              }
          },
          timeline: {
              lineStyle: {
                  color: '#408829'
              },
              controlStyle: {
                  normal: {color: '#408829'},
                  emphasis: {color: '#408829'}
              }
          },

          k: {
              itemStyle: {
                  normal: {
                      color: '#68a54a',
                      color0: '#a9cba2',
                      lineStyle: {
                          width: 1,
                          color: '#408829',
                          color0: '#86b379'
                      }
                  }
              }
          },
          map: {
              itemStyle: {
                  normal: {
                      areaStyle: {
                          color: '#ddd'
                      },
                      label: {
                          textStyle: {
                              color: '#c12e34'
                          }
                      }
                  },
                  emphasis: {
                      areaStyle: {
                          color: '#99d2dd'
                      },
                      label: {
                          textStyle: {
                              color: '#c12e34'
                          }
                      }
                  }
              }
          },
          force: {
              itemStyle: {
                  normal: {
                      linkStyle: {
                          strokeColor: '#408829'
                      }
                  }
              }
          },
          chord: {
              padding: 4,
              itemStyle: {
                  normal: {
                      lineStyle: {
                          width: 1,
                          color: 'rgba(128, 128, 128, 0.5)'
                      },
                      chordStyle: {
                          lineStyle: {
                              width: 1,
                              color: 'rgba(128, 128, 128, 0.5)'
                          }
                      }
                  },
                  emphasis: {
                      lineStyle: {
                          width: 1,
                          color: 'rgba(128, 128, 128, 0.5)'
                      },
                      chordStyle: {
                          lineStyle: {
                              width: 1,
                              color: 'rgba(128, 128, 128, 0.5)'
                          }
                      }
                  }
              }
          },
          gauge: {
              startAngle: 225,
              endAngle: -45,
              axisLine: {
                  show: true,
                  lineStyle: {
                      color: [[0.2, '#86b379'], [0.8, '#68a54a'], [1, '#408829']],
                      width: 8
                  }
              },
              axisTick: {
                  splitNumber: 10,
                  length: 12,
                  lineStyle: {
                      color: 'auto'
                  }
              },
              axisLabel: {
                  textStyle: {
                      color: 'auto'
                  }
              },
              splitLine: {
                  length: 18,
                  lineStyle: {
                      color: 'auto'
                  }
              },
              pointer: {
                  length: '90%',
                  color: 'auto'
              },
              title: {
                  textStyle: {
                      color: '#333'
                  }
              },
              detail: {
                  textStyle: {
                      color: 'auto'
                  }
              }
          },
          textStyle: {
              fontFamily: 'Arial, Verdana, sans-serif'
          }
      };
      var echartPieCollapse = echarts.init(document.getElementById('echart_pie2'), theme);
      
      echartPieCollapse.setOption({
        tooltip: {
          trigger: 'item',
          formatter: "{a} <br/>{b} : {c} ({d}%)"
        },
        legend: {
          x: 'center',
          y: 'bottom',
          data: ['Birds', 'IYP', 'CW', 'Solr']
        },
        toolbox: {
          show: true,
          feature: {
            magicType: {
              show: true,
              type: ['pie', 'funnel']
            },
            restore: {
              show: true,
              title: "Restore"
            },
            saveAsImage: {
              show: true,
              title: "Save Image"
            }
          }
        },
        calculable: true,
        series: [{
          name: 'Area Mode',
          type: 'pie',
          radius: [25, 90],
          center: ['50%', 120],
          roseType: 'area',
          x: '50%',
          max: 40,
          sort: 'ascending',
          data: [{
            value: 10,
            name: 'Birds'
          }, {
            value: 5,
            name: 'IYP'
          }, {
            value: 15,
            name: 'CW'
          }, {
            value: 25,
            name: 'Solr'
          }]
        }]
      });
      //project 2
      var echartPieCollapse = echarts.init(document.getElementById('project2'), theme);
      
      echartPieCollapse.setOption({
        tooltip: {
          trigger: 'item',
          formatter: "{a} <br/>{b} : {c} ({d}%)"
        },
        legend: {
          x: 'center',
          y: 'bottom',
          data: ['Birds', 'IYP', 'Cap']
        },
        toolbox: {
          show: true,
          feature: {
            magicType: {
              show: true,
              type: ['pie', 'funnel']
            },
            restore: {
              show: true,
              title: "Restore"
            },
            saveAsImage: {
              show: true,
              title: "Save Image"
            }
          }
        },
        calculable: true,
        series: [{
          name: 'Area Mode',
          type: 'pie',
          radius: [25, 90],
          center: ['50%', 120],
          roseType: 'area',
          x: '50%',
          max: 40,
          sort: 'ascending',
          data: [{
            value: 20,
            name: 'Birds'
          }, {
            value: 70,
            name: 'IYP'
          }, {
            value: 10,
            name: 'Cap'
          }]
        }]
      });
    //project 3
    var echartPieCollapse = echarts.init(document.getElementById('project3'), theme);
      
      echartPieCollapse.setOption({
        tooltip: {
          trigger: 'item',
          formatter: "{a} <br/>{b} : {c} ({d}%)"
        },
        legend: {
          x: 'center',
          y: 'bottom',
          data: ['IYP']
        },
        toolbox: {
          show: true,
          feature: {
            magicType: {
              show: true,
              type: ['pie', 'funnel']
            },
            restore: {
              show: true,
              title: "Restore"
            },
            saveAsImage: {
              show: true,
              title: "Save Image"
            }
          }
        },
        calculable: true,
        series: [{
          name: 'Area Mode',
          type: 'pie',
          radius: [25, 90],
          center: ['50%', 120],
          roseType: 'area',
          x: '50%',
          max: 40,
          sort: 'ascending',
          data: [{
            value: 100,
            name: 'IYP'
          }]
        }]
      });
    //project 4
    var echartPieCollapse = echarts.init(document.getElementById('project4'), theme);
      
      echartPieCollapse.setOption({
        tooltip: {
          trigger: 'item',
          formatter: "{a} <br/>{b} : {c} ({d}%)"
        },
        legend: {
          x: 'center',
          y: 'bottom',
          data: ['Cap', 'IYP']
        },
        toolbox: {
          show: true,
          feature: {
            magicType: {
              show: true,
              type: ['pie', 'funnel']
            },
            restore: {
              show: true,
              title: "Restore"
            },
            saveAsImage: {
              show: true,
              title: "Save Image"
            }
          }
        },
        calculable: true,
        series: [{
          name: 'Area Mode',
          type: 'pie',
          radius: [25, 50],
          center: ['50%', 120],
          roseType: 'area',
          x: '50%',
          max: 40,
          sort: 'ascending',
          data: [{
            value: 10,
            name: 'Cap'
          }, {
            value: 90,
            name: 'IYP'
          }]
        }]
      });
//project 5
var echartPieCollapse = echarts.init(document.getElementById('project5'), theme);
      
      echartPieCollapse.setOption({
        tooltip: {
          trigger: 'item',
          formatter: "{a} <br/>{b} : {c} ({d}%)"
        },
        legend: {
          x: 'center',
          y: 'bottom',
          data: ['IYP', 'Comms FW']
        },
        toolbox: {
          show: true,
          feature: {
            magicType: {
              show: true,
              type: ['pie', 'funnel']
            },
            restore: {
              show: true,
              title: "Restore"
            },
            saveAsImage: {
              show: true,
              title: "Save Image"
            }
          }
        },
        calculable: true,
        series: [{
          name: 'Area Mode',
          type: 'pie',
          radius: [25, 50],
          center: ['50%', 120],
          roseType: 'area',
          x: '50%',
          max: 40,
          sort: 'ascending',
          data: [{
            value: 85,
            name: 'IYP'
          }, {
            value: 15,
            name: 'Comms FW'
          }]
        }]
      });
    </script>
    
    <script>
      $('document').ready(function() {
        $(".sparkline_one").sparkline([2, 4, 3, 4, 5, 4, 5, 4, 3, 4, 5, 6, 7, 5, 4, 3, 5, 6], {
          type: 'bar',
          height: '40',
          barWidth: 9,
          colorMap: {
            '7': '#a1a1a1'
          },
          barSpacing: 2,
          barColor: '#26B99A'
        });

        $(".sparkline_two").sparkline([2, 4, 3, 4, 5, 4, 5, 4, 3, 4, 5, 6, 7, 5, 4, 3, 5, 6], {
          type: 'line',
          width: '200',
          height: '40',
          lineColor: '#26B99A',
          fillColor: 'rgba(223, 223, 223, 0.57)',
          lineWidth: 2,
          spotColor: '#26B99A',
          minSpotColor: '#26B99A'
        });
      })
    </script>
  </body>
</html>