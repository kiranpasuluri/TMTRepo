<%-- 
    Document   : add_system_modal
    Created on : 19 Jul 2017, 4:09:48 PM
    Author     : MaremaM
--%>
<div id="addNewSystemDialog" style="display: none">

    <div id="newSystemForm">
        <h3>System Details</h3>
        <hr>
        <div class="form-horizontal row-border">

            <div class="form-group">
                <label class="col-sm-3 control-label">System Name</label>
                <div class="col-sm-8">
                    <input id="txtSystemName" class="form-control" type="text" maxlength="500" required="true">
                </div>
            </div>

            <div class="form-group">
                <label class="col-sm-3 control-label">Description</label>
                <div class="col-sm-8">
                    <input  id="txtDescription" class="form-control" type="text" maxlength="500"></input>
                </div>
            </div>

            <input type="hidden" id="addId" class="form-control">
              <input type="hidden" id="addSystemId" class="form-control">
              
              <div class="form-group">
                <label class="col-sm-3 control-label">Server Name</label>
                <div class="col-sm-8">
                    <input id="addServerName" class="form-control" type="text" maxlength="500">
                </div>
              </div>
              
              <div class="form-group">
                <label class="col-sm-3 control-label">Database Name</label>
                <div class="col-sm-8">
                    <input  id="addDatabaseName" class="form-control" type="text" maxlength="500"></input>
                </div>
              </div>
              
              <div class="form-group">
                <label class="col-sm-3 control-label">Database Server Name</label>
                <div class="col-sm-8">
                    <input id="addDatabaseServerName" class="form-control" type="text" maxlength="500">
                </div>
              </div>
              
              <div class="form-group">
                <label class="col-sm-3 control-label">Operating System</label>
                <div class="col-sm-8">
                    <input id="addOPeratingSystem" class="form-control" type="text" maxlength="500">
                </div>
              </div>
                  
              <div class="form-group">
                <label class="col-sm-3 control-label">Hosting System</label>
                <div class="col-sm-8">
                    <input id="addHostingSystem" class="form-control" type="text" maxlength="500">
                </div>
              </div>
                  
              <div class="form-group">
                <label class="col-sm-3 control-label">Language</label>
                <div class="col-sm-8">
                    <input id="addLanguage" class="form-control" type="text" maxlength="500">
                </div>
              </div>
                    
              <div class="form-group">
                <label class="col-sm-3 control-label">API Documentation</label>
                <div class="col-sm-8">
                    <input id="addAPIDocumentation" class="form-control" type="text" maxlength="500">
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
                    <input id="addThirdParty" class="form-control" type="text">
                </div>
              </div>
                  
              <div class="form-group">
                <label class="col-sm-3 control-label">Frequency</label>
                <div class="col-sm-8">
                    <input id="addFrequency" class="form-control" type="number" maxlength="100"/>
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
                   <input id="addOpex" class="form-control" type="number" maxlength="13"/>
                </div>
              </div>
        </div>
        <p/>
        <div class="row">
            <div class="col-sm-8 col-sm-offset-4">
                <div class="btn-toolbar">
                    <button id="saveNewSystemBtn" class="btn-primary btn">Save</button>
                    <button id="cancelSystemBtn" class="btn-default btn">Cancel</button>
                </div>
            </div>
        </div>
    </div>

</div>