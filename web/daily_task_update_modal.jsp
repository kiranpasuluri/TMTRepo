
<div id="dailyTaskUpdateDialog" title="Daily Update" style="display:none;height:250px;">
    <div class="box-info" id="dailyTaskUpdateForm">
        <h3>Daily Update</h3>
        <hr>
        <!--form-horizontal row-border start-->
        <div class="form-horizontal row-border">
            <form id="dailyUpdateForm">
            <div class="form-group">
                <label class="col-sm-3 control-label">Task Name</label>
                <div class="col-sm-8">
                    <input id="dailyUpdateTaskNameTxt" class="form-control" disabled>
                </div>
            </div>

            <div class="form-group">
                <label class="col-sm-3 control-label">Task Description</label>
                <div class="col-sm-8">
                    <textarea id="dailyUpdateTaskDescTxt" class="form-control" disabled></textarea>
                </div>
            </div>

            <div class="form-group">
                <label class="col-sm-3 control-label">Task Status</label>
                <div class="col-sm-8">
                    <div class="">
                        <select id="dailyUpdateTaskStatusSelect" class="select2_single form-control" tabindex="-1">
                        </select>
                    </div>
                    <input id="dailyUpdateTaskStatusTxtHidden" type="hidden">
                </div>
            </div>
            <div class="form-group">
                <label class="col-sm-3 control-label">How many hours did you work on the task(*)</label>
                <div class="col-sm-8">
                    <input id="hoursWorkedTxt" class="form-control" type="number" required>
                    <label id="hoursWorkedmsg"></label>
                </div>
            </div>
            <div class="form-group">
                <label class="col-sm-3 control-label">Which date did you work on the task(*)</label>
                <div class="col-sm-8">
                    <input type="text" class="form-control" id="dailyUpdateDate" required>
                </div>
            </div>
            <div class="form-group">
                <label class="col-sm-3 control-label">Comment(*)</label>
                <div class="col-sm-8">
                    <textarea id="dailyUpdateCommentTxt" class="form-control" required></textarea>
                </div>
                
            </div>  
             </form>   
        </div>

    </div>
    <!--row start-->
    <div class="row">
        <div class="col-sm-8 col-sm-offset-4">
            <div class="btn-toolbar">
                <button id="saveDailyUpdateBtn" class="btn-primary btn" type="submit" form="dailyUpdateForm">Update</button>
                <button id="cancelDailyUpdateBtn" class="btn-default btn">Cancel</button>
            </div>
        </div>
    </div>
    <!--row end--> 
</div>
