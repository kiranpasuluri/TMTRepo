<%-- 
    Document   : navigation_menu
    Created on : 12 Jul 2017, 12:33:21 PM
    Author     : MaremaM
--%>

<%@page import="za.co.trudon.tmt.data.type.request.LoginData"%>
<!DOCTYPE html>
<html>
    <head>
               <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <!-- Meta, title, CSS, favicons, etc. -->
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    
    <title>Trudon Project Dashboard</title>
    
    <!-- Bootstrap -->
    <link href="../vendors/bootstrap/dist/css/bootstrap.css" rel="stylesheet">
    <!-- Dropzone.css -->
    <link href="../vendors/dropzone/dist/dropzone.css" rel="stylesheet">
    <!-- bootstrap-daterangepicker -->
    <link href="../vendors/bootstrap-daterangepicker/daterangepicker.css" rel="stylesheet">
    <!-- Font Awesome -->
    <link href="../vendors/font-awesome/css/font-awesome.min.css" rel="stylesheet">
    <!-- NProgress -->
    <link href="../vendors/nprogress/nprogress.css" rel="stylesheet">
    <!-- bootstrap-progressbar -->
    <link href="../vendors/bootstrap-progressbar/css/bootstrap-progressbar-3.3.4.min.css" rel="stylesheet">
    
    
    <!-- Custom Theme Style -->
    <link href="../build/css/custom.css" rel="stylesheet">
    <link href="../css/dialog-style.css" rel="stylesheet">
    <link href="../css/zebra_dialog.css" rel="stylesheet">
    <link href="../css/jquery.stepper.css" rel="stylesheet">
    <link href="../css/jquery-loading.css" rel="stylesheet">
    <link href="../css/loader_style.css" rel="stylesheet">
    <link href="../css/confrimModalDialog.css" rel="stylesheet">
   
    <!-- CSS adjustments for browsers with JavaScript disabled -->
    <noscript><link rel="stylesheet" href="../vendors/file-upload/css/jquery.fileupload-noscript.css"></noscript>
    <noscript><link rel="stylesheet" href="../vendors/file-upload/css/jquery.fileupload-ui-noscript.css"></noscript>
    
    <link href="../plugins/advanced-datatable/css/demo_page.css" rel="stylesheet" type="text/css"/>
    <link href="../plugins/advanced-datatable/css/demo_table.css" rel="stylesheet" type="text/css"/>
    
    <!-- jQuery -->
    <script src="../vendors/jquery/dist/jquery.js" type="text/javascript"></script>
    <script src="../vendors/jquery/dist/jquery-ui-1.9.1.js"></script>
    <script src="../vendors/jquery/dist/jquery.autocomplete.min.js"></script>
    <script src="../js/jquery.cookie.js" type="text/javascript"></script>
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
    
    
    <!-- Ion.RangeSlider -->
    <script src="../vendors/ion.rangeSlider/js/ion.rangeSlider.min.js"></script>
    <!-- Bootstrap Colorpicker -->
    <script src="../vendors/mjolnic-bootstrap-colorpicker/dist/js/bootstrap-colorpicker.min.js"></script>
    
    
    <!-- Dropzone.js -->
    <script src="../vendors/dropzone/dist/dropzone.js"></script>
    <!-- Stepper.js -->
    <script src="../js/jquery.stepper.js"></script>
    <script src="../js/jquery.maskMoney.js" type="text/javascript"></script>
    <script src="../js/jquery-loading.js"></script> 
    <script src="../js/jquery-loader.js"></script> 
    <!-- Custom Theme Scripts -->
    <script src="../build/js/custom.js"></script>
    
    </head>
    <body>
       <div class="main_container">
        <div class="left_col">
          <div class="scroll-view">
            <div class="navbar nav_title" style="border: 0;">
                <a href="#" class="site_title"><img src="../images/trudon_logo.png" style="width:62px" alt=""></a>
            </div>

            <div class="clearfix"></div>

            <br />

            <!-- sidebar menu -->
            <div id="sidebar-menu" class="main_menu_side hidden-print main_menu">
              <div class="menu_section">
                <ul class="nav side-menu">
                  <% 
                      LoginData loginInfo = (LoginData)session.getAttribute("loginData");
                      String menuItem = "";
                      if(loginInfo.getRole()!= null && (loginInfo.getRole().getId() == 46 || loginInfo.getRole().getId() == 45 || loginInfo.getRole().getId() == 6)) {
                          menuItem =  "<li class=\"active\" id=\"tasksBtn\"><a><i class=\"fa fa-building\"></i> Tasks </a></li>";
                          menuItem += "<li id=\"matrixBtn\"><a><i class=\"fa fa-group\"></i> Matrix </a></li>";
                          menuItem += "<li id=\"timesheetsMenuBtn\"><a><i class=\"fa fa-user\"></i> Timesheets </a></li>";
                      } else {
                          menuItem = "<li class=\"active\" id=\"projectAdminBtn\"><a><i class=\"fa fa-edit\"></i> Project Administration </a></li>";
                          menuItem += "<li id=\"matrixBtn\"><a><i class=\"fa fa-group\"></i> Matrix </a></li>";
                          menuItem += "<li id=\"systemsMenuBtn\"><a><i class=\"fa fa-cloud\"></i> Systems </a></li>";
                          menuItem += "<li id=\"resourcesMenuBtn\"><a><i class=\"fa fa-user\"></i> Resources </a></li>";
                          menuItem += "<li><a href=\"javascript:;\" class=\"dropdown-toggle\" data-toggle=\"dropdown\" aria-expanded=\"false\">"
                                  + "<i class=\"fa fa-group\"></i>Reports "
                                  + " <span class=\"fa fa-angle-down\" style=\"margin-left: -1px;\"></span></a>"
                                  + "<ul class=\"dropdown-menu dropdown-usermenu\">"
                                  + "<li id=\"dailyReportsMenuBtn\"><a><i class=\"fa fa-user\"></i> Capex Reports </a> </li>"
                                  + "<li id=\"monthlyReportsMenuBtn\"><a><i class=\"fa fa-user\"></i> Monthly Reports </a> </li>"
                                  + "<li id=\"timesheetsMenuBtn\"><a><i class=\"fa fa-user\"></i> Timesheets </a> </li>"
                                  + "</ul></li>";
                      }
                   %>
                   <%=menuItem%>
                </ul>
              </div>

            </div>

          </div>
        </div>
         
           

   
      <script type="text/javascript">
        
        $(document).ready(function() {
        $('#projectAdminBtn').click(function(event) {
            //navigate to home page
            window.location.href = "/TMT/tmt/projects";
        });
        
        $('#matrixBtn').click(function(event) {
            //navigate to home resources
            window.location.href = "/TMT/tmt/systems_matrix";
        });
        
        $('#resourceMatrixBtn').click(function(event) {
            //navigate to home resources
            window.location.href = "/TMT/tmt/resources_matrix";
        });
        
        $('#tasksBtn').click(function(event) {
            //navigate to  resources
            window.location.href = "tasks";
        });
        
        $('#profileButton').click(function(event) {
            //navigate to user profile page
            window.location.href = "/TMT/tmt/profile";
        });       
        
        $('#systemsMenuBtn').click(function(event) {
            //navigate to systems page
            window.location.href = "systems";
        }); 
        
        $('#resourcesMenuBtn').click(function(event) {
            //navigate to resource management page
            window.location.href = "/TMT/tmt/resource_management";
        }); 

        $('#dailyReportsMenuBtn').click(function(event) {
            //navigate to  resources
            window.location.href = "reports/daily/report";
        });
        
        $('#monthlyReportsMenuBtn').click(function(event) {
            //navigate to  resources
            window.location.href = "reports/monthly/report";
        });
        
        $('#timesheetsMenuBtn').click(function(event) {
            //navigate to  resources
            window.location.href = "reports/resources/timesheets";
        });
        
          $('#btnLogoff').click(function(event) {
            event.preventDefault();
             $.ajax({ 
                 headers: { 
                'Accept': 'application/json',
                'Content-Type': 'application/json' 
            },
                Accept : "application/json",
                contentType: "application/json",
                method: "POST",
                url: "auth/logoff",
                dataType:"json",
                 success: function(data) {
                     sessionStorage.clear();
                    window.location.href = "/TMT/tmt/auth";

                  },
                  error: function(xhr,err,thrownError){
                       alert("Error: "+err +
                               "\nResponse Text: "+xhr.responseText +
                               "\nMessage: "+thrownError +
                                "\nready State: "+xhr.readyState +
                               "\nStatus: "+xhr.status);
                  }

            });
        });
        
        });
  </script>
                        
    </body>
</html>
