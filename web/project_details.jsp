<%@page import="za.co.trudon.tmt.data.type.response.Attachment"%>
<%@page import="za.co.trudon.tmt.data.type.response.Project"%>
<%@page import="za.co.trudon.tmt.data.type.request.LoginData"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <!-- Bootstrap -->
        <link href="../../../vendors/bootstrap/dist/css/bootstrap.min.css" rel="stylesheet">

        <!-- Select2 -->
        <link href="../../../vendors/select2/dist/css/select2.min.css" rel="stylesheet">
        <!-- Switchery -->
        <link href="../../../vendors/switchery/dist/switchery.min.css" rel="stylesheet">
        <!-- starrr -->
        <link href="../../../vendors/starrr/dist/starrr.css" rel="stylesheet">

        <!-- iCheck -->
        <link href="../../../vendors/iCheck/skins/flat/green.css" rel="stylesheet">

        <link rel="stylesheet" type="text/css" href="../../../css/jquery-comments.css">


    </head>
    <%
        Project project = (Project) request.getAttribute("project");
        //project.getName()
        //project.getDescription();
        //project.getProjectOwnerFullname();
        // project.getAttachments().get(0).getFilename()
        //project.getSystems().get(0).getDescription();
        //project.getResources().get(0).getFullNames();
        //project.getResources().get(0).getRole().getRole();
        //project.getTasks().get(0).getUpdateBy();
        //project.getId()
        //project.getProjectManager()
        //project.getSystems().get(0).getId()

    %>
    <body class="nav-md">
        <div class="container body">
             
            <div class="main_container">
