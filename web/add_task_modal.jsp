<div id="taskDialog" title="Add Task" style="display:none">
    
    <div class="box-info" id="taskDetailsForm">
              <h3>Task Details</h3>
              <hr>
              <!--form-horizontal row-border start-->
              <div class="form-horizontal row-border">
              
                  <div class="form-group">
                  <label class="col-sm-3 control-label">Name</label>
                  <div class="col-sm-8">
                      <input id="taskNameTxt" class="form-control">
                  </div>
                </div>
                  
                <div class="form-group">
                  <label class="col-sm-3 control-label">Description</label>
                  <div class="col-sm-8">
                      <textarea id="taskDescTxt" class="form-control"></textarea>
                  </div>
                </div>
                  
                <div class="form-group">
                  <label class="col-sm-3 control-label">Status</label>
                  <div class="col-sm-8">
                      <div>
                          <select id="statusSelect" class="select2_single form-control" tabindex="-1">
                          </select>
                        </div>
                      <input id="statusTxtHidden" type="hidden">
                  </div>
                </div>
                  
                <div class="form-group">
                  <label class="col-sm-3 control-label">Assignee</label>
                  <div class="col-sm-8">
                      <input id="resourceTxt" type="text" class="form-control">
                      <input id="resourceTxtHidden" type="hidden">
                      <input id="resourceEmailHidden" type="hidden">
                  </div>
                </div>
                  
                <div class="form-group">
                  <label class="col-sm-3 control-label">Severity</label>
                  <div class="col-sm-8">
                      <div>
                          <select id="severitySelect" class="select2_single form-control" tabindex="-1">
                          </select>
                        </div>
                      <input id="severityTxtHidden" type="hidden">
                  </div>
                </div>
                  
                <div class="form-group">
                  <label class="col-sm-3 control-label">Priority</label>
                  <div class="col-sm-8">
                      <div>
                          <select id="prioritySelect" class="select2_single form-control" tabindex="-1">
                          </select>
                        </div>
                      <input id="priorityTxtHidden" type="hidden">
                  </div>
                </div>
                  
              <div class="form-group">
                  <label class="col-sm-3 control-label">Comments</label>
                  <div class="col-sm-8">
                      <textarea id="taskComment" class="form-control"></textarea>
                  </div>
                </div>
              </div>

              </div>
              <!--form-horizontal row-border end--> 
              <!--row start-->
              <div class="row">
                <div class="col-sm-8 col-sm-offset-4">
                  <div class="btn-toolbar">
                    <button id="saveTaskBtn" class="btn-primary btn">Add Task</button>
                    <button id="cancelTaskBtn" class="btn-default btn">Cancel</button>
                  </div>
                </div>
              </div>
              <!--row end-->  
    
</div>