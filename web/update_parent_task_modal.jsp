<div id="updateParentTaskDialog" title="Update Task" style="display:none">
    
    <div class="box-info" id="updateTaskDetailsForm">
              <h3>Task Details</h3>
              <hr>
              <!--form-horizontal row-border start-->
              <div class="form-horizontal row-border">
              
                  <div class="form-group">
                  <label class="col-sm-3 control-label">name</label>
                  <div class="col-sm-8">
                      <input id="updateTaskNameTxt" class="form-control">
                  </div>
                </div>
                  
                <div class="form-group">
                  <label class="col-sm-3 control-label">Description</label>
                  <div class="col-sm-8">
                      <textarea id="updateTaskDescTxt" class="form-control"></textarea>
                  </div>
                </div>
                  
                <div class="form-group">
                  <label class="col-sm-3 control-label">Status</label>
                  <div class="col-sm-8">
                      <div>
                          <select id="updateStatusSelect" class="select2_single form-control" tabindex="-1">
                          </select>
                        </div>
                  </div>
                </div>
                  
                <div class="form-group">
                  <label class="col-sm-3 control-label">Assignee</label>
                  <div class="col-sm-8">
                      <input id="updateResourceTxt" type="text" class="form-control">
                      <input id="updateResourceTxtHidden" type="hidden">
                  </div>
                </div>
                  
                <div class="form-group">
                  <label class="col-sm-3 control-label">Severity</label>
                  <div class="col-sm-8">
                      <div>
                          <select id="updateSeveritySelect" class="select2_single form-control" tabindex="-1">
                          </select>
                        </div>
                  </div>
                </div>
                  
                <div class="form-group">
                  <label class="col-sm-3 control-label">Priority</label>
                  <div class="col-sm-8">
                      <div>
                          <select id="updatePrioritySelect" class="select2_single form-control" tabindex="-1">
                          </select>
                        </div>
                  </div>
                </div>
                  
              <div class="form-group">
                  <label class="col-sm-3 control-label">Comments</label>
                  <div class="col-sm-8">
                      <textarea id="updateTaskComment" class="form-control"></textarea>
                  </div>
                </div>
              </div>

              </div>
              <!--form-horizontal row-border end--> 
              <!--row start-->
              <div class="row">
                <div class="col-sm-8 col-sm-offset-4">
                  <div class="btn-toolbar">
                    <button id="updateTaskBtn" class="btn-primary btn">Save</button>
                    <button id="cancelUpdateTaskBtn" class="btn-default btn">Cancel</button>
                  </div>
                </div>
              </div>
   
</div>