<%@include file="navigation_menu_inner.jsp"%>
               
                <!-- /top navigation -->

                <!-- page content -->
                <!-- page content -->
                <div class="right_col" role="main">
                    <%@include file="top_navigation_inner.jsp"%>
                    <div class="">
                        <div class="page-title">
                            <div class="title_left">
                                <h3>Project Detail</h3>
                            </div>

                            <!--<div class="title_right">
                              <div class="col-md-5 col-sm-5 col-xs-12 form-group pull-right top_search">
                                <div class="input-group">
                                  <input type="text" class="form-control" placeholder="Search for...">
                                  <span class="input-group-btn">
                                    <button class="btn btn-default" type="button">Go!</button>
                                  </span>
                                </div>
                              </div>
                            </div>-->
                        </div>

                        <div class="clearfix"></div>

                        <div class="row">
                            <div class="col-md-12">
                                <div class="x_panel">
                                    <div class="x_title">
                                        <h2><%=project.getName()%></h2>
                                        <ul class="nav navbar-right panel_toolbox">
                                            <li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a>
                                            </li>
                                            <li class="dropdown">
                                                <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false"><i class="fa fa-wrench"></i></a>
                                                <ul class="dropdown-menu" role="menu">
                                                    <li><a href="#">Settings 1</a>
                                                    </li>
                                                    <li><a href="#">Settings 2</a>
                                                    </li>
                                                </ul>
                                            </li>
                                            <li><a class="close-link"><i class="fa fa-close"></i></a>
                                            </li>
                                        </ul>
                                        <div class="clearfix"></div>
                                    </div>

                                    <div class="x_content">

                                        <div class="col-md-12 col-sm-12 col-xs-12">
                                            <!-- Start of Tabs -->
                                            <div class="" role="tabpanel" data-example-id="togglable-tabs">
                                                <ul id="myTab" class="nav nav-tabs bar_tabs" role="tablist">
                                                    <li role="presentation" class="active"><a href="#tab_content1" id="home-tab" role="tab" data-toggle="tab" aria-expanded="true">Project Details</a>
                                                    </li>
                                                    <li role="presentation" class=""><a href="#tab_content2" role="tab" id="profile-tab" data-toggle="tab" aria-expanded="false">Project Management</a>
                                                    </li>
                                                </ul>
                                                <div id="myTabContent" class="tab-content">
                                                    <div role="tabpanel" class="tab-pane fade active in" id="tab_content1" aria-labelledby="home-tab">
                                                        <div class="box-info" id="projectDetailsForm">
                                                            <br><br>          
                                                            <!--form-horizontal row-border start-->
                                                            <div class="form-horizontal row-border">

                                                                <div class="form-group">
                                                                    <label class="col-sm-3 control-label">Parent</label>
                                                                    <div class="col-sm-8">
                                                                        <select id="projectParentOpt" class="select2_single form-control" >
                                                                            <option selected="selected" value="0">None</option>
                                                                        </select>
                                                                    </div>
                                                                </div>

                                                                <div class="form-group">
                                                                    <label class="col-sm-3 control-label">Status</label>
                                                                    <div class="col-sm-8">
                                                                        <select id="projectStatus" class="select2_single form-control" >
                                                                            <option selected="selected" value="0" >New</option>
                                                                            <option value="1">Start</option>
                                                                            <option value="2">Park</option>
                                                                        </select>
                                                                    </div>
                                                                </div>

                                                                <div class="form-group">
                                                                    <label class="col-sm-3 control-label">Strategic Pillar</label>
                                                                    <div class="col-sm-8">
                                                                        <select id="pillarOpt" class="select2_single form-control resourceSystemClass">
                                                                            <option selected="selected" value="0">None</option>
                                                                        </select>
                                                                    </div>
                                                                </div>    

                                                                <div class="form-group">
                                                                    <label class="col-sm-3 control-label">Project Name</label>
                                                                    <div class="col-sm-8">
                                                                        <input id="projectNameTxt" class="form-control" type="text" value="<%=project.getName()%>" maxlength="50">
                                                                        <input id="projectIdTxt" type="hidden" value="<%=project.getId()%>">
                                                                    </div>
                                                                </div>

                                                                <div class="form-group">
                                                                    <label class="col-sm-3 control-label">Description</label>
                                                                    <div class="col-sm-8">
                                                                        <textarea id="descTxt" class="form-control"><%=project.getDescription()%></textarea>
                                                                    </div>
                                                                </div>
                                                                <div class="form-group">
                                                                    <label class="col-sm-3 control-label">Business Owner</label>
                                                                    <div class="col-sm-8">
                                                                        <input id="businessOwnerTxt" class="form-control" type="text" value="<%=project.getBusinessOwner().getFullNames()%>">
                                                                        <input id="businessOwnerTxtHidden" value="<%=project.getBusinessOwner().getUserName()%>" type="hidden">
                                                                    </div>
                                                                </div>
                                                                <div class="form-group">
                                                                    <label class="col-sm-3 control-label">Project Owner</label>
                                                                    <div class="col-sm-8">
                                                                        <input id="ownerTxt" class="form-control" type="text" value="<%=project.getProjectOwner().getFullNames()%>">
                                                                        <input id="ownerTxtHidden" value="<%=project.getProjectOwner().getUserName()%>" type="hidden">
                                                                    </div>
                                                                </div>

                                                                <div class="form-group">
                                                                    <label class="col-sm-3 control-label">Project Manager</label>
                                                                    <div class="col-sm-8">
                                                                        <input id="managerTxt" class="form-control" type="text" value="<%=project.getProjectManager().getFullNames()%>">
                                                                        <input id="managerTxtHidden" value="<%=project.getProjectManager().getUserName()%>" type="hidden">
                                                                    </div>
                                                                </div>
                                                                <div class="form-group">
                                                                    <label class="col-sm-3 control-label">Expected Date</label>
                                                                    <div class="col-md-8">
                                                                        <fieldset>
                                                                            <div class="control-group">
                                                                                <div class="controls">
                                                                                    <div class="col-md-11 xdisplay_inputx form-group has-feedback">
                                                                                        <input type="text" class="form-control has-feedback-left" id="single_cal3" placeholder="Date Picker" aria-describedby="inputSuccess2Status3" style="margin-left:-10px;" value="<%=project.getExpectedDate()%>">
                                                                                        <span class="fa fa-calendar-o form-control-feedback left" aria-hidden="false"></span>
                                                                                        <span id="inputSuccess2Status3" class="sr-only">(success)</span>
                                                                                    </div>
                                                                                </div>
                                                                            </div>
                                                                        </fieldset>
                                                                    </div>
                                                                </div>  

                                                                <div class="form-group">
                                                                    <label class="col-sm-3 control-label">Priority</label>
                                                                    <div class="col-sm-8">
                                                                        <input id="priorityTxt" class="form-control" type="text" value="<%=project.getPriority()%>">
                                                                    </div>
                                                                </div>

                                                                <div class="form-group">
                                                                    <label class="col-sm-3 control-label">New Revenue expected</label>
                                                                    <div class="col-sm-8">
                                                                        <input id="revenueTxt" class="form-control" type="text" data-thousands="," data-decimal="." data-prefix="R" maxlength="13" value="<%=project.getRevenueImpact()%>">
                                                                    </div>
                                                                </div>

                                                                <div class="form-group">
                                                                    <label class="col-sm-3 control-label">New usage expected</label>
                                                                    <div class="col-sm-8">
                                                                        <input id="usageTxt" class="form-control" type="number" value="<%=project.getUsageImpact()%>">
                                                                    </div>
                                                                </div>


                                                                <div class="form-group">
                                                                    <label class="col-sm-3 control-label">Capex</label>
                                                                    <div class="col-sm-8">
                                                                        <input id="capexTxt" class="form-control" type="text" data-thousands="," data-decimal="." data-prefix="R" maxlength="13" value="<%=project.getCapex()%>">
                                                                    </div>
                                                                </div>

                                                                <div class="form-group">
                                                                    <label class="col-sm-3 control-label">Opex</label>
                                                                    <div class="col-sm-8">
                                                                        <input id="opexTxt" class="form-control" type="text" data-thousands="," data-decimal="." data-prefix="R" maxlength="13" value="<%=project.getOpex()%>">
                                                                    </div>
                                                                </div>

                                                            </div>
                                                        </div>
                                                        <!--form-horizontal row-border end--> 
                                                        <!--row start-->
                                                        <div class="row">
                                                            <div class="col-sm-8 col-sm-offset-4">
                                                                <div class="btn-toolbar">
                                                                    <br><br>
                                                                    <button id="saveProjectBtn" class="btn-primary btn"><i class="fa fa-save"></i> Save Changes</button>
                                                                    <button id="addProjectCommentBtn" class="btn-primary btn" disabled="true">Add Comment</button>
                                                                    <button id="cancelProjectBtn" class="btn-primary btn">Cancel</button>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <!--row end--> 
                                                        <!-- start project-detail sidebar -->
                                                        <div class="col-md-3 col-sm-3 col-xs-12">

                                                            <section class="panel">

                                                                <div class="x_title">
                                                                    <h2>Project Description</h2>
                                                                    <div class="clearfix"></div>
                                                                </div>
                                                                <div class="panel-body">
                                                                    <h3 class="green"><i class="fa fa-paint-brush"></i> <%=project.getName()%> </h3>

                                                                    <p><%=project.getDescription()%></p>
                                                                    <br />

                                                                    <div class="project_detail">

                                                                        <p class="title">Product Owner</p>
                                                                        <p><%=project.getProjectOwner().getFullNames()%></p>
                                                                        <p class="title">Project Manager</p>
                                                                        <p><%=project.getProjectManager().getFullNames()%></p>
                                                                    </div>

                                                                    <br />
                                                                    <h5>Project files</h5>
                                                                    <ul class="list-unstyled project_files">
                                                                        <% try {
                                                                                if (project.getAttachments() != null && project.getAttachments().size() > 0) {
                                                                                    for (int i = 0; i < project.getAttachments().size(); i++) {
                                                                                        String iconClass = "fa fa-file-o";
                                                                                        Attachment attachment = null;
                                                                                        if (project.getAttachments().get(i) != null) {
                                                                                            attachment = (Attachment) project.getAttachments().get(i);
                                                                                            if (attachment.getFilename().toLowerCase().contains(".doc")) {
                                                                                                iconClass = "fa fa-file-word-o";
                                                                                            } else if (attachment.getFilename().toLowerCase().contains(".pdf")) {
                                                                                                iconClass = "fa fa-file-pdf-o";
                                                                                            } else if (attachment.getFilename().toLowerCase().contains(".png")) {
                                                                                                iconClass = "fa fa-picture-o";
                                                                                            } else if (attachment.getFilename().toLowerCase().contains(".jpg")) {
                                                                                                iconClass = "fa fa-picture-o";
                                                                                            } else if (attachment.getFilename().toLowerCase().contains(".xls")) {
                                                                                                iconClass = " fa-file-excel-o";
                                                                                            }
                                                                                        }
                                                                                        if (attachment != null) {
                                                                        %>
                                                                        <li><a href="../../download/<%=project.getId()%>/<%=attachment.getFilename()%>"><i class="<%=iconClass%>"></i><%=attachment.getFilename()%></a></li>
                                                                                <%}
                                                                                            }
                                                                                        }
                                                                                    } catch (Exception e) {
                                                                                        System.out.println("Error with file attachments: " + e.getMessage());
                                                                                    }%>

                                                                    </ul>
                                                                    <br />
                                                                    <div class="panel">

                                                                        <form id="fileupload" name="fileupload" role="form" class="form-horizontal" action="" method="POST" enctype="multipart/form-data">
                                                                            <div class="form-group" style="padding:0px 0px 0px 20px">
                                                                                <input type="text" name="username" value="<%=loginData.getUsername()%>" style="display:none">
                                                                                <h4 class="col-lg-12">Add more files</h4>
                                                                                <div class="col-lg-6">
                                                                                    <input type="file" name="fileInputCont" id="inputFile" class="file-pos">
                                                                                </div>
                                                                            </div>

                                                                            <div class="form-group">
                                                                                <div class="col-lg-offset-2 col-lg-10">
                                                                                    <button class="btn btn-primary" type="submit"><i class="fa fa-cloud-upload"></i> Upload</button>
                                                                                </div>
                                                                            </div>
                                                                        </form>
                                                                    </div>
                                                                </div>

                                                            </section>

                                                        </div>
                                                    </div>

                                                    <!-- Tab 1 end-->
                                                    <div role="tabpanel" class="tab-pane fade" id="tab_content2" aria-labelledby="profile-tab">
                                                        <div class="row">
                                                            <div class="col-md-12">
                                                                <div class="x_panel">
                                                                    <div class="x_title">
                                                                        <h2>Systems</h2> 
                                                                        <div><button id="addNewSysBtn" class="btn-primary btn" style="float:right">New System</button></div>
                                                                        <div><button id="addSysBtn" class="btn-primary btn" style="float:right">Add Systems</button></div>
                                                                        <div class="clearfix"></div>
                                                                    </div>
                                                                    <div class="x_content" style="overflow: scroll">  

                                                                        <!-- start user projects -->
                                                                        <table class="data table table-striped no-margin">
                                                                            <thead>
                                                                                <tr>
                                                                                    <th>#</th>
                                                                                    <th>System Name</th>
                                                                                    <th>Description</th>
                                                                                    <th>Skills Required</th>
                                                                                    <th></th>
                                                                                    <th></th>
                                                                                </tr>
                                                                            </thead>
                                                                            <tbody>
                                                                                <%
                                                                                    for (int i = 0; i < project.getSystems().size(); i++) {%>

                                                                                <tr>
                                                                                    <td><%=i + 1%></td>
                                                                                    <td>

                                                                                        <% String sysName = "<a style=\"cursor:pointer\" href=\"#\"" + project.getSystems().get(i).getId() + "\" onclick=\"updateProjectSystem(" + project.getSystems().get(i).getId() + ")\"><b>" + project.getSystems().get(i).getName() + "</b></a>";%>
                                                                                        <%=sysName%>
                                                                                    </td>
                                                                                    <td><%=project.getSystems().get(i).getDescription()%></td>
                                                                                    <td>
                                                                                        <%
                                                                                            String skills = "";
                                                                                            for (int x = 0; x < project.getSystems().get(i).getSkills().size(); x++) {
                                                                                                skills += project.getSystems().get(i).getSkills().get(x).getName() + " ";
                                                                                            }%>
                                                                                        <%=skills%>
                                                                                    </td>
                                                                                </tr>
                                                                                <%}%>
                                                                            </tbody>
                                                                        </table>
                                                                        
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <!-- end user projects -->

                                                        <div class="row">
                                                            <div class="col-md-12">
                                                                <div class="x_panel">
                                                                    <div class="x_title">
                                                                        <h2>Tasks</h2>       
                                                                         <div><button id="addTaskBtn" class="btn-primary btn" style="float:right">Add Task</button></div>  
                                                                        <div class="clearfix"></div>
                                                                        
                                                                    </div>
                                                                    <div class="x_content" style="overflow: scroll">

                                                                        <table class="data table table-striped no-margin">
                                                                            <thead>
                                                                                <tr>
                                                                                    <th>#</th>
                                                                                    <th>Description</th>
                                                                                    <th>Assigned To</th>
                                                                                    <th>Deadline</th>
                                                                                    <th>Time Spent</th>
                                                                                    <th>Status</th>
                                                                                    <th></th>
                                                                                </tr>
                                                                            </thead>
                                                                            <tbody>
                                                                                <%try {
                                                                                        for (int iii = 0; iii < project.getTasks().size(); iii++) {
                                                                                            if(project.getTasks().get(iii).getParentId() <= 0){ %>
                                                                                <tr>
                                                                                    <td><%=iii + 1%></td>
                                                                                    <td><%String taskDescription = "<a style=\"cursor:pointer\" href=\"../../projects/task/"+ project.getTasks().get(iii).getId() +  "\"><b>" + project.getTasks().get(iii).getName() + "</b></a>";%>
                                                                                        <%=taskDescription%>
                                                                                    </td>
                                                                                    <td><%String assignedTo = project.getTasks().get(iii).getAssignedTo().getFullNames() == null ? "" : project.getTasks().get(iii).getAssignedTo().getFullNames();%>
                                                                                        <%=assignedTo%>
                                                                                    </td>
                                                                                    <td>
                                                                                        <%=project.getTasks().get(iii).getUpdatedDate()%>
                                                                                    </td>
                                                                                    <td>
                                                                                        
                                                                                    </td>
                                                                                    <td class="vertical-align-mid">
                                                                                        <div class="progress">
                                                                                            <%
                                                                                                int taskProgress = project.getTasks().get(iii).getStatus();
                                                                                                if (taskProgress == 2) {
                                                                                                    taskProgress = 100;
                                                                                                } else if (taskProgress == 1) {
                                                                                                    taskProgress = 10;
                                                                                                } else {
                                                                                                    taskProgress = 0;
                                                                                                }
                                                                                            %>
                                                                                            <div class="progress-bar progress-bar-success" role="progressbar" data-transitiongoal="<%=taskProgress%>"></div>
                                                                                        </div>
                                                                                    </td>
                                                                                    <td><input type="button" value="Update" onclick="onUpdateTask(<%=project.getTasks().get(iii).getId()%>)" class="btn btn-primary btn-xs"></td>
                                                                                    <td><input type="button" value="Comment" onclick="addComment(<%=project.getTasks().get(iii).getId()%>)" class="btn btn-primary btn-xs"></td>
                                                                                    <td><input type="button" value="Delete" onclick="ondeleteTask(<%=project.getId()%>, <%=project.getTasks().get(iii).getId()%>)" class="btn btn-danger btn-xs"></td>
                                                                                </tr>
                                                                                <%}}
                                                                                    } catch (Exception e) {
                                                                                        System.out.println("Error with listing tasks: " + e.getMessage());
                                                                                    }%>
                                                                            </tbody>
                                                                        </table>
                                                                       
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>

                                                    <div>

                                                    </div>
                                                </div>



                                            </div> 
                                            <!-- End of Tabs -->
                                        </div>
                                    </div>     


                                    <!-- end project-detail sidebar -->

                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <!-- /footer content -->
            <%@include file="project_system_modal.jsp"%>
            <%@include file="add_task_modal.jsp"%>
            <%@include file="update_system_modal.jsp"%>
            <%@include file="add_system_skill_modal.jsp"%>
            <%@include file="add_system_modal.jsp"%>
            <%@include file="project_resource_modal.jsp"%>
            <%@include file="update_parent_task_modal.jsp"%>
            <%@include file="add_sub_task_comment_modal.jsp"%>
        </div>

        <script src="../../../js/multiselect.js" ></script>
        <script src="../../../js/multiselect.min.js" ></script>

        <!-- NProgress -->
        <script src="../../../vendors/nprogress/nprogress.js"></script>    

        <!-- Stepper.js -->
        <script src="../../../js/jquery-loader_1.js"></script> 
        <!-- iCheck -->
        <script src="../../../vendors/iCheck/icheck.min.js"></script>

        <script src="../../../js/projectdetails.js" type="text/javascript"></script>

        <script type="text/javascript">
            var newTaskWindow = true;
            var newResourceWindow = true;
            var newSystemWindow = true;
            var userDataCookie = $.cookie("userData");
            if (userDataCookie !== undefined) {
                    //login using cookie data
                userDataCookie = jQuery.parseJSON(userDataCookie);
            }
            var jsProject = eval(${jsProject});
            var taskStatus = JSON.stringify(${taskStatuses});
            var severities = JSON.stringify(${serverityValues});
            var priorities = JSON.stringify(${priorityValues});
            var expectedDate;
            $data = {
                autoCheck: $('#autoCheck').is(':checked') ? 32 : false,
                size: $('#size').val(),
                bgColor: $('#bgColor').val(),
                bgOpacity: $('#bgOpacity').val(),
                fontColor: $('#fontColor').val(),
                title: $('#title').val(),
                isOnly: !$('#isOnly').is(':checked')
            };
            
            function addComment(taskId) {
                $('#subTaskCommentDialog').dialog({
                    height: 300,
                    width: 700,
                    modal: true,
                    resizable: false,
                    dialogClass: 'no-close success-dialog',
                    create: function (event, ui) {
                        var widget = $(this).dialog("widget");
                        $(".ui-dialog-titlebar-close span", widget)
                                .removeClass("ui-icon-closethick")
                                .removeClass("ui-icon")
                                .addClass("ui-icon-closedia");
                        //alert("call resource list");
                    }
                });
                $('#cancelSubTaskCommentBtn').click(function (event) {
                    //clear the form
                    $('#subTaskCommentDialog').dialog("close");
                });

                $('#saveSubTaskCommentBtn').click(function (event) {
                    $.ajax({
                        headers: {
                            'Accept': 'application/json',
                            'Content-Type': 'application/json'
                        },
                        Accept: "application/json",
                        contentType: "application/json",
                        method: "POST",
                        url: "../../tasks/comment",
                        data: JSON.stringify({comment: $('#subTaskComment').val(),
                            taskId: taskId,
                            username: userDataCookie.username
                        }),
                        dataType: 'json',
                        success: function (data) {

                            $('#subTaskCommentDialog').dialog("close");
                            location.reload();
                        },
                        error: function (data) {
                            alert("An error occured trying to save comment: \n" + JSON.parse(data));
                        }
                    });
                });

            }
            
            $(document).ready(function () {
                $('#myTabContent').tabs();
                
                $('#updateSystemBtn').click(function (event) {
                                        event.preventDefault();

                    var updatedSystem = {"id": $('#updateSystemId').val(), "name": $('#updateSystemName').val(), "description": $('#updateDescription').val(),
                    "attributes": {"id":$('#txtSystemId').val(), "systemId":$('#updateSystemId').val(),  "serverName":$('#txtServerName').val(), "databaseName":$('#txtDatabaseName').val(), "operatingSystem":$('#txtOPeratingSystem').val(),
                    "hostingSystem":$('#txtHostingSystem').val(), "language":$('#txtLanguage').val(), "apiDocumentation":$('#txtAPIDocumentation').val()}};
                    $.ajax({
                        headers: {
                            'Accept': 'application/json',
                            'Content-Type': 'application/json'
                        },
                        Accept: "application/json",
                        contentType: "application/json",
                        method: "POST",
                        url: "../../systems/update",
                        data: JSON.stringify(updatedSystem),
                        dataType: 'json',
                        success: function (data) {

                            location.reload();
                        },
                        error: function (data) {
                            alert("An error occured trying to update system: \n" + JSON.parse(data));
                            $.loader.close(true);
                        }
                    });
                });
                
                
                    $('#saveNewSystemBtn').click(function (event) {
                                        event.preventDefault();

                    var newSystem = {"name": $('#txtSystemName').val(), "description": $('#txtDescription').val(),
                    "attributes": {"serverName":$('#addServerName').val(), "databaseName":$('#addDatabaseName').val(), "operatingSystem":$('#addOPeratingSystem').val(),
                    "hostingSystem":$('#addHostingSystem').val(), "language":$('#addLanguage').val(), "apiDocumentation":$('#addAPIDocumentation').val()}};
                    $.ajax({
                        headers: {
                            'Accept': 'application/json',
                            'Content-Type': 'application/json'
                        },
                        Accept: "application/json",
                        contentType: "application/json",
                        method: "POST",
                        url: "../../systems/save",
                        data: JSON.stringify(newSystem),
                        dataType: 'json',
                        success: function (data) {

                            location.reload();
                        },
                        error: function (data) {
                            alert("An error occured trying to update system: \n" + JSON.parse(data));
                            $.loader.close(true);
                        }
                    });
                });
                
                $('#addNewSysBtn').click(function (event) {
                  $('#addNewSystemDialog').dialog({
                    height: 920,
                    width: 700,
                    modal: true,
                    resizable: false,
                    dialogClass: 'no-close success-dialog',
                    create: function (event, ui) {
                        var widget = $(this).dialog("widget");
                        $(".ui-dialog-titlebar-close span", widget)
                                .removeClass("ui-icon-closethick")
                                .removeClass("ui-icon")
                                .addClass("ui-icon-closedia");
                    }

                });
                $('#cancelSystemBtn').click(function (event) {
                    //clear the form
                    $('#addNewSystemDialog').dialog("close");
                });
                });

                $.ajax({
                    headers: {
                        'Accept': 'application/json',
                        'Content-Type': 'application/json'
                    },
                    Accept: "application/json",
                    contentType: "application/json",
                    method: "POST",
                    url: jsProject.id + "/resourcesystems",
                    dataType: 'json',
                    success: function (data) {
                        for (i = 0; i < data.length; i++) {
                            $('.resClasso').each(function (objIndex, obj) {
                                if ($(obj).attr("data-user") === data[i].userName) {
                                //obj.selectedItemIndex = i;
                                $(obj).find('option').each(function (indexed, element) {
                                    if (element.value === data[i].systemId[0] + "") {
                                        $(obj).prop('selectedIndex', indexed);
                                        $(obj).attr("data-empty", "0");
                                    }
                                });
                                }
                        });
                    }
                    },
                    error: function (data) {
                        alert("An error occured trying to get project resources systems: \n" + JSON.parse(data));
                        $.loader.close(true);
                    }
                });

                $('.resClasso').on('change', function () {
                    var updateInsert = "update";
                    if ($(this).attr("data-empty") === "1") {
                        updateInsert = "insert";
                    }

                //alert(this.value+" \nUser: "+$(this).attr("data-user")+" \n"+updateInsert);

                $.ajax({
                    headers: {
                        'Accept': 'application/json',
                        'Content-Type': 'application/json'
                    },
                    Accept: "application/json",
                    contentType: "application/json",
                    method: "POST",
                    url: jsProject.id + "/resource/" + $(this).attr("data-user") + "/system/" + this.value + "/" + updateInsert,
                    dataType: 'json',
                    success: function (data) {
                    },
                    error: function (data) {
                        alert("An error occured trying to get project resources systems: \n" + JSON.parse(data));
                        $.loader.close(true);
                    }
                });
                });
                $('.resourceSystemClass').prop('selectedIndex', -1);
                $('#single_cal3').daterangepicker({
                    singleDatePicker: true,
                    singleClasses: "picker_3",
                    locale: {
                    format: 'DD/MM/YYYY'
                    }
                }, function (start, end, label) {
                    expectedDate = start;
                    expectedDate = expectedDate.format('DD-MMM-YYYY');
                    //alert("expectedDate: "+expectedDate);
                    });

                $('#addSysBtn').click(function (event) {
                //event.preventDefault();
                $('#addSystemDialog').dialog({
                    height: 850,
                    width: 700,
                    modal: true,
                    resizable: false,
                    dialogClass: 'no-close success-dialog',
                    create: function (event, ui) {
                        var widget = $(this).dialog("widget");
                        $(".ui-dialog-titlebar-close span", widget)
                        .removeClass("ui-icon-closethick")
                        .removeClass("ui-icon")
                        .addClass("ui-icon-closedia");
                    }
                });
                $('#closeSystemBtn').click(function (event) {
                    //clear the form
                    $('#addSystemDialog').dialog("close");
                        location.reload();
                    });
                    //$('#resourceTable tbody').append('<tr class="child"><td>blahblah</td></tr>');
                    if (newSystemWindow) {
                        $.ajax({
                            headers: {
                               'Accept': 'application/json',
                               'Content-Type': 'application/json'
                            },
                                Accept: "application/json",
                                contentType: "application/json",
                                method: "POST",
                                url: "../systems",
                                dataType: 'json',
                                success: function (data) {
                                newSystemWindow = false;
                                    for (i = 0; i < data.length; i++) {
                                        var selectedValue = "";
                                        for (j = 0; j < jsProject.systems.length; j++) {
                                            if (data[i].id === jsProject.systems[j].id) {
                                                selectedValue = ' checked="true"';
                                                break;
                                            }
                                        }
                                        $('#systemsTable tbody').append('<tr class="even pointer"><td class="a-center "><input' + selectedValue + ' onclick="onchangeSystem(this)" data-projectid="' + jsProject.id + '" data-systemid="' + data[i].id + '" type="checkbox" class="flat,resourceCheckClass" name="table_records"></td><td class=" ">' + data[i].name + '</td><td class=" "></td></tr>');
                                    }
                                },
                                error: function (data) {
                                    alert("An error occured trying to get project resources: \n" + JSON.parse(data));
                                    $.loader.close(true);
                                }
                            });
                        }
                    });
                        $('#cancelSystem').click(function (event) {
                            //clear the form
                            $('#addSystemDialog').dialog("close");
                        });
                    $('#saveTaskBtn').click(function (event) {
                        var assignedUser = $('#resourceTxtHidden').val();
                        var assignedName = $('#resourceTxt').val();
                        var assignedEmail = $('#resourceEmailHidden').val();
                        $.ajax({
                            headers: {
                                'Accept': 'application/json',
                                'Content-Type': 'application/json'
                            },
                            Accept: "application/json",
                            contentType: "application/json",
                            method: "POST",
                            url: "../../projects/add/task",
                            data: JSON.stringify({projectId: jsProject.id,
                                                description: $('#taskDescTxt').val(),
                                                assignedTo: {userName: assignedUser , fullNames: assignedName, email: assignedEmail},
                                                createdby: userDataCookie.username,
                                                updateBy:{userName: userDataCookie.username, fullNames: '', email: ''},
                                                name:$('#taskNameTxt').val(),
                                                status: $('#statusSelect option:selected').val(),
                                                severity: $('#severitySelect option:selected').val(),
                                                priority: $('#prioritySelect option:selected').val(),
                                                comments:[{comment: $('#taskComment').val(), username: userDataCookie.username }]
                                                }),
                                                dataType: 'json',
                            success: function (data) {
                                    sendNotification(assignedUser, assignedName, assignedEmail); 
                                    alert('Task successfully created...');
                                    location.reload();
                            },
                            error: function (data) {
                                alert("An error occured trying to save project: \n" + JSON.parse(data));
                            }
                        });
                    });
                    $('.resourceCheckClass').change(function () {
                        //alert('changed');
                    });
                    //Display tooltip
                    $('[data-toggle="tooltip"]').tooltip();
                    // Custom step
                    $('#priorityTxt').stepper({
                        wheel_step: 1,
                        arrow_step: 1,
                        limit: [1, 5]
                    });

                    $("#revenueTxt").maskMoney();

                    $('#createProjectBtn').click(function (event) {
                        //event.preventDefault();
                        $('#createPortfolioDialog').dialog({
                            height: 850,
                            width: 700,
                            modal: true,
                            resizable: false,
                            dialogClass: 'no-close success-dialog',
                            create: function (event, ui) {
                                var widget = $(this).dialog("widget");
                                $(".ui-dialog-titlebar-close span", widget)
                                .removeClass("ui-icon-closethick")
                                .removeClass("ui-icon")
                                .addClass("ui-icon-closedia");
                            }
                        });
                        $('#cancelProjectBtn').click(function (event) {
                            //clear the form
                            $('#createPortfolioDialog').dialog("close");
                        });

                    });

                    $('#addTaskBtn').click(function (event) {
                        //event.preventDefault();
                        $('#taskDialog').dialog({
                            height: 700,
                            width: 700,
                            modal: true,
                            resizable: false,
                            dialogClass: 'no-close success-dialog',
                            create: function (event, ui) {
                                var widget = $(this).dialog("widget");
                                $(".ui-dialog-titlebar-close span", widget)
                                .removeClass("ui-icon-closethick")
                                .removeClass("ui-icon")
                                .addClass("ui-icon-closedia");
                                //alert("call resource list");
                                            
                            $.each(JSON.parse(taskStatus), function (idx, val) {
                                $("#statusSelect").append("<option value='" + idx + "'>" + val + "</option>");
                            });

                            $.each(JSON.parse(severities), function (idx, val) {
                                $("#severitySelect").append("<option value='" + idx + "'>" + val + "</option>");
                            });
                            $.each(JSON.parse(priorities), function (idx, val) {
                                $("#prioritySelect").append("<option value='" + idx + "'>" + val + "</option>");
                            });
                            var systems = jsProject.systems;
                            var systemSkills = [];
                            for(i = 0; i < systems.length; i++) {
                                for(x=0; x<systems[i].skills.length; x++) {
                                    var obj = {"id": systems[i].skills[x].id, "name": systems[i].skills[x].name}
                                    systemSkills.push(obj);
                                }
                            }
                                $.ajax({
                                    headers: {
                                        'Accept': 'application/json',
                                        'Content-Type': 'application/json'
                                    },
                                    Accept: "application/json",
                                    contentType: "application/json",
                                    method: "POST",
                                    url: "../resources",
                                    data: JSON.stringify(systemSkills),
                                    dataType: 'json',
                                    success: function (returndata) {
                                        console.log("returned resources " + returndata)
                                        if (returndata !== null && returndata.length > 0) {
                                            $('#resourceSelect').empty();
                                            $('#resourceSelect').append($('<option>', {value: '', text: ''}));
                                                for (var i = 0; i < returndata.length; i++) {
                                                    $('#resourceSelect').append($('<option>', {value: returndata[i].userName, text: returndata[i].fullNames}));
                                                }
                                        }
                                    },
                                    error: function (data) {
                                        alert("An error occured trying to get resources: \n" + JSON.parse(data));
                                        $.loader.close(true);
                                    }
                                });
                            }
                        });
                        $('#cancelTaskBtn').click(function (event) {
                            //clear the form
                            $('#taskDialog').dialog("close");
                        });

                    });


                    $('#businessOwnerTxt').devbridgeAutocomplete({
                        minChars: 2,
                        serviceUrl: '../../projects/search_resource',
                        preventBadQueries: false,
                        zIndex: 2140000000,
                        type: 'POST',
                        showNoSuggestionNotice: true,
                        noSuggestionNotice: 'No Matching Names - Please use ask admistrator to add user"',
                        success: function (data) {
                            var out = $.parseJSON(data);
                            response($.each(out, function (i, item) {

                                return {

                                    label: item.value,
                                    value: item.data
                                };
                            }));
                        },
                        onSelect: function (suggestion) {
                            $('#businessOwnerTxtHidden').val(suggestion.data);
                        }
                    });

                    $('#ownerTxt').devbridgeAutocomplete({
                        minChars: 2,
                        serviceUrl: '../../projects/search_owner',
                        preventBadQueries: false,
                        zIndex: 2140000000,
                        type: 'POST',
                        showNoSuggestionNotice: true,
                        noSuggestionNotice: 'No Matching Names - Please use ask admistrator to add user"',
                        success: function (data) {
                            var out = $.parseJSON(data);
                            response($.each(out, function (i, item) {

                                return {

                                    label: item.value,
                                    value: item.data
                                };
                            }));
                        },
                        onSelect: function (suggestion) {
                            $('#ownerTxtHidden').val(suggestion.data);
                        }
                    });
                    
                    $('#resourceTxt').devbridgeAutocomplete({
                        minChars: 2,
                        serviceUrl: '../../projects/search_resource',
                        preventBadQueries: false,
                        zIndex: 2140000000,
                        type: 'POST',
                        showNoSuggestionNotice: true,
                        noSuggestionNotice: 'No Matching Names - Please use ask admistrator to add user"',
                        success: function (data) {
                            var out = $.parseJSON(data);
                            response($.each(out, function (i, item) {

                                return {

                                    label: item.value,
                                    value: item.data
                                };
                            }));
                        },
                        onSelect: function (suggestion) {
                            $('#resourceTxtHidden').val(suggestion.data);
                            $('#resourceEmailHidden').val(suggestion.email);
                        }
                    });


                    $('#cancelProjectBtn').click(function (event) {
                        location.replace(sessionStorage.getItem("referer"));
                    });

                    $('#saveProjectBtn').click(function (event) {
                        //$('.card').loading({ circles: 3,overlay: true });
                        //$('#createPortfolioDialog').addClass("disabledWindows");

                        $('#projectDetailsForm').loader($data);

                        $.ajax({
                            headers: {
                                'Accept': 'application/json',
                                'Content-Type': 'application/json'
                            },
                            Accept: "application/json",
                            contentType: "application/json",
                            method: "POST",
                            url: "../../projects/update",
                            data: JSON.stringify({
                            id: $('#projectIdTxt').val(),
                            name: $('#projectNameTxt').val(),
                            description: $('#descTxt').val(),
                            createdBy: userDataCookie.username,
                            updatedBy: userDataCookie.username,
                            businessOwner: {userName: $('#businessOwnerTxtHidden').val()},
                            projectOwner: {userName: $('#ownerTxtHidden').val()},
                            projectManager: {userName: $('#managerTxtHidden').val()},
                            expectedDate: $("#single_cal3").val(),
                            priority: parseInt($('#priorityTxt').val()),
                            revenueImpact: $('#revenueTxt').maskMoney('unmasked')[0],
                            usageImpact: $('#usageTxt').val(),
                            parent: $("#projectParentOpt").val(),
                            opex: $("#capexTxt").val(),
                            capex: $("#opexTxt").val(),
                            status: $("#projectStatus").val()
                            }),
                            dataType: 'json',

                            success: function (data) {
                                //alert("sending files...");
                                //$("#fileupload").get(0).setAttribute('action','upload/project/'+data.id);
                                //$("#fileupload").attr('action','upload/project/'+id);
                                //$("#fileupload").submit(); 
                               if ($('#inputFile').val() !== '') {
                                    var formData = new FormData($("#fileupload").get(0));
                                    $.ajax({
                                        url: 'upload/project/' + data.id + '/' + userDataCookie.username,
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
                                        error: function (data) {
                                            alert("An error occured trying upload file: \n" + JSON.parse(data));
                                            $.loader.close(true);
                                        }
                                    });
                                } else {
                                    $.loader.close(true);
                                    $('#createPortfolioDialog').dialog("close");
                                    location.reload();
                                }
                                location.replace(sessionStorage.getItem("referer"));
                            },
                            error: function (data) {
                                alert("An error occured trying to save project: \n" + JSON.parse(data));
                                $.loader.close(true);
                            }
                        });
                    });
                    $("#updateSystemSkillBtn").click(function (event) {
                        event.preventDefault();
                        var selectedSkills = [];
                        $('#systemSearch_to option').each(function () {
                            var obj = {"id": $(this).val(), "name": $(this).text()};
                            selectedSkills.push(obj);
                        });
                        $.ajax({
                            headers: {
                                'Accept': 'application/json',
                                'Content-Type': 'application/json'
                            },
                            Accept: "application/json",
                            contentType: "application/json",
                            method: "POST",
                            url: "../../systems/skills/update/" + JSON.parse(sessionStorage.getItem('selectedProjectSystem')).id,
                            data: JSON.stringify(selectedSkills),
                            dataType: 'json',
                            success: function (data) {

                                location.reload();
                            },
                            error: function (data) {
                                alert("An error occured trying to update system skills: \n" + JSON.parse(data));
                                $.loader.close(true);
                            }
                        });
                    });

                    $('#managerTxt').devbridgeAutocomplete({
                        minChars: 2,
                        serviceUrl: '../../projects/search_manager',
                        preventBadQueries: false,
                        zIndex: 2147483647,
                        type: 'POST',
                        showNoSuggestionNotice: true,
                        noSuggestionNotice: 'No Matching Names - Please use ask admistrator to add user"',
                        success: function (data) {
                            var out = $.parseJSON(data);
                            response($.each(out, function (i, item) {

                                return {

                                    label: item.value,
                                    value: item.data
                                };
                            }));
                        },
                        onSelect: function (suggestion) {
                            $('#managerTxtHidden').val(suggestion.data);
                        }
                    });
                    $('#updateSystemAttributesBtn').click(function (event) {
                        loadSystemSkills();
                        $('#systemSkillDialog').dialog({
                            height: 600,
                            width: 700,
                            modal: true,
                            resizable: false,
                            dialogClass: 'no-close success-dialog',
                            create: function (event, ui) {
                                var widget = $(this).dialog("widget");
                                $(".ui-dialog-titlebar-close span", widget)
                                .removeClass("ui-icon-closethick")
                                .removeClass("ui-icon")
                                .addClass("ui-icon-closedia");
                            }

                        });

                    });
                    $('#cancelSystemSkillBtn').click(function (event) {
                        //clear the form
                        $('#systemSkillDialog').dialog("close");
                    });
                    $('#updateResourceTxt').devbridgeAutocomplete({
                        minChars: 2,
                        serviceUrl: '../search_resource',
                        preventBadQueries: false,
                        zIndex: 2147483647,
                        type: 'POST',
                        showNoSuggestionNotice: true,
                        noSuggestionNotice: 'No Matching Names - Please use ask admistrator to add user"',
                        success: function (data) {
                            var out = $.parseJSON(data);
                            response($.each(out, function (i, item) {

                                return {

                                    label: item.value,
                                    value: item.data
                                };
                            }));
                        },
                        onSelect: function (suggestion) {
                            $('#updateResourceTxtHidden').val(suggestion.data);
                        }
                    });

                    getProjectParents();
                    getProjectPillars();
                    buildProjectResources(jsProject);
            });
            
            function onUpdateTask(selectedTaskId) {
                for(i=0; i<jsProject.tasks.length; i++){
                if(jsProject.tasks[i].id === selectedTaskId){
                    $("#updateSeveritySelect").empty();
                    $("#updateStatusSelect").empty();
                    $("#updatePrioritySelect").empty();
                    $('#updateTaskNameTxt').val(jsProject.tasks[i].name);
                    $('#updateTaskDescTxt').val(jsProject.tasks[i].description);
                    $('#updateResourceTxt').val(jsProject.tasks[i].assignedTo.fullNames);
                    $('#updateResourceTxtHidden').val(jsProject.tasks[i].assignedTo.userName);
                    $.each(JSON.parse(taskStatus), function (idx, val) {
                        if(idx === jsProject.tasks[i].status){
                            console.log("status " + val + " " + idx);
                            $("#updateStatusSelect").append("<option value='" + idx + "' selected = 'selected'>" + val + "</option>");
                        } else{
                            $("#updateStatusSelect").append("<option value='" + idx + "'>" + val + "</option>");
                        }
                    });
                    $.each(JSON.parse(severities), function (idx, val) {
                        if(idx === jsProject.tasks[i].severity){
                            console.log("severity " + val + " " + idx);
                            $("#updateSeveritySelect").append("<option value='" + idx + "' selected = 'selected'>" + val + "</option>");
                        }else{
                            $("#updateSeveritySelect").append("<option value='" + idx + "'>" + val + "</option>");
                        }
                    });
                    $.each(JSON.parse(priorities), function (idx, val) {
                        if((++idx) === jsProject.tasks[i].priority){
                            console.log("priority " + val + " " + idx);
                            $("#updatePrioritySelect").append("<option value='" + idx + "' selected = 'selected'>" + val + "</option>");
                        }else{
                            $("#updatePrioritySelect").append("<option value='" + idx + "'>" + val + "</option>");
                        }
                    });
                }
            }
                $('#updateParentTaskDialog').dialog({
                            height: 700,
                            width: 700,
                            modal: true,
                            resizable: false,
                            dialogClass: 'no-close success-dialog',
                            create: function (event, ui) {
                                var widget = $(this).dialog("widget");
                                $(".ui-dialog-titlebar-close span", widget)
                                .removeClass("ui-icon-closethick")
                                .removeClass("ui-icon")
                                .addClass("ui-icon-closedia");
                            }
                        });
                        $('#cancelUpdateTaskBtn').click(function (event) {
                            //clear the form
                            $('#updateParentTaskDialog').dialog("close");
                        });
                        $('#updateTaskBtn').click(function (event) {
                                                    $.ajax({
                            headers: {
                                'Accept': 'application/json',
                                'Content-Type': 'application/json'
                            },
                            Accept: "application/json",
                            contentType: "application/json",
                            method: "POST",
                            url: "../../tasks/subtask/update",
                            data: JSON.stringify({projectId: jsProject.id,
                                                id:selectedTaskId,
                                                description: $('#updateTaskDescTxt').val(),
                                                assignedTo:{userName: $('#updateResourceTxtHidden').val(), fullNames: $('#updateResourceTxt').val(), email: ''},
                                                updateBy: {userName: userDataCookie.username, fullNames:'', email:''},
                                                name:$('#updateTaskNameTxt').val(),
                                                severity: $('#updateSeveritySelect  option:selected').val(),
                                                status:$('#updateStatusSelect option:selected').val(),
                                                priority:$('#updatePrioritySelect option:selected').val(),
                                                comments:[{comment: $('#updateTaskComment').val(), taskId: selectedTaskId, username: userDataCookie.username }]
                                                }),
                                                dataType: 'json',
                            success: function (data) {
                                alert('Task successfully updated...');
                                location.reload();
                            },
                            error: function (data) {
                                alert("An error occured trying to save project: \n" + JSON.parse(data));
                            }
                        });
                        });
            }
            function sendNotification(user, name, email)
            {
                $.ajax({
                    headers: {
                        'Accept': 'application/json',
                        'Content-Type': 'application/json'
                    },
                    Accept: "application/json",
                    contentType: "application/json",
                    method: "POST",
                    url: "../../notifications/task/email",
                    data: JSON.stringify({ notificationType : 'task_assignment',
                        project : {name: jsProject.name, createdDate: jsProject.createdDate, expectedDate: jsProject.expectedDate,
                        businessOwner: {fullNames: jsProject.businessOwner.fullNames},
                        projectManager: {fullNames: jsProject.projectManager.fullNames},
                        projectOwner: {fullNames: jsProject.projectOwner.fullNames}},
                        task: {assignedTo: {userName: user , fullNames: name, email: email},
                    }}),
                    dataType: 'json',
                    success: function (data) {
                                                            
                    },
                    error: function (data) {
                        alert("An error occured trying to send notification: \n" + JSON.parse(data));
                    }
                });
            }
            function getProjectPillars() {
                $.ajax({
                headers: {
                    'Accept': 'application/json',
                    'Content-Type': 'application/json'
                },
                Accept: "application/json",
                contentType: "application/json",
                method: "POST",
                url: "../../projects/pillars",
                dataType: 'json',
                success: function (data) {
                    $.loader.close(true);
                    var options = $("#pillarOpt");
                    $.each(data, function () {
                        options.append($("<option />").val(this.id).text(this.name));
                        var Project_pillar_id = "<%=project.getProject_pillar_id()%>";
                        if (Project_pillar_id !== null && Project_pillar_id !== 0) {
                            $("#pillarOpt").val(Project_pillar_id);
                        }
                    });
                },
                error: function (xhr, err, thrownError) {
                    alert("Error: " + err +
                        "\nResponse Text: " + xhr.responseText +
                        "\nMessage: " + thrownError +
                        "\nready State: " + xhr.readyState +
                        "\nStatus: " + xhr.status);
                        $.loader.close(true);
                }
            });

        }

        function getProjectParents() {
            $.ajax({
            headers: {
                'Accept': 'application/json',
                'Content-Type': 'application/json'
            },
            Accept: "application/json",
            contentType: "application/json",
            method: "GET",
            url: "../../projects/projectparents",
            dataType: 'json',
            success: function (data) {
                var options = $("#projectParentOpt");
                $.each(data, function () {
                    options.append($("<option />").val(this.id).text(this.name));

                    var parent = "<%=project.getParent()%>";
                    if (parent !== null && parent !== 0) {
                        $("#projectParentOpt").val(parent);
                    }

                });
            },
            error: function (xhr, err, thrownError) {
                alert("Error: " + err +
                    "\nResponse Text: " + xhr.responseText +
                    "\nMessage: " + thrownError +
                    "\nready State: " + xhr.readyState +
                    "\nStatus: " + xhr.status);
            }
        });

    }
            function onAssignResource(projectId, taskId , assignedTo){
            console.log("Task Id " + taskId);

                        //event.preventDefault();
                        $('#addResourceDialog').dialog({
                            height: 850,
                            width: 700,
                            modal: true,
                            resizable: false,
                            dialogClass: 'no-close success-dialog',
                            create: function (event, ui) {
                                var widget = $(this).dialog("widget");
                                $(".ui-dialog-titlebar-close span", widget)
                                    .removeClass("ui-icon-closethick")
                                    .removeClass("ui-icon")
                                    .addClass("ui-icon-closedia");
                                }
                        });
                        $('#addResourceBtn').click(function (event) {
                         $.ajax({
                            headers: {
                                'Accept': 'application/json',
                                'Content-Type': 'application/json'
                            },
                            Accept: "application/json",
                            contentType: "application/json",
                            method: "POST",
                            url: "../task/update",
                            data: JSON.stringify({"id": taskId, "assignedTo":{ "userName":$("input[name='table_records']:checked").val(), "fullNames":'', "email":''}, "projectId": projectId}),
                            dataType: 'json',
                            success: function (data) {

                            },
                            error: function (data) {
                                alert("An error occured trying to get project resources: \n" + JSON.parse(data));
                                        $.loader.close(true);
                            }
                        });
                        $('#addResourceDialog').dialog("close");
                                               
                            location.reload();
                        });
                        $('#closeResourceBtn').click(function (event) {
                            //clear the form
                            $('#addResourceDialog').dialog("close");
                        });
                        //$('#resourceTable tbody').append('<tr class="child"><td>blahblah</td></tr>');
                        if (newResourceWindow) {
                            var systems = jsProject.systems;
                            console.log(systems);
                            var systemSkills = [];
                            for(i = 0; i < systems.length; i++) {
                                for(x=0; x<systems[i].skills.length; x++) {
                                    var obj = {"id": systems[i].skills[x].id, "name": systems[i].skills[x].name}
                                    systemSkills.push(obj);
                                }
                            }
                            $.ajax({
                            headers: {
                                'Accept': 'application/json',
                                'Content-Type': 'application/json'
                            },
                            Accept: "application/json",
                            contentType: "application/json",
                            method: "POST",
                            url: "../resources",
                            data: JSON.stringify(systemSkills),
                            dataType: 'json',
                            success: function (data) {
                                newResourceWindow = false;
                                console.log(data);
                                    for (i = 0; i < data.length; i++) {
                                        var selectedValue = "";
                                        if(assignedTo !== null){
                                        if (data[i].userName.toLowerCase() === assignedTo.toLowerCase()) {
                                                selectedValue = ' checked="true"';
                                         }}
                                     $('#resourceTable tbody').append('<tr class="even pointer"><td class="a-center "><input' + selectedValue + ' data-projectid="' + projectId + '" value="' + data[i].userName + '" type="radio" class="flat,resourceCheckClass" name="table_records"></td><td class=" ">' + data[i].fullNames + '</td><td class=" ">' + data[i].role.role + '</td></tr>');
                                       
                                    }

                            },
                            error: function (data) {
                                alert("An error occured trying to get project resources: \n" + JSON.parse(data));
                                        $.loader.close(true);
                            }
                        });
                    }

            }

    function buildProjectResources(project) {
        //var projectresources = JSON.parse(sessionStorage.getItem('projectresources')); 
        var queryTbl = "<table class='data table table-striped no-margin'>"
            + "<thead>"
            + "<tr>"
            + "<th>#</th>"
            + "<th>Name</th>"
            + "<th>Role</th>"
            + "<th>System</th>"
            + "<th></th>"
            + "<th></th>"
            + "</tr>"
            + "</thead>"
            + " <tbody>";

            for (i = 0; i < project.resources.length; i++) {

                var projectresources = project.resources[i];

                                                                                               
                queryTbl += "<tr>"
                queryTbl += "<td>" + i + "</td>"
                queryTbl += "<td>" + projectresources.fullNames + "</td>"
                queryTbl += "<td>" + projectresources.role.role + "</td>"
                queryTbl += "<td class='vertical-align-mid'>"
                queryTbl += "<select data-empty='" + i + "' data-user='" + projectresources.userName + "' class='select2_single form-control resourceSystemClass resClasso' id='" + i + "' selectedIndex='-1'>"
                for (j = 0; j < projectresources.systems.length; j++) {
                    queryTbl += "<option value='" + projectresources.systems[j].id + "'>" + projectresources.systems[j].name + "</option>"
                }
                queryTbl += "</select>"
                queryTbl += "<td>"
                queryTbl += "<input type=\"button\" value=\"Add System\" onclick=\"onChangeUpdateResource('" + projectresources.userName + "')\" class=\"btn btn-primary btn-xs\" \>"
                queryTbl += "</td>"
                queryTbl += "</td>"
                queryTbl += "<td>"
                queryTbl += "<input type=\"button\" value=\"Delete\" onclick=\"onChangeRemoveResource(" + project.id + ",'" + projectresources.userName + "')\" class=\"btn btn-danger btn-xs\" \>"
                queryTbl += "</td>"
                queryTbl += "</tr>"
            }
            queryTbl += "</tbody>";

            $("#ResourcesDiv").html(queryTbl);
    }


