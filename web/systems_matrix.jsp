<%@page import="java.util.ArrayList"%>
<%@page import="za.co.trudon.tmt.data.type.response.Project"%>
<%@page import="za.co.trudon.tmt.data.type.response.Resource"%>
<!DOCTYPE html>
<%@page import="za.co.trudon.tmt.data.type.request.LoginData"%>
<%@page import="za.co.trudon.tmt.data.type.response.System"%> 
<%@page import="com.google.gson.Gson"%> 
<%@page import="com.google.gson.GsonBuilder"%> 
<%@page import="javax.script.*"%> 
<%@ page import="java.io.*" %>

<html lang="en">
  <head>

  </head>

  <body class="nav-md">
    <div class="container body">
      <div>
        
       <%@include file="navigation_menu.jsp"%>

                    
     <div>
<!--         class="x_content"-->
        <div class="right_col" role="main">
            <%@include file="top_navigation.jsp" %>
          <div class="">
            <div class="page-title">
              <div class="title_left">
                <h3>Systems</h3>
              </div>

              <div class="title_right">
                <div class="col-md-5 col-sm-5 col-xs-12 form-group pull-right top_search">
                  <div class="input-group">
                    <button  class="btn btn-primary pull-right" style="margin-right: 5px;" id="resourceMatrixBtn" disabled> Resource View</button>
                  </div>
                </div>
              </div>
            </div>
            
            <div class="clearfix"></div>

            <div class="row">
              <div class="col-md-12">
                <div class="x_panel">
                  <div class="x_title">
                    <ul class="nav navbar-right panel_toolbox">
                      <li>
                          <button id="exportBtn" class="btn btn-dark pull-right" style="margin-right: 5px;"><i class="fa fa-file-o"></i> Export</button>
                      </li>
                    </ul>
                    <div class="clearfix"></div>
                  </div>
                   
                 <div class="col-md-12 col-sm-12 col-xs-12">
                        <!-- Start of Tabs -->
                        <div class="col-md-12 col-sm-12 col-xs-12" role="tabpanel" data-example-id="togglable-tabs">
                        <ul id="myTab" class="nav nav-tabs bar_tabs" role="tablist">
                          <li role="presentation" class="active"><a href="#tab_content1" id="Systems-tab" role="tab" data-toggle="tab" aria-expanded="true">Systems</a>
                          </li>
                          <li role="presentation" class=""><a href="#tab_content2" role="tab" id="Resources-tab" data-toggle="tab" aria-expanded="false">Resources</a>
                          </li>
                          <li role="presentation" class=""><a href="#tab_content3" role="tab" id="Projects-tab" data-toggle="tab" aria-expanded="false">Projects</a>
                          </li>
                        </ul>
                        <div id="myTabContent" class="tab-content">
                          <div role="tabpanel" class="tab-pane fade active in" id="tab_content1" aria-labelledby="home-tab">
                              <div class="box-info" id="Systems">
                                  <div id="systemsProjectsDiv" class="x_content" style="overflow-x: auto">
                                  </div> 
                              </div>
                          </div>

                          <!-- Tab 1 end-->
                          <div role="tabpanel" class="tab-pane fade" id="tab_content2" aria-labelledby="profile-tab">
                              <div id="resourcesDiv" class="x_content" style="overflow-x: auto">
                                  
                             </div>
                          </div>
                          
                          <div role="tabpanel" class="tab-pane fade" id="tab_content3" aria-labelledby="profile-tab">
                            <div id="projectsDiv" class="x_content" style="overflow-x: auto">
                                  
                             </div>   
                          </div>   
                       </div> 
                    <!-- End of Tabs -->
                    </div>
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

        <!-- /footer content -->
        <%@include file="add_project_modal.jsp"%>
        <%@include file="confirmDialogModal.jsp"%>
        <%@include file="add_system_attributes.jsp"%>
      </div>
    
    <script src="../plugins/data-tables/jquery.dataTables.min.js"></script>
    <script src="../plugins/data-tables/queries_table_init.js"></script>
    <script src="../plugins/data-tables/DT_bootstrap.js"></script> 

    <script src="../js/systemattributes.js" type="text/javascript"></script>
    <script src="../js/systemmatrix.js" type="text/javascript"></script>

        <!-- Custom Theme Scripts -->
    <script src="../js/helpers/smartresize.js"></script>

    <script type="text/javascript">
    
       
    </script>
    
    <script type="text/javascript">
      $(document).ready(function() {
        $("#resourceMatrixBtn").prop('disabled', true);
        
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
        
         $('#exportBtn').click(function(event) {
            event.preventDefault();
            var htmltable= document.getElementById(sessionStorage.getItem("matrixId"));
            var html = htmltable.outerHTML;
            window.open('data:application/vnd.ms-excel,' + encodeURIComponent(html));
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
        
        loadSystemProjectMatrix();
        loadResourcesMatrix();
        loadProjectMatrix();
        
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
