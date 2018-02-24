<div id="subTaskDialog" title="Update Task" style="display:none">
    
    <div class="box-info" id="subTaskDetailsForm">
              <h3>Task Details</h3>
              <hr>
              <!--form-horizontal row-border start-->
              <div class="form-horizontal row-border">
              
                  <div class="form-group">
                  <label class="col-sm-3 control-label">Task Name</label>
                  <div class="col-sm-8">
                      <input id="updateSubTaskNameTxt" class="form-control">
                      <input id="updateSubTaskParentHidden" class="form-control" type="hidden">
                  </div>
                </div>
                  
                <div class="form-group">
                  <label class="col-sm-3 control-label">Task Description</label>
                  <div class="col-sm-8">
                      <textarea id="updateSubTaskDescTxt" class="form-control"></textarea>
                  </div>
                </div>
                  
                <div class="form-group">
                  <label class="col-sm-3 control-label">Estimate</label>
                  <div class="col-sm-4">
                      <input placeholder="Days" id="updateSubTaskEstimateDays" class="form-control">
                      <label>/Days</label>
                  </div><div class="col-sm-4">
                      <input placeholder="Hours per day" id="updateSubTaskEstimateHours" class="form-control">
                      <label>/Days</label>
                  </div>
                </div>
                  
                <div class="form-group">
                  <label class="col-sm-3 control-label">Task Status</label>
                  <div class="col-sm-8">
                      <div class="">
                          <select id="updateSubTaskStatusSelect" class="select2_single form-control" tabindex="-1">
                          </select>
                        </div>
                      <input id="updateSubTaskStatusTxtHidden" type="hidden">
                  </div>
                </div>
                  
                <div class="form-group">
                  <label class="col-sm-3 control-label">Assignee</label>
                    <div class="col-sm-8">
                      <input id="updateAssigneeTxt" class="form-control" type="text">
                      <input id="updateAssigneeTxtHidden" type="hidden">
                  </div>
                </div>
                                 
                <div class="form-group">
                  <label class="col-sm-3 control-label">Severity</label>
                  <div class="col-sm-8">
                      <div class="">
                          <select id="updateSubTaskSeverity" class="select2_single form-control" tabindex="-1">
                          </select>
                        </div>
                      <input id="updateSubTaskSeverityTxtHidden" type="hidden">
                  </div>
                </div>
                  
                <div class="form-group">
                  <label class="col-sm-3 control-label">Priority</label>
                  <div class="col-sm-8">
                      <div class="">
                          <select id="updateSubTaskPriority" class="select2_single form-control" tabindex="-1">
                          </select>
                        </div>
                      <input id="updateSubTaskPriorityTxtHidden" type="hidden">
                  </div>
                </div>
                  
                <div class="form-group">
                  <label class="col-sm-3 control-label">Comments</label>
                  <div class="col-sm-8">
                      <textarea id="updateSubTaskComment" class="form-control"></textarea>
                  </div>
                </div>
              </div>
                  
              <!--form-horizontal row-border end--> 
              <!--row start-->
              <div class="row">
                <div class="col-sm-8 col-sm-offset-4">
                  <div class="btn-toolbar">
                    <button id="updateSubTaskBtn" class="btn-primary btn">Update Task</button>
                    <button id="cancelSubTaskUpdateBtn" class="btn-default btn">Cancel</button>
                  </div>
                </div>
              </div>
              <!--row end-->  
    
</div>