<%@page import="za.co.trudon.tmt.data.type.response.CapUser"%>
<%@page import="za.co.trudon.tmt.data.type.response.Project"%>
<%@page import="za.co.trudon.tmt.data.type.response.System"%>
<%@page import="za.co.trudon.tmt.data.type.request.LoginData"%>
<%@page import="za.co.trudon.tmt.data.type.response.Resource"%>
<%@page import="za.co.trudon.tmt.data.type.response.ProjectTask"%>
<%@page import="java.util.ArrayList"%>
<!DOCTYPE html>
<html lang="en">
  <head>

      
  </head>
    

  <body class="nav-md">
    <div class="container body">
        <%@include file="navigation_menu.jsp"%>

        <!-- /top navigation -->

        <!-- page content -->
        <div class="right_col" role="main">
            <%@include file="top_navigation.jsp"%>
          <div class="">
            <div class="page-title">
              <div class="title_left">
                <h3>Projects </h3>
              </div>
                
              <div col-md-12 col-sm-12 col-xs-12 form-group pull-right top_search>
                  <div class="form-group col-md-2 col-sm-2 col-xs-2">
                   <div class="col-md-12 col-sm-12 col-xs-12 pull-left">
                     <label class="col-sm-3 control-label">Status</label>
                       <div class="col-sm-8">
                           <select id="statusOpt" class="select2_single form-control">
                             <option selected="selected" value="0">Not Started</option>
                             <option value="1">Started</option> 
                             <option value="2">Parked</option> 
                           </select>
                      </div>
                    </div>
                  </div>    
               <div class="col-md-2 col-sm-2 col-xs-2">
               <div class="col-md-12 col-sm-12 col-xs-12 pull-left">
                    <span class="col-md-4 col-sm-4 col-xs-4 pull-left">
                         <label class="pull-right">Priority</label>
                    </span>
                  <div class="input-group col-md-8 col-sm-8 col-xs-8 pull-right">
                     <input id="priorityTxt" class="form-control" type="number" >
                  </div>
                </div>
              </div>
              <div class="col-md-2 col-sm-2 col-xs-2 pull-right">
                  <div class="input-group col-md-12 col-sm-12 col-xs-12">
                    <input id="txtSearch" type="text" class="form-control" placeholder="Search for...">
                    <span class="input-group-btn">
                      <button id="btnSearch" class="btn btn-default" type="button">Go!</button>
                      <button id="btnClear" class="btn btn-default" type="button">Clear</button>
                    </span>
                  </div>
                </div>
             </div>
            </div>
              
            </div>
             <div class="row">
              <div class="col-md-12">
                <div class="x_panel">
                  <div class="x_title">
                    <h2>Projects</h2>
                    <ul class="nav navbar-right panel_toolbox">
                      <li>
                          <button class="btn btn-primary pull-right" style="margin-right: 5px;" id="createProjectBtn"><i class="fa fa-plus"></i> Add Project</button>
                      </li>
                    </ul>
                    <div class="clearfix"></div>
                  </div>
                    <div class="x_content">
                     <table id="queriesTable"  cellpadding="0" cellspacing="0" border="0" class="table table-striped projects">
                      <thead>
                       <tr>
                          <th style="width: 1%">#</th>
                          <th style="width: 2%"></th>
                          <th style="width: 20%">Project Name</th>
                          <th>Team Members</th>
                          <th>Systems</th>
                          <th>Project Progress</th>
                          <th>Status</th>
                          <th>Active</th>
                          <th style="width: 20%">#Edit</th>
                        </tr>
                     </thead>
                     <tbody id="contentBody" class="selects">
                    </tbody>
                   </table>
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
        <%@include file="confirmDialogModal.jsp"%>
      </div>
    </div>    
    
  <script src="../plugins/data-tables/jquery.dataTables.min.js"></script> 
  <script src="../plugins/data-tables/print_table_init.js"></script>
  <script src="../plugins/data-tables/online_table_init.js"></script>
  <script src="../plugins/data-tables/mobile_table_init.js"></script>
  <script src="../js/datatables/queries_table_init.js" type="text/javascript"></script>
    

    
    

    <script type="text/javascript">
    $data = {
            autoCheck: $('#autoCheck').is(':checked') ? 32 : false,
            size: $('#size').val(),  
            bgColor: $('#bgColor').val(),   
            bgOpacity: $('#bgOpacity').val(),    
            fontColor: $('#fontColor').val(),  
            title: $('#title').val(), 
            isOnly: !$('#isOnly').is(':checked')
        };
        
     function confirmDeactivate(projectId,projectname,createdBy,deActivate){
           //event.preventDefault();
           $('#confirmModal').dialog({
            height:$(document).height(),
            width: $(document).width(),
            modal: true,
            resizable: false,
            //dialogClass: 'no-close success-dialog',
            create: function(event, ui) { 
                var widget = $(this).dialog("widget");
                $(".ui-dialog-titlebar-close span", widget)
                  //.addClass("ui-icon-closedia")
                  //.addClass("disabledWindows");
            }
            }); 
            
           $('#okBtn').click(function(event) {
               validateProject(projectId,createdBy,deActivate);
            });
        
          $('#cancelBtn').click(function(event) {
             $('#confirmModal').dialog("close");
          });
           $('#closeSpan').click(function(event) {
             $('#confirmModal').dialog("close");
          });
          $('#lblHeader').text(projectname);
         
          if (!deActivate){
              $('#bodyDiv').text("Are you sure you want to add project?");
          }else{
                $('#bodyDiv').text("Are you sure you want to remove project?");
          }
          
          $("#MainContent").css("width", "380px");
          $("#MainContent").css("height", "200px");
         
    }
    
    
    function validateProject(projectId,createdBy,deActivate){
         $.ajax({               
              headers: { 
                   'Accept': 'application/json',
                   'Content-Type': 'application/json' 
                 },
               Accept : "application/json",
               contentType: "application/json",
                method: "GET",
                url: "projects/singleproject/"+ projectId,
                dataType:'json',
                
                 success: function(data) {
                     var jsobj =  $.parseJSON(createdBy);
                     if (data.createdBy.toUpperCase() === jsobj.username.toUpperCase()){
                         if (deActivate){
                              deactivateProject(projectId);  
                         }else{
                             activateProject(projectId); 
                         }
                     }
                     else{
                         alert("cannot action another user("+ data.createdBy +")'s project");
                         return;
                     }
                  },
                  error: function(xhr,err,thrownError){
                       alert("Error: "+err +
                               "\nResponse Text: "+xhr.responseText +
                               "\nMessage: "+thrownError +
                                "\nready State: "+xhr.readyState +
                               "\nStatus: "+xhr.status);
                  }
            });       
    }
    
    
     function activateProject(projectId){         
          $.ajax({               
              headers: { 
                   'Accept': 'application/json',
                   'Content-Type': 'application/json' 
                 },
               Accept : "application/json",
               contentType: "application/json",
                method: "POST",
                url: "projects/activate/"+ projectId,
                dataType:'json',
                
                 success: function() {
                     $.loader.close(true);
                      location.reload();
                  },
                  error: function(xhr,err,thrownError){
                       alert("Error: "+err +
                               "\nResponse Text: "+xhr.responseText +
                               "\nMessage: "+thrownError +
                                "\nready State: "+xhr.readyState +
                               "\nStatus: "+xhr.status);
                   $.loader.close(true);
                  }
            });       
          
        } 
    
        function deactivateProject(projectId){         
          $.ajax({               
              headers: { 
                   'Accept': 'application/json',
                   'Content-Type': 'application/json' 
                 },
               Accept : "application/json",
               contentType: "application/json",
                method: "POST",
                url: "projects/deactivate/"+ projectId,
                dataType:'json',
                
                 success: function() {
                     $.loader.close(true);
                      location.reload();
                  },
                  error: function(xhr,err,thrownError){
                       alert("Error: "+err +
                               "\nResponse Text: "+xhr.responseText +
                               "\nMessage: "+thrownError +
                                "\nready State: "+xhr.readyState +
                               "\nStatus: "+xhr.status);
                   $.loader.close(true);
                  }
            });       
          
        } 
    
         function getProjectPillars(){         
          $.ajax({               
              headers: { 
                   'Accept': 'application/json',
                   'Content-Type': 'application/json' 
                 },
               Accept : "application/json",
               contentType: "application/json",
               method: "POST",
               url: "projects/pillars",
               dataType:'json',
                 success: function(data) {
                     $.loader.close(true);
                    var options = $("#pillarOpt");
                    $.each(data, function() {
                    options.append($("<option />").val(this.id).text(this.name));
                    });
                  },
                  error: function(xhr,err,thrownError){
                       alert("Error: "+err +
                               "\nResponse Text: "+xhr.responseText +
                               "\nMessage: "+thrownError +
                                "\nready State: "+xhr.readyState +
                               "\nStatus: "+xhr.status);
                   $.loader.close(true);
                  }
            });       
          
        }  
        
        
        function getProjectParents(){         
          $.ajax({               
              headers: { 
                   'Accept': 'application/json',
                   'Content-Type': 'application/json' 
                 },
               Accept : "application/json",
               contentType: "application/json",
               method: "GET",
               url:  "projects/projectparents",
               dataType:'json',
                 success: function(data) {
                    var options = $("#projectParentOpt");
                    $.each(data, function() {
                    options.append($("<option />").val(this.id).text(this.name));
                    });
                  },
                  error: function(xhr,err,thrownError){
                       alert("Error: "+err +
                               "\nResponse Text: "+xhr.responseText +
                               "\nMessage: "+thrownError +
                                "\nready State: "+xhr.readyState +
                               "\nStatus: "+xhr.status);
                  }
            });       
        }  
    
           function getProjectRoles(){         
          $.ajax({               
              headers: { 
                   'Accept': 'application/json',
                   'Content-Type': 'application/json' 
                 },
               Accept : "application/json",
               contentType: "application/json",
               method: "GET",
               url:  "projects/projectroles",
               dataType:'json',
                 success: function(data) {
                    sessionStorage.setItem("roles", JSON.stringify(data));
                  },
                  error: function(xhr,err,thrownError){
                       alert("Error: "+err +
                               "\nResponse Text: "+xhr.responseText +
                               "\nMessage: "+thrownError +
                                "\nready State: "+xhr.readyState +
                               "\nStatus: "+xhr.status);
                  }
            });       
        }  
       
    $(document).ready(function() {
                
        var userDataCookie = $.cookie("userData");
        if(userDataCookie!==undefined){
            //login using cookie data
            userDataCookie = jQuery.parseJSON(userDataCookie);
            $('#ownerTxt').val(userDataCookie.name);
            $('#ownerTxtHidden').val(userDataCookie.username);
            $('#ownerEmailHidden').val(userDataCookie.email);
        }
         $('#btnSearch').click(function(event) {
             event.preventDefault();
             sessionStorage.setItem('projectname',$("#txtSearch").val());
             sessionStorage.setItem('projectpriority',$("#priorityTxt").val());
             sessionStorage.setItem('status',$("#statusOpt").val());
             location.reload();
        });
        
        $('#btnClear').click(function(event) {
            event.preventDefault();
             sessionStorage.removeItem('projectname');
             sessionStorage.removeItem('projectpriority');
             sessionStorage.removeItem('status');
             location.reload();
        });

        //Display tooltip
       $('[data-toggle="tooltip"]').tooltip();
          
        // Custom step
        $('#priorityTxt').stepper({
            wheel_step: 1,
            arrow_step: 1,
            initialValue: 0,
            limit: [1,5]
        });
        
        $("#revenueTxt").maskMoney();

        $('#createProjectBtn').click(function(event) {
           //event.preventDefault();
            console.log(userDataCookie);

            $('#ownerTxt').val(userDataCookie.name);
            $('#ownerTxtHidden').val(userDataCookie.username);

           $('#createPortfolioDialog').dialog({
            height: 910,
            width: 750,
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
            $('#cancelProjectBtn').click(function(event) {
               //clear the form
                $('#createPortfolioDialog').dialog("close");
            });
            $.ajax({
                headers: {
                    'Accept': 'application/json',
                    'Content-Type': 'application/json'
                },
                Accept: "application/json",
                contentType: "application/json",
                method: "GET",
                url: "projects/project_managers",
                dataType: 'json',
                success: function (data) {
                    $('#managerTxt').val(data[0].value);
                    $('#managerTxtHidden').val(data[0].data);
                    $('#managerEmailHidden').val(data[0].email);
                },
                error: function (data) {
                    alert("An error occured trying to get project resources: \n" + JSON.parse(data));
                    $.loader.close(true);
                }
            });
            $.ajax({
                headers: {
                    'Accept': 'application/json',
                    'Content-Type': 'application/json'
                },
                Accept: "application/json",
                contentType: "application/json",
                method: "GET",
                url: "projects/business_owners",
                dataType: 'json',
                success: function (data) {
                    $('#businessOwnerTxt').val(data[0].value);
                    $('#businessOwnerTxtHidden').val(data[0].data);
                    $('#businessOwnerEmailHidden').val(data[0].email);
                },
                error: function (data) {
                    alert("An error occured trying to get project resources: \n" + JSON.parse(data));
                    $.loader.close(true);
                }
            });
        });
        
       $('#cancelProjectBtn').click(function(event) {
           location.reload();
            });
        
        $('#ownerTxt').devbridgeAutocomplete({
            minChars: 2,
            serviceUrl: 'projects/search_owner',
            preventBadQueries: false,
            zIndex:2140000000,
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
                $('#ownerTxtHidden').val(suggestion.data);
                $('#ownerEmailHidden').val(suggestion.email);
            }
        });
        
        $('#saveProjectBtn').click(function(event) {
            //$('.card').loading({ circles: 3,overlay: true });
            //$('#createPortfolioDialog').addClass("disabledWindows");
            
            $('#projectDetailsForm').loader($data);
            $.ajax({
                headers: { 
                    'Accept': 'application/json',
                    'Content-Type': 'application/json' 
                },
                Accept : "application/json",
                contentType: "application/json",
                method: "POST",
                url: "projects/save",
                data:JSON.stringify({
                    project_pillar_id: $('#pillarOpt').val(),
                    name: $('#projectNameTxt').val(),
                    description: $('#descTxt').val(),
                    createdBy: userDataCookie.username,
                    projectOwner: {userName: $('#ownerTxtHidden').val(), fullNames: $('#ownerTxt').val(), email: $('#ownerEmailHidden').val()},
                    projectManager: {userName: $('#managerTxtHidden').val(), fullNames: $('#managerTxt').val(), email: $('#managerEmailHidden').val()},
                    businessOwner: {userName: $('#businessOwnerTxtHidden').val(), fullNames: $('#businessOwnerTxt').val(), email: $('#businessOwnerEmailHidden').val()},
                    expectedDate: expectedDate,
                    priority: $('#priorityTxt').val(),
                    revenueImpact: $('#revenueTxt').maskMoney('unmasked')[0],
                    usageImpact: $('#usageTxt').val(),
                    parent: $("#projectParentOpt").val(),
                    opex: $("#capexTxt").val(),
                    capex: $("#opexTxt").val(),
                    status: $("#projectStatus").val()
                }),
                dataType:'json',
                
                 success: function(data) {
                    //alert("sending files...");
                    //$("#fileupload").get(0).setAttribute('action','upload/project/'+data.id);
                    //$("#fileupload").attr('action','upload/project/'+id);
                    //$("#fileupload").submit(); 
                    if($('#inputFile').val()!==''){
                        var formData = new FormData($("#fileupload").get(0));
                        $.ajax({
                              url: 'upload/project/'+data.id+'/'+userDataCookie.username,
                              type: 'POST',
                              data: formData,
                              async: false,
                              cache: false,
                              contentType: false,
                              processData: false,
                              success: function (returndata) {
                                  $.loader.close(true);
                                  $('#createPortfolioDialog').dialog("close");
                                  location.reload();
                              },
                              error: function(data){
                                alert("An error occured trying upload file: \n"+JSON.parse(data));
                                $.loader.close(true);
                              }
                        });
                    } else{
                        $.loader.close(true);
                        $('#createPortfolioDialog').dialog("close");
                        alert('Project successfully created...');
                    }
                    
                    //alert("--> expectedDate " + expectedDate);
                    if(expectedDate === undefined) {
                        expectedDate = new Date();
                        //expectedDate = currentDate.setDate(currentDate.getDate() + 1);
                        //expectedDate = expectedDate.format('DD-MMM-YYYY');
                    }
                    //alert("--> expectedDate " + expectedDate);
                    $.ajax({
                    headers: {
                        'Accept': 'application/json',
                        'Content-Type': 'application/json'
                    },
                    Accept: "application/json",
                    contentType: "application/json",
                    method: "POST",
                    url: "notifications/project/email",
                    data: JSON.stringify({notificationType : 'project_assignment',
                        project : {name: $('#projectNameTxt').val(), expectedDate: expectedDate,
                        projectOwner: {userName: $('#ownerTxtHidden').val(), fullNames: $('#ownerTxt').val(), email: $('#ownerEmailHidden').val()},
                        projectManager: {userName: $('#managerTxtHidden').val(), fullNames: $('#managerTxt').val(), email: $('#managerEmailHidden').val()},
                        businessOwner: {userName: $('#businessOwnerTxtHidden').val(), fullNames: $('#businessOwnerTxt').val(), email: $('#businessOwnerEmailHidden').val()}
                    }}),
                    dataType: 'json',
                    success: function (data) {
                        location.reload();                                    
                    },
                    error: function (data) {
                        alert("An error occured trying to send notification: \n" + JSON.parse(data));
                    }
                });
                  },
                  error: function(data){
                    alert("An error occured trying to save project: \n"+JSON.parse(data));
                    $.loader.close(true);
                  }
            });       
        });
        
        $('#managerTxt').devbridgeAutocomplete({
            minChars: 2,
            serviceUrl: 'projects/search_manager',
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
                $('#managerTxtHidden').val(suggestion.data);
                $('#managerEmailHidden').val(suggestion.email);
            }
        });

        $('#businessOwnerTxt').devbridgeAutocomplete({
            minChars: 2,
            serviceUrl: 'projects/search_resource',
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
                $('#businessOwnerTxtHidden').val(suggestion.data);
                $('#businessOwnerEmailHidden').val(suggestion.email);
            }
        });
      
        getProjectRoles();
        getProjectPillars();
        getProjectParents();
        loadTree();
        sessionStorage.setItem("referer", location.href);
    });
    
   
    </script>
    
    <script type="text/javascript">
        var expectedDate;
    $(document).ready(function() {
        $('#single_cal3').daterangepicker({
          singleDatePicker: true,
          singleClasses: "picker_3",
          locale: {
            format: 'DD/MM/YYYY'
          }
        }, function(start, end, label) {
          console.log(start.toISOString(), end.toISOString(), label);
          expectedDate = start;
          expectedDate = expectedDate.format('DD-MMM-YYYY');
          //alert(" --> expectedDate1: "+expectedDate);
        });
      });
    </script>
    <!-- /bootstrap-daterangepicker -->
     <script type="text/javascript">
        var expectedDate;
    $(document).ready(function() {
        $('#cal_with_day_plus_one').daterangepicker({         
          minDate: new Date(),
          singleDatePicker: true,
          singleClasses: "picker_3",
          locale: {
            format: 'DD/MM/YYYY'
          }
        }, function(start, end, label) {
          console.log(start.toISOString(), end.toISOString(), label);
          expectedDate = start;
          expectedDate = expectedDate.format('DD-MMM-YYYY');
          //alert("--> expectedDate2: "+expectedDate);
        });
      });
    </script>
    <!-- /bootstrap-daterangepicker -->
  </body>
</html>