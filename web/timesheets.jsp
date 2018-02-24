<%-- 
    Document   : resource_management
    Created on : 20 Jul 2017, 11:56:56 AM
    Author     : MaremaM
--%>
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
                            <h3>Timesheet Management</h3>
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
                                    <h2>Timesheets</h2>

                                    <div class="clearfix"></div>
                                </div>
                                <div id="searchResourcesDiv" class="x_content">

                                    <div col-md-12 col-sm-12 col-xs-12 form-group pull-right top_search>
                                        <div class="form-group">
                                            <div class="col-md-12 col-sm-12 col-xs-12 pull-left">
                                                <label class="col-sm-3 control-label">Project:</label>
                                                <div class="col-sm-8">
                                                    <input id="projectTxt" type="text" class="form-control" placeholder="Search for project">
                                                    <input id="projectTxtHidden" value="" type="hidden">
                                                </div>
                                            </div>
                                            <div class="col-md-12 col-sm-12 col-xs-12 pull-left">
                                                <label class="col-sm-3 control-label">Resource:</label>
                                                <div class="col-sm-8">
                                                    <input id="resourceTxt" type="text" class="form-control" placeholder="Search for resource" disabled>
                                                    <input id="resourceTxtHidden" value="" type="hidden">
                                                </div>
                                            </div>
                                            <div class="col-md-12 col-sm-12 col-xs-12 pull-left">
                                                <label class="col-sm-3 control-label">Period:</label>
                                                <div class="col-sm-8">
                                                    <select id="period" class="select2_single form-control">
