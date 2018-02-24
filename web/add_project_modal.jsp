<div id="createPortfolioDialog" title="New Project" style="display:none">
    
    <div class="box-info" id="projectDetailsForm">
              <h3>Project Details</h3>
              <hr>
              <!--form-horizontal row-border start-->
              <div class="form-horizontal row-border">
                  
                   <div class="form-group">
                       <label class="col-sm-3 control-label">Parent</label>
                        <div class="col-sm-8">
                            <select id="projectParentOpt" class="select2_single form-control">
                                <option selected="selected" value="0">None</option> 
                            </select>
                        </div>
                   </div>
                   <div class="form-group">
                        <label class="col-sm-3 control-label">Status</label>
                        <div class="col-sm-8">
                            <select id="projectStatus" class="select2_single form-control" >
                                <option selected="selected" value="0" >New</option>
                                <option value="1">Start</option>
                                <option value="2">Park</option>
                            </select>
                        </div>
                </div>
              <div class="form-group">
                <label class="col-sm-3 control-label">Strategic Pillar</label>
                <div class="col-sm-8">
                    <select id="pillarOpt" class="select2_single form-control resourceSystemClass" selectedIndex="-1"></select>
                </div>
              </div>
                  
              <div class="form-group">
                <label class="col-sm-3 control-label">Project Name</label>
                <div class="col-sm-8">
                    <input id="projectNameTxt" class="form-control" type="text" maxlength="50">
                </div>
              </div>
              
              <div class="form-group">
                <label class="col-sm-3 control-label">Description</label>
                <div class="col-sm-8">
                    <textarea id="descTxt" class="form-control"></textarea>
                </div>
              </div>
              
              <div class="form-group">
                <label class="col-sm-3 control-label">Business Owner</label>
                <div class="col-sm-8">
                    <input id="businessOwnerTxt" class="form-control" type="text">
                    <input id="businessOwnerTxtHidden" type="hidden">
                    <input id="businessOwnerEmailHidden" type="hidden">
                </div>
              </div>
              
              <div class="form-group">
                <label class="col-sm-3 control-label">Project Owner</label>
                <div class="col-sm-8">
                    <input id="ownerTxt" class="form-control" type="text">
                    <input id="ownerTxtHidden" type="hidden">
                    <input id="ownerEmailHidden" type="hidden">
                </div>
              </div>
              
              <div class="form-group">
                <label class="col-sm-3 control-label">Project Manager</label>
                <div class="col-sm-8">
                    <input id="managerTxt" class="form-control" type="text">
                    <input id="managerTxtHidden" type="hidden">
                    <input id="managerEmailHidden" type="hidden">
                </div>
              </div>
              
              <div class="form-group">
                <label class="col-sm-3 control-label">Expected Date</label>
                <div class="col-md-8">
                 <fieldset>
                   <div class="control-group">
                     <div class="controls">
                       <div class="col-md-11 xdisplay_inputx form-group has-feedback">
                         <input type="text" class="form-control has-feedback-left" id="cal_with_day_plus_one" placeholder="Date Picker" aria-describedby="inputSuccess2Status3" style="margin-left:-10px;">
                         <span class="fa fa-calendar-o form-control-feedback left" aria-hidden="false"></span>
                         <span id="inputSuccess2Status3" class="sr-only">(success)</span>
                       </div>
                     </div>
                   </div>
                 </fieldset>
               </div>
              </div>  
                  
              <div class="form-group">
                <label class="col-sm-3 control-label">Priority</label>
                <div class="col-sm-8">
                    <input id="priorityTxt" class="form-control" type="text" value="3">
                </div>
              </div>
                  
              <div class="form-group">
                <label class="col-sm-3 control-label">New Revenue expected</label>
                <div class="col-sm-8">
                    <input id="revenueTxt" class="form-control" type="text" data-thousands="," data-decimal="." data-prefix="R" maxlength="13">
                </div>
              </div>
                  
              <div class="form-group">
                <label class="col-sm-3 control-label">New usage expected</label>
                <div class="col-sm-8">
                    <input id="usageTxt" class="form-control" type="number">
                </div>
              </div>
                  
              <div class="form-group col-sm-12 col-md-12 col-xs-12">
                  <div class="col-md-3 col-sm-3 col-xs-3 pull-left"></div>
                  <div class="col-md-4 col-sm-4 col-xs-4 pull-left">
                        <label class="col-sm-3 control-label">Capex</label>
                        <div class="col-sm-8 col-md-8 col-xs-8">
                          <input id="capexTxt" class="form-control" type="text" data-thousands="," data-decimal="." data-prefix="R" maxlength="13">
                        </div>
                  </div>
                  <div class="col-md-4 col-sm-4 col-xs-4 pull-left">
                        <label class="col-sm-3 control-label">Opex</label>
                        <div class="col-sm-8 col-md-8 col-xs-8">
                           <input id="opexTxt" class="form-control" type="text" data-thousands="," data-decimal="." data-prefix="R" maxlength="13">
                        </div>
                  </div>
              </div>
              
              <div class="form-group">
                  <label class="col-sm-3 control-label">Add Files</label>
                    <div class="col-md-8 col-sm-8 col-xs-12">
                    <div class="x_panel">
                      <div class="x_content">
                          <form id="fileupload" name="fileupload" role="form" class="form-horizontal" action="" method="POST" enctype="multipart/form-data">
                            <div class="col-lg-6">
                                <input type="file" name="fileInputCont" id="inputFile" class="file-pos">
                            </div>
                          </form>
                    </div>
                  </div>
              </div>
              </div>
                  
              </div>
              <!--form-horizontal row-border end--> 
              <!--row start-->
              <div class="row">
                <div class="col-sm-8 col-sm-offset-4">
                  <div class="btn-toolbar">
                    <button id="saveProjectBtn" class="btn-primary btn">Add Project</button>
                    <button id="cancelProjectBtn" class="btn-default btn">Cancel</button>
                  </div>
                </div>
              </div>
              <!--row end--> 
            </div>
    
</div>