</script>

<script type="text/javascript">




            //Program a custom submit function for the form
            $("#fileupload").submit(function (event) {

                var userDataCookie = $.cookie("userData");
                if (userDataCookie !== undefined) {
                    //login using cookie data
                    userDataCookie = jQuery.parseJSON(userDataCookie);
                    //$('#ownerTxt').val(userDataCookie.name);
                    //$('#ownerTxtHidden').val(userDataCookie.username);
                }
                //disable the default form submission
                event.preventDefault();

                if ($('#inputFile').val() !== '') {
                    var formData = new FormData($("#fileupload").get(0));
                    $.ajax(
                            {
                                url: '../../upload/project/' + $('#projectIdTxt').val() + '/' + userDataCookie.username,
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
                                error: function (data) {
                                    alert("An error occured trying upload file: \n" + JSON.parse(data));
                                    $.loader.close(true);
                                }
                            });
                }

                return false;
            });

            function onchangeResource(currentResourceCheck) {
                //alert(currentResourceCheck.checked);
                var currentProjectId = $(currentResourceCheck).data("projectid");
                var currentProjectUser = $(currentResourceCheck).data("username");
                if ($(currentResourceCheck).is(':checked')) {
                    $.ajax({
                        url: '../../projects/add/resource/' + currentProjectId + '/' + currentProjectUser,
                        type: 'POST',
                        success: function (returndata) {
                            //alert("user added")
                        },
                        error: function (data) {
                            alert("An error occured trying to add a resource: \n" + JSON.parse(data));
                            $.loader.close(true);
                        }
                    });
                } else {
                    $.ajax({
                        url: '../../projects/remove/resource/' + currentProjectId + '/' + currentProjectUser,
                        type: 'POST',
                        success: function (returndata) {
                            //alert("user added")
                        },
                        error: function (data) {
                            alert("An error occured to remove a resource: \n" + JSON.parse(data));
                            $.loader.close(true);
                        }
                    });
                }
            }

            function onchangeSystem(currentSystemCheck) {
                //alert(currentResourceCheck.checked);
                var currentProjectId = $(currentSystemCheck).data("projectid");
                var currentSystem = $(currentSystemCheck).data("systemid");
                ;
                if ($(currentSystemCheck).is(':checked')) {
                    $.ajax({
                        url: '../../projects/add/system/' + currentProjectId + '/' + currentSystem,
                        type: 'POST',
                        success: function (returndata) {
                            //alert("system added")
                        },
                        error: function (data) {
                            alert("An error occured trying to add a system: \n" + JSON.parse(data));
                            $.loader.close(true);
                        }
                    });
                } else {
                    $.ajax({
                        url: '../../projects/remove/system/' + currentProjectId + '/' + currentSystem,
                        type: 'POST',
                        success: function (returndata) {
                            //alert("system added")
                        },
                        error: function (data) {
                            alert("An error occured trying remove a system: \n" + JSON.parse(data));
                            $.loader.close(true);
                        }
                    });
                }
            }


            function ondeleteSystem(projectid, systemid) {
                $.ajax({
                    url: '../../projects/remove/system/' + projectid + '/' + systemid,
                    type: 'POST',
                    success: function (returndata) {
                        //alert("system added")
                        location.reload();
                    },
                    error: function (data) {
                        alert("An error occured trying remove a system: \n" + JSON.parse(data));
                        $.loader.close(true);
                    }
                });

            }

            function ondeleteTask(projectid, taskid) {
                $.ajax({
                    url: '../../projects/remove/' + projectid + '/' + taskid,
                    type: 'POST',
                    success: function (returndata) {
                        //alert("system added")
                        location.reload();
                    },
                    error: function (data) {
                        alert("An error occured trying remove a task: \n" + JSON.parse(data));
                        $.loader.close(true);
                    }
                });

            }
            
            function updateProjectSystem(id) {
                var proj = ${jsProject};
                var systems = proj.systems;
                var selectedSystem;
                for (i = 0; i < systems.length; i++) {
                    if (systems[i].id === id) {
                        selectedSystem = systems[i];
                        populateSystem(selectedSystem);
                        break;
                    }
                }
                $('#updateSystemDialog').dialog({
                    height: 920,
                    width: 700,
                    modal: true,
                    resizable: false,
                    dialogClass: 'no-close success-dialog',
                    create: function (event, ui) {
                        var widget = $(this).dialog("widget");
                        $(".ui-dialog-titlebar-close span", widget)
                                .removeClass("ui-icon-closethick")
                                .removeClass("ui-icon")
                                .addClass("ui-icon-closedia");
                    }

                });
                $('#cancelUpdateSystemBtn').click(function (event) {
                    //clear the form
                    $('#updateSystemDialog').dialog("close");
                });
            }

            function populateSystem(selectedSystem) {
                sessionStorage.setItem('selectedProjectSystem', JSON.stringify(selectedSystem));
                $('#updateId').val(selectedSystem.id);
                $('#updateSystemId').val(selectedSystem.id);
                $('#updateSystemName').val(selectedSystem.name);
                $('#updateDescription').val(selectedSystem.description);
                $('#txtServerName').val(selectedSystem.attributes.serverName);
                $('#txtDatabaseName').val(selectedSystem.attributes.databaseName);
                $('#txtOPeratingSystem').val(selectedSystem.attributes.operatingSystem);
                $('#txtHostingSystem').val(selectedSystem.attributes.hostingSystem);
                $('#txtLanguage').val(selectedSystem.attributes.language);
                $('#txtAPIDocumentation').val(selectedSystem.attributes.apiDocumentation);
                $('WtxtThirdParty').val(selectedSystem.attributes.thirdParty);
                for (i = 0; i < selectedSystem.skills.length; i++) {
                    $("#updateSystemSkillsDiv").append("<span class=\"tags\">" + selectedSystem.skills[i].name + "</span>,&nbsp;&nbsp;");
                }
            }

            function loadSystemSkills() {
                var val = JSON.parse(sessionStorage.getItem('selectedProjectSystem'));
                $.ajax({
                    headers: {
                        'Accept': 'application/json',
                        'Content-Type': 'application/json'
                    },
                    Accept: "application/json",
                    contentType: "application/json",
                    method: "GET",
                    url: "../../profile/resource/skills",
                    dataType: 'json',
                    success: function (data) {
                        for (i = 0; i < data.length; i++) {
                            var flag = false;
                            for (x = 0; x < val.skills.length; x++) {
                                if (val.skills[x].id === data[i].id) {
                                    $("#systemSearch_to").append("<option value=\"" + data[i].id + "\">" + data[i].name + "</option>");
                                    flag = true;
                                }
                            }
                            if (!flag) {
                                $("#systemSearch").append("<option value=\"" + data[i].id + "\">" + data[i].name + "</option>");
                            }
                        }
                    },
                    error: function (data) {
                        alert("An error occured trying to get skills: \n" + JSON.parse(data));
                        $.loader.close(true);
                    }
                });

                $('#systemSearch').multiselect({
                    search: {
                        left: '<input type="text" name="q" class="form-control" placeholder="Search..." />',
                        right: '<input type="text" name="q" class="form-control" placeholder="Search..." />'
                    },
                    fireSearch: function (value) {
                        return value.length > 1;
                    },
                    right: '#systemSearch_to',
                    rightAll: '#sys_right_All_1',
                    rightSelected: '#sys_right_Selected_1',
                    leftSelected: '#sys_left_Selected_1',
                    leftAll: '#sys_left_All_1'
                });
            }

        </script>
    </body>
</html>
