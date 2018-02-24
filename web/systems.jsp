<%-- 
    Document   : systems
    Created on : 12 Jul 2017, 2:32:40 PM
    Author     : MaremaM
--%>
<%@page import="za.co.trudon.tmt.data.type.response.Skill"%>
<%@page import="java.util.List"%>
<%@page import="za.co.trudon.tmt.data.type.response.System" %>
<!DOCTYPE html>
<html>
    <head>

    </head>
    <body class="nav-md">
        <div class="container body">
            <div class="main_container">
                <%@include file="navigation_menu.jsp"%>

                <div class="right_col" role="main">
                    <%@include file="top_navigation.jsp" %>
                    <div class="page-title">
                        <div class="title_left">
                            <h3>Systems</h3>
                        </div>

                        <div class="title_right">
                            <div class="col-md-5 col-sm-5 col-xs-12 form-group pull-right top_search">
                                <div class="input-group">

                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="clearfix"></div>
                    <div class="row">
                        <div class="col-md-12">
                            <div class="x_panel">
                                <div class="x_title">
                                    <h2>Systems</h2>
                                    <ul class="nav navbar-right panel_toolbox">
                                        <li>
                                            <button class="btn btn-primary pull-right" style="margin-right: 5px;" id="addNewSystemBtn"><i class="fa fa-plus"></i> Add System</button>
                                        </li>
                                    </ul>
                                    <div class="clearfix"></div>
                                </div>
                                <div id="allSystemsDiv" class="x_content">
                                    <table id="allSystemsTable"  cellpadding="0" cellspacing="0" border="0" class="table table-striped projects">
                                        <thead>
                                            <tr>
                                                <th style="width: 1%">#</th>
                                                <th style="width: 2%"></th>
                                                <th style="width: 20%">System Name</th>
                                                <th>System Description</th>
                                                <th style="width: 20%">#Edit</th>
                                            </tr>
                                        </thead>
                                        <tbody id="allSystemsContentBody">

                                    </table>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <%@include file="add_system_modal.jsp"%>
            <%@include file="update_system_modal.jsp"%>
            <%@include file="add_system_attributes.jsp"%> 
            <%@include file="add_system_skill_modal.jsp"%>
        </div>
        <script src="../js/multiselect.js" ></script>
        <script src="../js/multiselect.min.js" ></script>
        <script src="../plugins/data-tables/jquery.dataTables.min.js"></script>
        <script src="../js/datatables/systems_data_table.js" type="text/javascript"></script>
        <script type="text/javascript">
            $(document).ready(function () {
                loadSystemsContentData(${systems});

                $("#updateSystemSkillBtn").click(function (event) {
                    event.preventDefault();
                    var selectedSkills = [];
                    $('#systemSearch_to option').each(function () {
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
                        url: "systems/skills/update/" + JSON.parse(sessionStorage.getItem('selectedSystem')).id,
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
                $('#addNewSystemBtn').click(function (event) {
                    $('#addNewSystemDialog').dialog({
                        height: 400,
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
                $('#cancelSystemBtn').click(function (event) {
                    $('#addNewSystemDialog').dialog("close");
                });
                $('#AddSystemAttributesBtn').click(function (event) {
                    $('#addSystemAttributes').dialog({
                        height: 900,
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
                $('#cancelAttributesBtn').click(function (event) {
                    $('#addSystemAttributes').dialog("close");
                });


                $("#updateSystemBtn").click(function (event) {
                    event.preventDefault();

                    var updatedSystem = {"id": $('#updateSystemId').val(), "name": $('#updateSystemName').val(), "description": $('#updateDescription').val()};

                    $.ajax({
                        headers: {
                            'Accept': 'application/json',
                            'Content-Type': 'application/json'
                        },
                        Accept: "application/json",
                        contentType: "application/json",
                        method: "POST",
                        url: "systems/update",
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
            });

        </script>
    </body>
</html>
