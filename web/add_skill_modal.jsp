<%-- 
    Document   : add_skill_modal
    Created on : 17 Jul 2017, 1:26:04 PM
    Author     : MaremaM
--%>
<div id="skillDialog" title="Add Skill" style="display:none">
    
    <div class="box-info" id="skillDetailsForm">
              <h3>Skill Details</h3>
              <hr>
              <!--form-horizontal row-border start-->
              <div class="form-horizontal row-border">
              
                <div class="form-group">
                  <label class="col-sm-3 control-label">Name</label>
                  <div class="col-sm-8">
                      <textarea id="skillName" class="form-control"></textarea>
                  </div>
                </div>

              </div>
                  
              </div>
              <!--form-horizontal row-border end--> 
              <!--row start-->
              <div class="row">
                <div class="col-sm-8 col-sm-offset-4">
                  <div class="btn-toolbar">
                    <button id="saveSkillBtn" class="btn-primary btn">Save</button>
                    <button id="cancelSkillBtn" class="btn-default btn">Cancel</button>
                  </div>
                </div>
              </div>    
</div>
