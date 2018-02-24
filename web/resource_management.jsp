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
                <%@include file="navigation_menu.jsp"%>

                <div class="right_col" role="main">
                    <%@include file="top_navigation.jsp" %>
                    <div class="page-title">
                        <div class="title_left">
                            <h3>Resource Management</h3>
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
                                    <h2>Resources</h2>

                                    <div class="clearfix"></div>
                                </div>
                                <div id="searchResourcesDiv" class="x_content">

                                    <div col-md-12 col-sm-12 col-xs-12 form-group pull-right top_search>
                                        <div class="form-group">
                                            <div class="col-md-12 col-sm-12 col-xs-12 pull-left">
                                                <label class="col-sm-3 control-label">Search Type:</label>
                                                <div class="col-sm-8">
                                                    <select id="resourceSearchType" class="select2_single form-control">

                                                    </select>
                                                    <input id="txtResourceSearch" type="text" class="form-control" placeholder="Search for...">
                                                    <input id="txtResourceSearchHidden" value="" type="hidden">
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-md-2 col-sm-2 col-xs-2 pull-right">
                                            <div class="input-group col-md-12 col-sm-12 col-xs-12">

                                                <span class="input-group-btn">
                                                    <button id="btnResourceSearch" class="btn btn-default" type="button">Search</button>
                                                    <button id="btnResourceClear" class="btn btn-default" type="button">Clear</button>
                                                </span>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div id="allResourcesDiv" class="x_content" style="display: none">
                                    <table id="allResourcesTable"  cellpadding="0" cellspacing="0" border="0" class="table table-striped projects">
                                        <thead>
                                            <tr>
                                                <th style="width: 1%">#</th>
                                                <th style="width: 2%"></th>
                                                <th style="width: 20%">Name</th>
                                                <th style="width: 20%">Title</th>
                                                <th style="width: 20%">Department</th>
                                                <th style="width: 20%">#Edit</th>
                                            </tr>
                                        </thead>
                                        <tbody id="allResourcesContentBody">

                                    </table>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

        </div>
        <script src="../js/multiselect.js" ></script>
        <script src="../js/multiselect.min.js" ></script>
        <script src="../plugins/data-tables/jquery.dataTables.min.js"></script>
        <script src="../js/datatables/resources_data_table.js" type="text/javascript"></script>
        <script type="text/javascript">
            $(document).ready(function () {
                var search = JSON.stringify(${searchTypes});
                loadSearchTypes(search);


                $('#txtResourceSearch').devbridgeAutocomplete({
                    minChars: 3,
                    serviceUrl: 'resource_management/resource_search',
                    preventBadQueries: false,
                    zIndex: 2140000000,
                    type: 'POST',
                    params: {'searchType': function () {
                            return $('#resourceSearchType option:selected').text();
                        }},
                    showNoSuggestionNotice: true,
                    noSuggestionNotice: 'No Matching Names...',

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
                        $('#txtResourceSearchHidden').val(suggestion.data);
                    }
                });

                $("#btnResourceSearch").click(function (event) {
                    event.preventDefault();

                    $.ajax({
                        Accept: "application/json",
                        contentType: "application/json",
                        method: "GET",
                        url: "resource_management/search/" + $('#txtResourceSearch').val() + "/searchType/" + $('#resourceSearchType option:selected').text(),
                        data: JSON.stringify({name: $('#skillName').val()}),
                        dataType: 'json',
                        success: function (data) {
                            loadResourcesContentData(data);
                            $('#allResourcesDiv').toggle();
                        },
                        error: function (data) {
                            alert("An error occured trying upload file: \n" + JSON.parse(data));
                            $.loader.close(true);
                        }
                    });
                });
            });

            function loadSearchTypes(data) {
                $.each(JSON.parse(data), function (idx, val) {
                    $("#resourceSearchType").append("<option value='" + idx + "'>" + val + "</option>");
                });
            }
        </script>
    </body>
</html>
