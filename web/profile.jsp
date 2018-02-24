<%-- 
    Document   : user_profile
    Created on : 12 Jul 2017, 2:42:09 PM
    Author     : MaremaM
--%>

<!DOCTYPE html>
<html>
    <head>

    </head>
    <body class="nav-md">
        <style type="text/css">

            figcaption.ratings
            {
                margin-top:20px;
            }
            figcaption.ratings a
            {
                color:#f1c40f;
                font-size:11px;
            }
            figcaption.ratings a:hover
            {
                color:#f39c12;
                text-decoration:none;
            }
            .divider 
            {
                border-top:1px solid rgba(0,0,0,0.1);
            }
            .emphasis 
            {
                border-top: 4px solid transparent;
            }
            .emphasis:hover 
            {
                border-top: 4px solid #1abc9c;
            }
            .emphasis h2
            {
                margin-bottom:0;
            }
            span.tags 
            {
                background: #1abc9c;
                border-radius: 2px;
                color: #f5f5f5;
                font-weight: bold;
                padding: 2px 4px;
            }
            .dropdown-menu 
            {
                background-color: #34495e;    
                box-shadow: none;
                -webkit-box-shadow: none;
                width: 250px;
                margin-left: -125px;
                left: 50%;
            }
            .dropdown-menu .divider 
            {
                background:none;    
            }
            .dropdown-menu>li>a
            {
                color:#f5f5f5;
            }
            .dropup .dropdown-menu 
            {
                margin-bottom:10px;
            }
            .dropup .dropdown-menu:before 
            {
                content: "";
                border-top: 10px solid #34495e;
                border-right: 10px solid transparent;
                border-left: 10px solid transparent;
                position: absolute;
                bottom: -10px;
                left: 50%;
                margin-left: -10px;
                z-index: 10;
            }
        </style>
        <div class="container body">
            <div class="main_container">

                <%@include file="navigation_menu.jsp"%>


                <div class="right_col" role="main">
                    <%@include file="top_navigation.jsp" %>
                    <%   String title = loginData.getUser().getTitle();
                    String department = loginData.getUser().getDepartment();
                    String username = loginData.getUsername();%>
                    <div class="">
                        <div class="page-title">
                            <div class="title_left">
                                <h3>My Profile</h3>
                            </div>

                            <div class="title_right">
                                <div class="col-md-5 col-sm-5 col-xs-12 form-group pull-right top_search">
                                    <div class="input-group">

                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="right_col">
                            <div class="x_panel">
                                <div class="col-sm-12">
                                    <div class="col-xs-12 col-sm-8">
                                        <h2><%=fullUserName%></h2>
                                        <p><strong>Title: </strong> <%=title%> </p>
                                        <p><strong>Department: </strong> <%=department%> </p>
                                        <p><strong>Skills: </strong>
                                        <div id="skillsDiv">

                                        </div>
                                        </p>
                                    </div>             

                                </div>            
                                <div class="col-xs-12 divider text-center">
                                    <div class="col-xs-12 col-sm-4 emphasis">
                                        <h2><strong></strong></h2>                    
                                        <p><small></small></p>
                                        <button id="updateSkillsBtn" class="btn btn-success btn-block" disabled><span class="fa fa-plus-circle"></span> Update Skills </button>
                                    </div>
                                    <div class="col-xs-12 col-sm-4 emphasis">
                                        <h2><strong></strong></h2>                    
                                        <p><small></small></p>
                                        <button id="updateResourceSystemBtn" class="btn btn-success btn-block"><span class="fa fa-plus-circle"></span> Add System </button>
                                    </div>
                                </div>
                            </div>                 
                        </div>


                        <div class="box-info" id="skillsPanel" style="display: none">
                            <br><br>        
                            <div class="x_title">
                                <h2>Resource Skills</h2>                   
                                <div class="clearfix"></div>
                            </div>  
                            <!--form-horizontal row-border start-->
                            <div class="form-horizontal row-border">

                                <div class="row">
                                    <div class="col-xs-5">
                                        <select name="from[]" id="search" class="form-control" size="10" multiple="multiple">

                                        </select>
                                    </div>

                                    <div class="col-xs-2">
                                        <button type="button" id="right_All_1" class="btn btn-block"><i class="glyphicon glyphicon-forward"></i></button>
                                        <button type="button" id="right_Selected_1" class="btn btn-block"><i class="glyphicon glyphicon-chevron-right"></i></button>
                                        <button type="button" id="left_Selected_1" class="btn btn-block"><i class="glyphicon glyphicon-chevron-left"></i></button>
                                        <button type="button" id="left_All_1" class="btn btn-block"><i class="glyphicon glyphicon-backward"></i></button>
                                    </div>

                                    <div class="col-xs-5">
                                        <select name="to[]" id="search_to" class="form-control" size="10" multiple="multiple"></select>
                                    </div>

                                    <div class="col-xs-12 divider text-center">
                                        <div class="col-xs-12 col-sm-4 emphasis">
                                            <h2><strong></strong></h2>                    
                                            <p><small></small></p>
                                            <button id="updateSelectedSkillsbtn" class="btn btn-success btn-block"><span class="fa fa-plus-circle"></span> Update </button>
                                        </div>
                                        <div class="col-xs-12 col-sm-4 emphasis">
                                            <h2><strong></strong></h2>                    
                                            <p><small></small></p>
                                            <button id="addNewSkillbtn" class="btn btn-success btn-block"><span class="fa fa-plus-circle"></span> Add New </button>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <%@include file="add_skill_modal.jsp"%>
            <%@include file="resource_system_modal.jsp"%>
        </div>
        <script src="../js/multiselect.js" ></script>
        <script src="../js/multiselect.min.js" ></script>
        <script type="text/javascript">
            var user = '<%=username%>';
            var resource = ${resource};
            var userSkills = [];
            $("#updateSkillsBtn").prop('disabled', false);
            $(document).ready(function () {
                $.ajax({
                    headers: {
                        'Accept': 'application/json',
                        'Content-Type': 'application/json'
                    },
                    Accept: "application/json",
                    contentType: "application/json",
                    method: "GET",
                    url: "profile/resource/skills/" + user,
                    dataType: 'json',
                    success: function (data) {
                        for (i = 0; i < data.length; i++) {
                            var object = {"id": data[i].id, "name": data[i].name};
                            userSkills.push(object);
                            $("#skillsDiv").append("<span class=\"tags\">" + data[i].name + "</span>&nbsp;&nbsp;");
                        }
                        sessionStorage.setItem("userSkills", JSON.stringify(userSkills));
                    },
                    error: function (data) {
                        alert("An error occured trying to get resource skills: \n" + JSON.parse(data));
                        $.loader.close(true);
                    }
                });

                $("#updateSkillsBtn").click(function (event) {
                    event.preventDefault();
                    loadSkills();
                    $("#updateSkillsBtn").prop('disabled', true);
                });

                $('#updateResourceSystemBtn').click(function (event) {
                    onChangeUpdateResource(user);
                });

                $("#updateSelectedSkillsbtn").click(function (event) {
                    event.preventDefault();
                    var selectedSkills = [];
                    $('#search_to option').each(function () {
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
                        url: "profile/resource/skills/update/" + user,
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

                $("#addNewSkillbtn").click(function (event) {
                    event.preventDefault();
                    $('#skillDialog').dialog({
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
                    $('#cancelSkillBtn').click(function (event) {
                        //clear the form
                        $('#skillDialog').dialog("close");
                    });

                });
                $("#saveSkillBtn").click(function (event) {
                    event.preventDefault();

                    $.ajax({
                        Accept: "application/json",
                        contentType: "application/json",
                        method: "POST",
                        url: "profile/resource/skills/save",
                        data: JSON.stringify({name: $('#skillName').val()}),
                        dataType: 'json',
                        success: function (data) {
                            location.reload();
                        },
                        error: function (data) {
                            alert("An error occured trying upload file: \n" + JSON.parse(data));
                            $.loader.close(true);
                        }
                    });
                });
            });

            function onChangeUpdateResource(username) {
                $('#addResourceSystemDialog').dialog({
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
                $('#closeResourceSystemBtn').click(function (event) {
                    //clear the form
                    $('#addResourceSystemDialog').dialog("close");
                    location.reload();
                });

                    $.ajax({
                        headers: {
                            'Accept': 'application/json',
                            'Content-Type': 'application/json'
                        },
                        Accept: "application/json",
                        contentType: "application/json",
                        method: "POST",
                        url: "../tmt/projects/systems",
                        dataType: 'json',
                        success: function (data) {
                              for (i = 0; i < data.length; i++) {
                                var selectedValue = "";
                                  for (j = 0; j < resource.systems.length; j++) {

                                            if (data[i].id === resource.systems[j].id) {
                                                selectedValue = ' checked="true"';
                                                break;
                                            }

                                }
                                $('#resourceSystemsTable tbody').append('<tr class="even pointer"><td class="a-center "><input' + selectedValue + ' onclick=\"onchangeResourceSystem(this,\'' + username + '\')\" data-systemid="' + data[i].id + '" type="checkbox" class="flat,resourceCheckClass" name="table_records"></td><td class=" ">' + data[i].name + '</td><td class=" "></td></tr>');
                            }
                        },
                        error: function (data) {
                            alert("An error occured trying to get project resources: \n" + JSON.parse(data));
                            $.loader.close(true);
                        }
                    });
                
            }


            function onchangeResourceSystem(currentSystemCheck, username) {
                //alert(currentResourceCheck.checked);
                var currentProjectId = $(currentSystemCheck).data("projectid");
                var currentSystem = $(currentSystemCheck).data("systemid");
                ;
                if ($(currentSystemCheck).is(':checked')) {
                    $.ajax({
                        url:'profile/resource/'+username+'/system/'+currentSystem,
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

                }
            }
            function loadSkills() {
                $.ajax({
                    headers: {
                        'Accept': 'application/json',
                        'Content-Type': 'application/json'
                    },
                    Accept: "application/json",
                    contentType: "application/json",
                    method: "GET",
                    url: "profile/resource/skills",
                    dataType: 'json',
                    success: function (data) {
                        var profileSkills = JSON.parse(sessionStorage.getItem("userSkills"));

                        for (i = 0; i < data.length; i++) {
                            var flag = false;
                            for (x = 0; x < profileSkills.length; x++) {
                                if (profileSkills[x].id === data[i].id) {
                                    $("#search_to").append("<option value=\"" + data[i].id + "\">" + data[i].name + "</option>");
                                    flag = true;
                                }
                            }
                            if (!flag) {
                                $("#search").append("<option value=\"" + data[i].id + "\">" + data[i].name + "</option>");
                            }
                        }
                    },
                    error: function (data) {
                        alert("An error occured trying to get skills: \n" + JSON.parse(data));
                        $.loader.close(true);
                    }
                });

                $('#search').multiselect({
                    search: {
                        left: '<input type="text" name="q" class="form-control" placeholder="Search..." />',
                        right: '<input type="text" name="q" class="form-control" placeholder="Search..." />'
                    },
                    fireSearch: function (value) {
                        return value.length > 1;
                    },
                    right: '#search_to',
                    rightAll: '#right_All_1',
                    rightSelected: '#right_Selected_1',
                    leftSelected: '#left_Selected_1',
                    leftAll: '#left_All_1'
                });
                $("#skillsPanel").toggle();
            }
        </script>
    </body>
</html>
