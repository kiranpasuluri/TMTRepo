<%-- 
    Document   : monthly_reports
    Created on : 13 Jan 2018, 5:16:33 AM
    Author     : maremam
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>

    </head>
    <body class="nav-md">
        <div class="container body">
            <div class="main_container">
                <%@include file="navigation_menu_inner.jsp"%>

                <div class="right_col" role="main">
                    <%@include file="top_navigation_inner.jsp" %>
                    <div class="page-title">
                        <div class="title_left">
                            <h3>Reports</h3>
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
                                    <h2>Montlhy Reports</h2>

                                    <div class="clearfix"></div>
                                </div>
                                <div id="searchResourcesDiv" class="x_content">

                                    <div col-md-12 col-sm-12 col-xs-12 form-group pull-right top_search>
                                        <div class="form-group">

                                            <div id="yearDiv" class="col-md-12 col-sm-12 col-xs-12 pull-left">
                                                <label class="col-sm-3 control-label">Month:</label>
                                                <div class="col-md-8">
                                                    <input type="text" id="year" class="form-control" data-calendar="false">
                                                    <input id="fromDate" value="" type="hidden">
                                                    <input id="toDate" value="" type="hidden">
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-md-2 col-sm-2 col-xs-2 pull-right">
                                            <div class="input-group col-md-12 col-sm-12 col-xs-12">

                                                <span class="input-group-btn">
                                                    <button id="btnTimesheetSearch" class="btn btn-default" type="button">Search</button>
                                                    <button id="btnTimesheetClear" class="btn btn-default" type="button">Clear</button>
                                                </span>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div id="allTimesheetsDiv" class="x_content" style="display: none">
                                    <h2><b><div id="duration"/></b></h2>
                                    <table id="allTimesheetsTable"  cellpadding="0" cellspacing="0" border="1">
                                        <thead id="timesheetHeaders">
                                        <tbody id="timesheetContentBody">
                                           
                                    </table>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

        </div>
        <script type="text/javascript">
        $(document).ready(function () {
            var previousDate = new Date();
            
            $("#year").datepicker({
                showButtonPanel: true,
                changeMonth: true,
                changeYear: true,
                dateFormat: 'MM yy',
                maxDate: new Date(previousDate.f),
                singleDatePicker: true,
                singleClasses: "picker_3",
                locale: {
                  format: 'MM yy'
                },
                beforeShow: function(el, dp) {
                $('#ui-datepicker-div').toggleClass('hide-calendar', $(el).is('[data-calendar="false"]'));
                },
                onClose: function(dateText, inst){
                    console.log('dateText: ' + dateText);
			var month = parseInt($("#ui-datepicker-div .ui-datepicker-month :selected").val()) + parseInt(1);
                        console.log('month: ' + month);
                        var year = $("#ui-datepicker-div .ui-datepicker-year :selected").val();
                        console.log('year: ' + year);
                        $("#fromDate").val(year + '/' + month + '/' + '01');
                        var lastDay = new Date(year, month, 0);
                        console.log("Last day = " + lastDay.getDate());
                        $("#toDate").val(year + '/' + month + '/' + lastDay.getDate());
			$(this).datepicker("setDate", new Date(year, month, null));
		}
            }, function(start, end, label) {
                console.log(start.toISOString(), end.toISOString(), label);
              });

        $('#btnTimesheetClear').click(function (event) {
            location.reload();
        });

                $("#btnTimesheetSearch").click(function (event) {
                    event.preventDefault();
                    $.ajax({
                        Accept: "application/json",
                        contentType: "application/json",
                        method: "POST",
                        url: "../project/reports",
                        data: JSON.stringify({fromDate : $('#fromDate').val(),
                                              toDate: $('#toDate').val()}),
                        dataType: 'json',
                        success: function (data) {
                            console.log("--> " + data);
                            var queryTblHeaders = '';
                            var queryTblRows = '';
                            $('#timesheetHeaders').empty();
                            $('#timesheetContentBody').empty();
                            $('#duration').empty();
                            if(data.projects.length === 0){
                                $('#duration').append('No data found...');
                            } else{
                            $('#duration').append('Monthly Report');
                            queryTblHeaders+="<tr>" +
                                "<th style=\"width: 3%\">#</th>" +
                                "<th style=\"width: 7%\">Project</th>" +
                                "<th style=\"width: 7%\">SubProjects</th>" +
                                "<th style=\"width: 10%\">Task</th>" +
                                "<th style=\"width: 10%\">Developer</th>" +
                                "<th style=\"width: 10%\">Owner</th>" +
                                "<th style=\"width: 10%\">Manager</th>"+
                                "<th style=\"width: 10%\">Status</th>"+
                                "<th style=\"width: 10%\">Priority</th>"+
                                "<th style=\"width: 10%\">Time Spent</th>"+
                                "<th style=\"width: 10%\">Time Estimated</th>"+
                                "<th style=\"width: 10%\">Comments</th>";
                            queryTblHeaders+="</tr>";
                            
                            for(p = 0; p < data.projects.length; p++){
                                var table1 = '';
                                var table2 = '';
                                var table3 = '';
                                var table4 = '';
                                var table5 = '';
                                var projectId = p+1;
                                queryTblRows += "<tr style=\"outline: thin solid\"><td>" + projectId + "</td>" +
                                                "<td><b>" + data.projects[p].name + "</b></td>" +
                                                "<td><b>" + data.projects[p].name + "</b></td>";
                                table1 += "<table style=\"width: -webkit-fill-available\">";
                                table2 += "<table style=\"width: -webkit-fill-available\">";
                                table3 += '<table style=\"width: -webkit-fill-available\">';
                                table4 += '<table style=\"width: -webkit-fill-available\">';
                                table5 += '<table style=\"width: -webkit-fill-available\">';
                                for(d=0; d<data.projects[p].tasks.length; d++){
                                    table1 +="<tr style=\"outline: thin solid\"><td><b>" + data.projects[p].tasks[d].name + "</b></td></tr>";
                                    table2+="<tr style=\"outline: thin solid\"><td><b>" + data.projects[p].tasks[d].assignedTo.fullNames + "</b></td></tr>";
                                    table3+="<tr style=\"outline: thin solid\"><td>" + data.projects[p].tasks[d].timeSpent + "</td></tr>";
                                    table4+="<tr style=\"outline: thin solid\"><td>" + data.projects[p].tasks[d].estimateHours + "</td></tr>";
                                    table5+="<tr style=\"outline: thin solid\"><td>" + data.projects[p].tasks[d].comments[0].comment + "</td></tr>";
                                }    
                                    queryTblRows += "<td>" + table1 + "</table></td>";
                                    queryTblRows += "<td>" + table2 + "</table></td>";
                                    queryTblRows += "<td>" + data.projects[p].projectOwner.fullNames + "</td>";
                                    queryTblRows += "<td>" + data.projects[p].projectManager.fullNames + "</td>";
                                    queryTblRows += "<td>" + statusAsString(data.projects[p].status) + "</td>";
                                    queryTblRows += "<td>" + data.projects[p].priority + "</td>";
                                    queryTblRows += "<td>" + table3 + "</table></td>";
                                    queryTblRows += "<td>" + table4 + "</table></td>";
                                    queryTblRows += "<td>" + table5 + "</table></td>";
                                    queryTblRows += "</tr>";
                            }

//                            $('#searchResourcesDiv').hide();
                            $('#timesheetHeaders').append(queryTblHeaders);
                            $('#timesheetContentBody').append(queryTblRows);
                            
                            }
                            $('#allTimesheetsDiv').toggle();
                        },
                        error: function (data) {
                            alert("An error occured trying upload file: \n" + JSON.parse(data));
                            $.loader.close(true);
                        }
                    });
                });
            });
            function statusAsString(status) {
                var val;
                switch (status) {
                    case 0:
                        val = 'New';
                        break;
                    case 1:
                        val = 'In Progress';
                        break;
                    case 2:
                        val = 'Completed';
                        break;
                    default:
                        val = 'N/A';
                        break;
                }
                return val;
            }
        </script>
    </body>
</html>

