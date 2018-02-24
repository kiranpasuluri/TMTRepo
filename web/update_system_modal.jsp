<%-- 
    Document   : add_system_modal
    Created on : 19 Jul 2017, 4:09:48 PM
    Author     : MaremaM
--%>
<div id="updateSystemDialog" style="display: none">

    <div id="updateSystemForm">
        <h3>System Details</h3>
        <hr>
        <div class="form-horizontal row-border">
            <input type="hidden" id="updateId" class="form-control">
            <input type="hidden" id="updateSystemId" class="form-control">

            <div class="form-group">
                <label class="col-sm-3 control-label">System Name</label>
                <div class="col-sm-8">
                    <input id="updateSystemName" class="form-control" type="text" maxlength="500" required="true">
                </div>
            </div>

            <div class="form-group">
                <label class="col-sm-3 control-label">Description</label>
                <div class="col-sm-8">
                    <input  id="updateDescription" class="form-control" type="text" maxlength="500"></input>
                </div>
            </div>

              <input type="hidden" id="txtId" class="form-control">
              <input type="hidden" id="txtSystemId" class="form-control">
              
              <div class="form-group">
                <label class="col-sm-3 control-label">Server Name</label>
                <div class="col-sm-8">
                    <input id="txtServerName" class="form-control" type="text" maxlength="500">
                </div>
              </div>
              
              <div class="form-group">
                <label class="col-sm-3 control-label">Database Name</label>
                <div class="col-sm-8">
                    <input  id="txtDatabaseName" class="form-control" type="text" maxlength="500"></input>
                </div>
              </div>
              
              <div class="form-group">
                <label class="col-sm-3 control-label">Database Server Name</label>
                <div class="col-sm-8">
                    <input id="txtDatabaseServerName" class="form-control" type="text" maxlength="500">
                </div>
              </div>
              
              <div class="form-group">
                <label class="col-sm-3 control-label">Operating System</label>
                <div class="col-sm-8">
                    <input id="txtOPeratingSystem" class="form-control" type="text" maxlength="500">
                </div>
              </div>
                  
              <div class="form-group">
                <label class="col-sm-3 control-label">Hosting System</label>
                <div class="col-sm-8">
                    <input id="txtHostingSystem" class="form-control" type="text" maxlength="500">
                </div>
              </div>
                  
              <div class="form-group">
                <label class="col-sm-3 control-label">Language</label>
                <div class="col-sm-8">
                    <input id="txtLanguage" class="form-control" type="text" maxlength="500">
                </div>
              </div>
                    
              <div class="form-group">
                <label class="col-sm-3 control-label">API Documentation</label>
                <div class="col-sm-8">
                    <input id="txtAPIDocumentation" class="form-control" type="text" maxlength="500">
                </div>
              </div>
                  
              <div class="form-group">
                <label class="col-sm-3 control-label">License Required</label>
                <div class="col-sm-8">
                    <input id="chLicenseRequired" class="form-control" type="checkbox">
                </div>
              </div>
               <div class="form-group">
                <label class="col-sm-3 control-label">Third Party</label>
                <div class="col-sm-8">
                    <input id="txtThirdParty" class="form-control" type="text">
                </div>
              </div>
                  
              <div class="form-group">
                <label class="col-sm-3 control-label">Frequency</label>
                <div class="col-sm-8">
                    <input id="txtFrequency" class="form-control" type="number" maxlength="100"/>
                </div>
              </div>
              
              <div class="form-group">
                <label class="col-sm-3 control-label">Capex</label>
                <div class="col-sm-8">
                   <input id="txtCapex" class="form-control" type="number" maxlength="13"/>
                </div>
              </div>
              <div class="form-group">
                <label class="col-sm-3 control-label">Opex</label>
                <div class="col-sm-8">
                   <input id="txtOpex" class="form-control" type="number" maxlength="13"/>
                </div>
              </div>
              <div class="form-group">
               <label class="col-sm-3 control-label">Skills</label>
                                                          <div id="updateSystemSkillsDiv">

                                            </div>
              </div>
              </div>
        <p/>
        <div class="row">
            <div class="col-sm-8 col-sm-offset-4">
                <div class="btn-toolbar">
                    <button id="updateSystemAttributesBtn" class="btn-primary btn">Update Skills</button>
                    <button id="updateSystemBtn" class="btn-primary btn">Update System</button>
                    <button id="cancelUpdateSystemBtn" class="btn-default btn">Cancel</button>
                </div>
            </div>
        </div>
    </div>

</div>