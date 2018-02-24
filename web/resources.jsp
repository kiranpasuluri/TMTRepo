<%@page import="za.co.trudon.tmt.data.type.response.ResourceMatrix"%>
<%@page import="java.util.ArrayList"%>
<%@page import="za.co.trudon.tmt.data.type.response.ProjectMatrix"%>
<!DOCTYPE html>
<%@page import="za.co.trudon.tmt.data.type.request.LoginData"%>
<%@page import="za.co.trudon.tmt.data.type.response.System"%>
<html lang="en">
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
    <!-- Meta, title, CSS, favicons, etc. -->
    <meta charset="utf-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>

    <title>Trudon Project Dashboard</title>
    
    <!-- Bootstrap -->
    <link href="../vendors/bootstrap/dist/css/bootstrap.css" rel="stylesheet"/>
    <<!-- Dropzone.css -->
    <link href="../vendors/dropzone/dist/dropzone.css" rel="stylesheet"/>
    <!-- bootstrap-daterangepicker -->
    <link href="../vendors/bootstrap-daterangepicker/daterangepicker.css" rel="stylesheet"/>
    <!-- Font Awesome -->
    <link href="../vendors/font-awesome/css/font-awesome.min.css" rel="stylesheet"/>
    <!-- NProgress -->
    <link href="../vendors/nprogress/nprogress.css" rel="stylesheet"/>
    <!-- bootstrap-progressbar -->
    <link href="../vendors/bootstrap-progressbar/css/bootstrap-progressbar-3.3.4.min.css" rel="stylesheet"/>
    <!--data-table css-->
    <link href="../plugins/data-tables/DT_bootstrap.css" rel="stylesheet"/>
    <link href="../plugins/advanced-datatable/css/demo_table.css" rel="stylesheet"/>
    <link href="../plugins/advanced-datatable/css/demo_page.css" rel="stylesheet"/>
    <link href="../css/animate.css" rel="stylesheet"/>
    <link href="../plugins/scroll/nanoscroller.css" rel="stylesheet"/>

    <!-- Custom Theme Style -->
    <link href="../build/css/custom.css" rel="stylesheet"/>
    <link href="../css/dialog-style.css" rel="stylesheet"/>
    <link href="../css/zebra_dialog.css" rel="stylesheet"/>
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
                <img src="../images/img.jpg" alt="..." class="img-circle profile_img">
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
                  <li><a><i class="fa fa-home"></i> Project Dashboard </a>
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
                  <li class="active" id="resourcesBtn"><a><i class="fa fa-group"></i> Resources </a>
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
                  <li id="tasksBtn"><a><i class="fa fa-building"></i> Tasks </a>
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
              
              ArrayList<System> systems =(ArrayList<System>)request.getAttribute("systemsList");
              ArrayList<ProjectMatrix> projectsMatrix =(ArrayList<ProjectMatrix>)request.getAttribute("projectMatrix");
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
                <h3>Resources</h3>
              </div>

              <div class="title_right">
                <div class="col-md-5 col-sm-5 col-xs-12 form-group pull-right top_search">
                  <div class="input-group">
                    <input type="text" class="form-control" placeholder="Search for...">
                    <span class="input-group-btn">
                      <button class="btn btn-default" type="button">Go!</button>
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
                    <h2>Resources</h2>
                    <ul class="nav navbar-right panel_toolbox">
                      <li>
                          <button id="exportBtn" class="btn btn-dark pull-right" style="margin-right: 5px;" id="createProjectBtn"><i class="fa fa-file-o"></i> Export</button>
                      </li>
                    </ul>
                    <div class="clearfix"></div>
                  </div>
                  <div class="x_content">
                      <!-- resource format 2-->
                      <table border="1">
                          <%String queryTbl = "<tr height=\"200\">"
                                             +"<td colspan=\"2\"></td>";
                            
                           //Systems row
                           for(System system: systems){
                                queryTbl = queryTbl +"<td class=\"verticalText\" width=\"30\" height=\"200\">"+system.getName()+"</td>";
                            }
                            queryTbl= queryTbl+ "</tr>"
                                                +"<tr >";
                            
                            //Project row
                            for(ProjectMatrix projectMatrix:projectsMatrix){
                                queryTbl = queryTbl 
                                           + "<td class=\"verticalTableHeader\" width=\"30\" >"+projectMatrix.getProjectName()+"</td>"
                                           +"<td>"
                                           +"<table border=\"1\">";
                                
                                //Team member row
                                for(ResourceMatrix resourceMatrix:projectMatrix.getResources()){
                                    int space = resourceMatrix.getUserName().indexOf(" ");
                                    String firstName=resourceMatrix.getUserName();
                                    
                                    if(space>0){
                                        firstName = firstName.substring(0, space);
                                    }
                                            queryTbl = queryTbl
                                            +"<tr><td>"+firstName+"</td></tr>";
                                }
                                
                                //Insert blank rows to fill up project row.
                                int users = projectMatrix.getResources().size();
                                    if(users<7){
                                        for (int x=users;x<7;x++){
                                            queryTbl = queryTbl
                                            +"<tr><td>------------------------------</td></tr>";
                                        }
                                    }
                                queryTbl = queryTbl 
                                           +"</table>"
                                           +"</td>"
                                           +"<td>"
                                           +"<table border=\"1\">";
                                
                                //Team member system cells
                                for(ResourceMatrix resourceMatrix:projectMatrix.getResources()){
                                    queryTbl = queryTbl
                                              +"<tr>";
                                    //check which systems the team member belongs to
                                    for(System system:systems){
                                        if(resourceMatrix.getSystemId().contains(system.getId())){
                                            queryTbl = queryTbl
                                                    +"<td width=\"30\" style=\"text-align:center\"><i class=\"fa fa-circle\"></i></td>";
                                        }else{
                                            queryTbl = queryTbl
                                                    +"<td width=\"30\" style=\"text-align:center\">&nbsp;</td>";
                                        }
                                    }
                                    queryTbl = queryTbl
                                              +"</tr>";
                                }
                                 //Insert blank rows to fill up project row.
                                    if(users<7){
                                        for (int x=users;x<7;x++){
                                              queryTbl = queryTbl
                                                        +"<tr>";
                                              for(int y=0;y<systems.size();y++){
                                                  queryTbl = queryTbl 
                                                            +"<td width=\"30\" style=\"text-align:center\">&nbsp;</td>";
                                              }
                                                  
                                               queryTbl = queryTbl
                                                       +"</tr>";
                                        }
                                    }
                                queryTbl = queryTbl
                                              +"</table>"
                                              +"</td>"
                                              +"</tr>";                     
                            }
                          %>
                          <%=queryTbl%>
                      </table>
                    </div>
                  </div><!--End of table-->                      
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
        <%@include file="add_project_modal.jsp"%>
      </div>
    </div>

    <!-- jQuery -->
    <script src="../vendors/jquery/dist/jquery.min.js"></script>
    <script src="../vendors/jquery/dist/jquery-ui-1.9.1.js"></script>
    <script src="../vendors/jquery/dist/jquery.autocomplete.min.js"></script>
    <script src="../js/jquery.cookie.js" type="text/javascript"></script>
    <script src="../js/jquery.table2excel.js" type="text/javascript"></script>
    <!-- Bootstrap -->
    <script src="../vendors/bootstrap/dist/js/bootstrap.min.js"></script>
    <script src="../js/zebra_dialog.js"></script>
    <!-- FastClick -->
    <script src="../vendors/fastclick/lib/fastclick.js"></script>
    <!-- NProgress -->
    
    <!-- bootstrap-daterangepicker -->
    <script src="../vendors/moment/min/moment.min.js"></script>
    <script src="../vendors/bootstrap-daterangepicker/daterangepicker.js"></script>
    
    <!-- jquery.inputmask -->
    <script src="../vendors/jquery.inputmask/dist/min/jquery.inputmask.bundle.min.js"></script>
    <!-- jQuery Knob -->
    <script src="../vendors/jquery-knob/dist/jquery.knob.min.js"></script>
   
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
    
    <!-- bootstrap-daterangepicker -->
    <script src="../vendors/moment/min/moment.min.js"></script>
    <script src="../vendors/bootstrap-daterangepicker/daterangepicker.js"></script>
    <!-- Ion.RangeSlider -->
    <script src="../vendors/ion.rangeSlider/js/ion.rangeSlider.min.js"></script>
    <!-- Bootstrap Colorpicker -->
    <script src="../vendors/mjolnic-bootstrap-colorpicker/dist/js/bootstrap-colorpicker.min.js"></script>
    <!-- jquery.inputmask -->
    <script src="../vendors/jquery.inputmask/dist/min/jquery.inputmask.bundle.min.js"></script>
    <!-- jQuery Knob -->
    <script src="../vendors/jquery-knob/dist/jquery.knob.min.js"></script>
    
    <!-- Dropzone.js -->
    <script src="../vendors/dropzone/dist/dropzone.js"></script>
    
    <script src="../plugins/data-tables/DT_bootstrap.js"></script> 
    <script src="../plugins/data-tables/jquery.dataTables.min.js"></script>
    <script src="../plugins/data-tables/queries_table_init.js"></script>

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
    <script type="text/javascript">
      $(document).ready(function() {
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

    <script type="text/javascript">
      $(document).ready(function() {
        $('#projectAdminBtn').click(function(event) {
            //navigate to home page
            window.location.href = "projects";
        });
        
        $('#resourcesBtn').click(function(event) {
            //navigate to home resources
            window.location.href = "resources";
        });
        
        $('#tasksBtn').click(function(event) {
            //navigate to  resources
            window.location.href = "tasks";
        });
        
        $('#createProjectBtn').click(function(event) {
           //event.preventDefault();
           $('#createPortfolioDialog').dialog({
            height: 850,
            width: 700,
            modal: true,
            resizable: false,
            dialogClass: 'no-close success-dialog',
            create: function(event, ui) { 
                var widget = $(this).dialog("widget");
                $(".ui-dialog-titlebar-close span", widget)
                  .removeClass("ui-icon-closethick")
                  .removeClass("ui-icon")
                  .addClass("ui-icon-closedia");
            }
            }); 
            $('#createPortfolioDialogCancelBtn').click(function(event) {
                $('#createPortfolioDialog').dialog("close");
            });
        });
        
        $('#ownerTxt').devbridgeAutocomplete({
            minChars: 2,
            serviceUrl: 'projects/search',
            preventBadQueries: false,
            zIndex:2147483647,
            type: 'POST',
            showNoSuggestionNotice: true,
            noSuggestionNotice: 'No Matching Names - Please use ask admistrator to add user"',
            success : function(data) {
                var out = $.parseJSON(data);
                response($.each(out, function(i, item) {

                   return {

                       label: item.value,
                       value: item.data
                   };
               }));
            },
            onSelect: function (suggestion) {
                //alert('You selected: ' + suggestion.value + ', ' + suggestion.data);
                //$('#addToPortfolioActionBtn').prop('disabled', false);
                //selectedPortfolio = suggestion.data.portfolio_id;
                
            }
        });
        
        $('#managerTxt').devbridgeAutocomplete({
            minChars: 2,
            serviceUrl: 'projects/search',
            preventBadQueries: false,
            zIndex:2147483647,
            type: 'POST',
            showNoSuggestionNotice: true,
            noSuggestionNotice: 'No Matching Names - Please use ask admistrator to add user"',
            success : function(data) {
                var out = $.parseJSON(data);
                response($.each(out, function(i, item) {

                   return {

                       label: item.value,
                       value: item.data
                   };
               }));
            },
            onSelect: function (suggestion) {
                //alert('You selected: ' + suggestion.value + ', ' + suggestion.data);
                //$('#addToPortfolioActionBtn').prop('disabled', false);
                //selectedPortfolio = suggestion.data.portfolio_id;
                
            }
        });

        
        var userDataCookie = $.cookie("userData");
        if(userDataCookie!==undefined){
            //login using cookie data
            userDataCookie = jQuery.parseJSON(userDataCookie);
            $('#ownerTxt').val(userDataCookie.name);
        }
    });
    </script>
    
    <script type="text/javascript">
      $(document).ready(function() {
        $('#single_cal3').daterangepicker({
          singleDatePicker: true,
          singleClasses: "picker_3"
        }, function(start, end, label) {
          console.log(start.toISOString(), end.toISOString(), label);
        });
      });
    </script>

    <!-- /bootstrap-daterangepicker -->
  </body>
</html>
