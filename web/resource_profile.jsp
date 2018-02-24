<%-- 
    Document   : resource_profile
    Created on : 21 Jul 2017, 4:05:29 PM
    Author     : MaremaM
--%>

<%@page import="za.co.trudon.tmt.data.type.response.ProjectTask"%>
<%@page import="za.co.trudon.tmt.data.type.response.Project"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
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

    </head>

    <body class="nav-md">
        <div class="container body">
            <div class="main_container">
                <%@include file="navigation_menu_inner.jsp"%>

                <%                    ArrayList<Project> projects = (ArrayList<Project>) request.getAttribute("projects");
                %>
                <div class="right_col" role="main">
                    <%@include file="top_navigation_inner.jsp" %>
                    <div class="">
                        <div class="page-title">
                            <div class="title_left">
                                <h3>Resource Details</h3>
                            </div>


                        </div>
                        <div class="clearfix"></div>

                        <div class="row">
                            <div class="col-md-12">
                                <div class="x_panel">
                                    <div class="x_content">
                                        <div class="input-group">
                                            <h2><label id="lblFullName"> </label></h2>
                                            <p><strong>Title: </strong> <label id="lblTitle"> </label></p>
                                            <p><strong>Department: </strong> <label id="lblDepartment"> </label> </p>
                                            <p><strong>Skills: </strong>
                                            <div id="resourceSkillsDiv">

                                            </div>
                                            </p>
                                            <p><strong>Systems: </strong>
                                            <div id="resourceSystemsDiv">

                                            </div>
                                            </p>
                                        </div>
                                        <div>
                                            <ul class="nav navbar-right panel_toolbox">
                                                <li>
                                                    <button class="btn btn-primary pull-right" style="margin-right: 5px;" id="addNewResourseSkillBtn"><i class="fa fa-plus"></i> Add Skill</button>
                                                </li>
                                            </ul>
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
                                        <div class="clearfix"></div>
                                    </div>

                                    <div class="x_content">
                                        <div class="x_content">

                                            <!-- start task list -->
                                            <table class="table table-striped projects">
                                                <thead>
                                                    <tr>
                                                        <th style="width: 1%">#</th>
                                                        <th style="width: 20%">Project</th>
                                                        <th style="width: 20%">Tasks</th>
                                                        <th style="width: 20%">Edit</th>
                                                    </tr>
                                                </thead>
                                                <tbody>
                                                    <!--Projects-->
                                                    <%
                                                        String queryTbl = " ";

                                                        for (Project project : projects) {
                                                            queryTbl = queryTbl + "<tr class=\"accordion-toggle\" data-toggle=\"collapse\" data-target=\"#" + project.getName() + "_" + project.getId() + "\">"
                                                                    + "<td>#</td>"
                                                                    + "<td><a>" + project.getName() + "</a></td>"
                                                                    + "<td class=\"project_progress\" style=\"width:25%\"><span class=\"badge\">" + project.getTasks().size() + "</span></td>"
                                                                    + "<td><a href=\"#\" class=\"btn btn-primary btn-xs\"><i class=\"fa fa-folder\"></i> View Task</a></td>"
                                                                    + "</tr>";

                                                            //tasks within a project
                                                            queryTbl = queryTbl + "<tr>"
                                                                    + "<td></td>"
                                                                    + "<td class=\"accordion-body collapse\" id=\"" + project.getName() + "_" + project.getId() + "\">"
                                                                    + "<table class=\"table table-striped\">"
                                                                    + "<thead>"
                                                                    + "<th>Description</th>"
                                                                    + "<th>#Close Task</th>"
                                                                    + "<th>#Update Task</th>"
                                                                    + "<th>Time Frame</th>"
                                                                    + "</thead>"
                                                                    + "<tbody>";

                                                            int count = 0;
                                                            for (ProjectTask task : project.getTasks()) {
                                                                count++;
                                                                queryTbl = queryTbl + "<tr>"
                                                                        + "<td>" + task.getDescription() + "</td>"
                                                                        + "<td>"
                                                                        + " <a onclick=\"closeTask(" + task.getId() + "," + task.getStatus() + ")\" class=\"btn btn-primary btn-xs\"><i class=\"fa fa-thumbs-up\"></i> Done</a>"
                                                                        + "</td>"
                                                                        + "<td>"
                                                                        + " <a onclick=\"closeTask(" + task.getId() + "," + task.getStatus() + ")\" class=\"btn btn-primary btn-xs\"><i class=\"fa fa-thumbs-up\"></i> Update</a>"
                                                                        + "</td>"
                                                                        + "<td>";
                                                                if (task.getStatus() == 0) {
                                                                    queryTbl = queryTbl
                                                                            + "<div id=\"slider" + count + "\" class=\"sliderClass\" style=\"width: 150px;margin-top: 10px;\"><div id=\"custom-handle" + count + "\"class=\"ui-slider-handle \"></div></div>"
                                                                            + "<a style=\"margin-top:10px;margin-left:20px;\" class=\"btn btn-primary btn-xs\" onclick=\"assignTaskEstimate(" + count + "," + task.getId() + ")\"> Assign time</a>";
                                                                } else {
                                                                    queryTbl = queryTbl
                                                                            + "<div>" + task.getEstimateDays() + " allocated</div>";
                                                                }
                                                                queryTbl = queryTbl + "</td>"
                                                                        + "</tr>";
                                                            }
                                                            queryTbl = queryTbl + "</tbody>"
                                                                    + "  </table>"
                                                                    + " </td>"
                                                                    + "</tr>";
                                                        }
                                                    %>
                                                    <%=queryTbl%>                        
                                                </tbody>
                                            </table>
                                            <!-- end task list -->
                                        </div>
                                    </div>      
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <%@include file="add_skill_modal.jsp"%>
            <%@include file="add_resource_skill_modal.jsp"%>
        </div>

        <!-- Stepper.js -->
        <script src="../../../js/jquery-loader_1.js"></script> 
        <!-- iCheck -->
        <script src="../../../vendors/iCheck/icheck.min.js"></script>

        <script src="../../../js/multiselect.js" ></script>
        <script src="../../../js/multiselect.min.js" ></script>
        <script src="../../../js/datatables/resources_data_table.js" type="text/javascript"></script>
        <script type="text/javascript">
            $(document).ready(function () {
                var resource = ${resourceProfile};

                $('#lblFullName').text(resource.fullNames);
                $('#lblTitle').text(resource.title);
                $('#lblDepartment').text(resource.department);

                for (i = 0; i < resource.skills.length; i++) {
                    $("#resourceSkillsDiv").append("<span class=\"tags\">" + resource.skills[i].name + "</span>&nbsp;&nbsp;");
                }

                for (x = 0; x < resource.systems.length; x++) {
                    $("#resourceSystemsDiv").append("<span class=\"tags\">" + resource.systems[x].name + "</span>&nbsp;&nbsp;");
                }

                $('#addNewResourseSkillBtn').click(function (event) {
                    event.preventDefault();
                    onUpdateResourceSkill(resource);
                });

                $('#updateResourceSkillBtn').click(function (event) {
                    event.preventDefault();
                    var selectedSkills = [];
                    $('#resourceSkillSearch_to option').each(function () {
                        var obj = {"id": $(this).val(), "name": $(this).text()}
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
                        url: "../../profile/resource/skills/update/" + resource.userName,
                        data: JSON.stringify(selectedSkills),
                        dataType: 'json',
                        success: function (data) {
                            location.reload();
                        },
                        error: function (data) {
                            alert("An error occured trying to update resource skills: \n" + JSON.parse(data));
                            $.loader.close(true);
                        }
                    });

                });
            });
        </script>
    </body>
</html>
