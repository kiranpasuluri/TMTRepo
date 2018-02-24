<div id="updateTaskDialog" title="Add Task" style="display:none">
    
    <div class="box-info" id="taskDetailsForm">
              <h3>Task Details</h3>
              <hr>
              <!--form-horizontal row-border start-->
                <div class="form-horizontal row-border">
              
                  <div class="form-group">
                  <label class="col-sm-3 control-label">Task Name</label>
                  <div class="col-sm-8">
                      <input id="addSubTaskNameTxt" class="form-control">
                  </div>
                </div>
                  
                <div class="form-group">
                  <label class="col-sm-3 control-label">Task Description</label>
                  <div class="col-sm-8">
                      <textarea id="addSubTaskDescTxt" class="form-control"></textarea>
                  </div>
                </div>
                  
                <div class="form-group">
                  <label class="col-sm-3 control-label">Estimate</label>
                  <div class="col-sm-4">
                      <input placeholder="Days" id="addSubTaskEstimateDay" class="form-control">
                      <label>/Days</label>
                  </div><div class="col-sm-4">
                      <input placeholder="Hours per day" id="addSubTaskEstimateHour" class="form-control">
                      <label>/Hours</label>
                  </div>
                </div>
                  
                <div class="form-group">
                  <label class="col-sm-3 control-label">Task Status</label>
                  <div class="col-sm-8">
                      <div class="">
                          <select id="addSubTaskStatusSelect" class="select2_single form-control" tabindex="-1">
                          </select>
                        </div>
                      <input id="addSubTaskStatusTxtHidden" type="hidden">
                  </div>
                </div>
                  
                <div class="form-group">
                  <label class="col-sm-3 control-label">Assignee</label>
                    <div class="col-sm-8">
                      <input id="assigneeTxt" class="form-control" type="text">
                      <input id="assigneeTxtHidden" type="hidden">
                  </div>
                </div>
                                 
                <div class="form-group">
                  <label class="col-sm-3 control-label">Severity</label>
                  <div class="col-sm-8">
                      <div class="">
                          <select id="addSubTaskSeverity" class="select2_single form-control" tabindex="-1">
                          </select>
                        </div>
                      <input id="addSubTaskSeverityTxtHidden" type="hidden">
                  </div>
                </div>
                  
                <div class="form-group">
                  <label class="col-sm-3 control-label">Priority</label>
                  <div class="col-sm-8">
                      <div class="">
                          <select id="addSubTaskPriority" class="select2_single form-control" tabindex="-1">
                          </select>
                        </div>
                      <input id="addSubTaskPriorityTxtHidden" type="hidden">
                  </div>
                </div>
                  
                <div class="form-group">
                  <label class="col-sm-3 control-label">Comments</label>
                  <div class="col-sm-8">
                      <textarea id="addSubTaskComment" class="form-control"></textarea>
                  </div>
                </div>
              </div>
                  
              </div>
              <!--form-horizontal row-border end--> 
              <!--row start-->
              <div class="row">
                <div class="col-sm-8 col-sm-offset-4">
                  <div class="btn-toolbar">
                    <button id="saveSubTaskBtn" class="btn-primary btn">Add Task</button>
                    <button id="cancelSubTaskBtn" class="btn-default btn">Cancel</button>
                  </div>
                </div>
              </div>
              <!--row end-->  
    
</div>