<!--                                                      <option value="0">Weekly</option>-->
                                                      <option value="1">Monthly</option> 
                                                      <option value="2">Other</option> 
                                                    </select>
                                                </div>
                                            </div>
                                            <div id="fromDateDiv" class="col-md-12 col-sm-12 col-xs-12 pull-left" style="display: none">
                                                <label class="col-sm-3 control-label">From Date:</label>
                                                <div class="col-md-8">
                                                    <fieldset>
                                                        <div class="control-group">
                                                            <div class="controls">
                                                                <div class="col-md-11 xdisplay_inputx form-group has-feedback">
                                                                    <input type="text" class="form-control has-feedback-left" id="fromDate" aria-describedby="inputSuccess2Status3" style="margin-left:-10px;">
                                                                    <span class="fa fa-calendar-o form-control-feedback left" aria-hidden="false"></span>
                                                                    <span id="inputSuccess2Status3" class="sr-only">(success)</span>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </fieldset>
                                                </div>
                                            </div>
                                            <div id="toDateDiv" class="col-md-12 col-sm-12 col-xs-12 pull-left" style="display: none">
                                                <label class="col-sm-3 control-label">To Date:</label>
                                                <div class="col-md-8">
                                                    <fieldset>
                                                        <div class="control-group">
                                                            <div class="controls">
                                                                <div class="col-md-11 xdisplay_inputx form-group has-feedback">
                                                                    <input type="text" class="form-control has-feedback-left" id="toDate" aria-describedby="inputSuccess" style="margin-left:-10px;">
                                                                    <span class="fa fa-calendar-o form-control-feedback left" aria-hidden="false"></span>
                                                                    <span id="inputSuccess" class="sr-only">(success)</span>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </fieldset>
                                                </div>
                                            </div>
                                            <div id="yearDiv" class="col-md-12 col-sm-12 col-xs-12 pull-left" style="display: none">
                                                <label class="col-sm-3 control-label">Year:</label>
                                                <div class="col-md-8">
                                                    <input type="text" id="year" class="form-control" data-calendar="false">
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
            $("#resourceTxt").prop('disabled', false);
            var username = '<%=loginData.getUsername()%>';
            var role = '<%=loginData.getRole().getId()%>';
            var fullname = '<%=fullUserName%>';
            if (role === '46' || role === '6' || role === '45') {
                $('#resourceTxt').val(fullname);
                $('#resourceTxtHidden').val(username);
                $("#resourceTxt").prop('disabled', true);
            }
            $('#yearDiv').show();
            $('#toDateDiv').hide();
            $('#fromDateDiv').hide();
            
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
			var month = parseInt($("#ui-datepicker-div .ui-datepicker-month :selected").val()) + parseInt(1);
                        var year = $("#ui-datepicker-div .ui-datepicker-year :selected").val();;
                        $("#fromDate").val(year + '/' + month + '/' + '01');
                        var lastDay = new Date(year, month, 0);
                        $("#toDate").val(year + '/' + month + '/' + lastDay.getDate());
			$(this).datepicker("setDate", new Date(year, month, null));
		}
            }, function(start, end, label) {
                console.log(start.toISOString(), end.toISOString(), label);
              });
            $("#fromDate").datepicker({
                dateFormat: 'yy/mm/dd',
                singleDatePicker: true,
                singleClasses: "picker_3",
                locale: {
                  format: 'yy/mm/dd'
                }
              }, function(start, end, label) {
                console.log(start.toISOString(), end.toISOString(), label);
              });
            $("#toDate").datepicker({
                dateFormat: 'yy/mm/dd',
                singleDatePicker: true,
                singleClasses: "picker_3",
                maxDate: new Date(),
                locale: {
                    format: 'yy/mm/dd'
            }
            }, function(start, end, label) {
            });

        $('#projectTxt').devbridgeAutocomplete({
            minChars: 2,
            serviceUrl: '../project',
            preventBadQueries: false,
            zIndex:2147483647,
            type: 'POST',
            showNoSuggestionNotice: true,
            noSuggestionNotice: 'No Matching Names - Please use ask admistrator to add project"',
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
                $('#projectTxtHidden').val(suggestion.data);
            }
        });
        
        $('#resourceTxt').devbridgeAutocomplete({
            minChars: 2,
            serviceUrl: '../resource',
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
                $('#resourceTxtHidden').val(suggestion.data);
            }
        });

        $('#period').on('change', function() {
            if(this.value === '1'){
                $('#fromDateDiv').hide();
                $('#toDateDiv').hide();
                $('#yearDiv').show();
            }
            if(this.value === '2'){
                $('#fromDateDiv').show();
                $('#toDateDiv').show();
                $('#yearDiv').hide();
            }
            if(this.value === '0'){
                $('#fromDateDiv').show();
                $('#toDateDiv').hide();
                $('#yearDiv').hide();
            }
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
                        url: "../project/timesheet",
                        data: JSON.stringify({projectName: $('#projectTxt').val(),
                                              fromDate : $('#fromDate').val(),
                                              toDate: $('#toDate').val(),
                                              resourceName: $('#resourceTxtHidden').val()}),
                        dataType: 'json',
                        success: function (data) {
                            console.log(data);
                            var queryTblHeaders = '';
                            var queryTblRows = '';
                            $('#timesheetHeaders').empty();
                            $('#timesheetContentBody').empty();
                            $('#duration').empty();
                            if(data.projects.length === 0){
                                $('#duration').append('No data found...');
                            } else{
                            $('#duration').append('Timesheet from ' + $('#fromDate').val() + " to " + $('#toDate').val());
                            queryTblHeaders+="<tr>" +
                                "<th style=\"width: 3%\">#</th>" +
                                "<th style=\"width: 10%\">Project</th>" +
                                "<th style=\"width: 2%\">Fin. Year</th>" +
                                "<th style=\"width: 2%\">Week</th>" +
                                "<th style=\"width: 10%\">Resource</th>" +
                                "<th style=\"width: 2%\">Monday</th>"+
                                "<th style=\"width: 2%\">Tuesday</th>"+
                                "<th style=\"width: 2%\">Wednesday</th>"+
                                "<th style=\"width: 2%\">Thursday</th>"+
                                "<th style=\"width: 2%\">Friday</th>"+
                                "<th style=\"width: 2%\">Saturday</th>"+
                                "<th style=\"width: 2%\">Sunday</th>"+
                                "<th style=\"width: 5%\">Total</th>";
                            queryTblHeaders+="</tr>";
                            
                            for(p = 0; p < data.projects.length; p++){
                                var table1 = '';
                                var table2 = '';
                                var times = '';

                                queryTblRows += "<tr style=\"outline: thin solid\"><td></td>" +
                                    "<td><b>" + data.projects[p].name + "</b></td>" +
                                    "<td><b>" + data.projects[p].financialYearHours + "</b></td>" +
                                    "<td>";
                                    table1 += "<table style=\"width: -webkit-fill-available\">";
                                    var table3 = '';
                                    var table4 = '';
                                    var table5 = '';
                                    var table6 = '';
                                    var table7 = '';
                                    var table8 = '';
                                    var table9 = '';
                                    var table10 = '';

                                    for(d = 0; d < data.dates.length; d++){
                                        
                                        table1 +="<tr style=\"outline: thin solid\"><td><b>" + data.dates[d].weekNumber + "</b></td></tr>";
                                        table2 += "<table style=\"width: -webkit-fill-available\">";
                                        table3 += '<table style=\"width: -webkit-fill-available\">';
                                        table4 += '<table style=\"width: -webkit-fill-available\">';
                                        table5 += '<table style=\"width: -webkit-fill-available\">';
                                        table6 += '<table style=\"width: -webkit-fill-available\">';
                                        table7 += '<table style=\"width: -webkit-fill-available\">';
                                        table8 += '<table style=\"width: -webkit-fill-available\">';
                                        table9 += '<table style=\"width: -webkit-fill-available\">';
                                        table10 += '<table style=\"width: -webkit-fill-available\">';
                                        
                                        for(idx = 0; idx < data.projects[p].resources.length; idx++) {
                                            var total = 0;
                                            var tables = [];
                                            table2+="<tr style=\"outline: thin solid\"><td><b>" + data.projects[p].resources[idx].fullnames + "</b></td></tr>";
                                            for(k=0; k<data.dates[d].weeklyTimesheets.length; k++)
                                            {
                                                var hours = 0;
                                                for(i = 0; i < data.projects[p].resources[idx].updates.length; i++){
                                                    if(data.dates[d].weeklyTimesheets[k].date === data.projects[p].resources[idx].updates[i].updateDate){
                                                        hours = data.projects[p].resources[idx].updates[i].hoursWorked;
                                                    }
                                                }
                                                tables.push("<tr style=\"outline: thin solid\"><td>" + hours + "</td></tr>");
                                                total += hours;
                                            }
                                            var count = data.dates[d].weeklyTimesheets.length;
                                 
                                            if(count < 7){
                                                for(; count < 7; count++) {
                                                    tables.push("<tr style=\"outline: thin solid\"><td>" + 0 + "</td></tr>");
                                                }
                                            }
                                            tables.push("<tr style=\"outline: thin solid\"><td><b>" + total + "</b></td></tr>");

                                            table3 += tables[0];
                                            table4 += tables[1];
                                            table5 += tables[2];
                                            table6 += tables[3];
                                            table7 += tables[4];
                                            table8 += tables[5];
                                            table9 += tables[6];
                                            table10 += tables[7];
                                            
                                        }
                                        table2 +="</table>";
                                        table3 += '</table>';
                                        table4 += '</table>';
                                        table5 += '</table>';
                                        table6 += '</table>';
                                        table7 += '</table>';
                                        table8 += '</table>';
                                        table9 += '</table>';
                                        table10 += '</table>';
                                        
                                    }
                                    times += "<td>" + table3 + "</td>" + "<td>" + table4 + "</td>" + "<td>" + table5 + "</td>" + "<td>" + table6 + "</td>" + "<td>" +
                                            table7 + "</td>" + "<td>" + table8 + "</td>" + "<td>" + table9 + "</td>" + "<td>" + table10 + "</td>";
                                    queryTblRows += table1 + "</table></td>";
                                    queryTblRows += "<td>" + table2 + "</td>";
                                    queryTblRows += times;
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

//            function loadResourcesContentData(timesheet) {
//                console.log('Timesheet object: ' + timesheet);
//                var data = JSON.stringify(timesheet);
//                console.log('Data object: ' + data);
//                var queryTblRows = '';
//                for(idx = 0; idx < data.resources.length; idx++){
//                    queryTblRows = "<tr>" +
//                                   "<td>" + idx + "</td>" +
//                                   "<td>" + data.project.name + "</td>" +
//                                   "<td>" + data.resources[idx].fullnames + "</td>" +
//                                   "<td></td>" +
//                                   "<td>8</td>" +
//                                   "<td>8</td>" +
//                                   "<td>8</td>" +
//                                   "<td>8</td>" +
//                                   "<td>8</td>" +
//                                   "<td>0</td>" +
//                                   "<td>0</td>" +
//                                   "<td><b>40</b></td>" +
//                                   "</tr>";
//                }
//                return queryTblRows;
//            }
        </script>
    </body>
</html>
