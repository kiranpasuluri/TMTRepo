<%-- 
    Document   : add_resource_skill_modal
    Created on : 17 Jul 2017, 1:26:04 PM
    Author     : MaremaM
--%>
<div id="resourceSkillDialog" title="Add Skill" style="display:none">
    
       <div class="box-info" id="systemSkillDetailsForm">
        <h3>Skills</h3>
        <hr>
        <!--form-horizontal row-border start-->
        <div class="form-horizontal row-border">

            <div class="row">
                <div class="col-xs-5">
                    <select name="from[]" id="resourceSkillSearch" class="form-control" size="10" multiple="multiple">

                    </select>
                </div>

                <div class="col-xs-2">
                    <button type="button" id="res_right_All_1" class="btn btn-block"><i class="glyphicon glyphicon-forward"></i></button>
                    <button type="button" id="res_right_Selected_1" class="btn btn-block"><i class="glyphicon glyphicon-chevron-right"></i></button>
                    <button type="button" id="res_left_Selected_1" class="btn btn-block"><i class="glyphicon glyphicon-chevron-left"></i></button>
                    <button type="button" id="res_left_All_1" class="btn btn-block"><i class="glyphicon glyphicon-backward"></i></button>
                </div>

                <div class="col-xs-5">
                    <select name="to[]" id="resourceSkillSearch_to" class="form-control" size="10" multiple="multiple"></select>
                </div>

                <div class="col-xs-12 divider text-center">
                    <div class="col-xs-12 col-sm-4 emphasis">
                        <h2><strong></strong></h2>                    
                        <p><small></small></p>
                        <button id="updateResourceSkillBtn" class="btn-primary btn"><span class="fa fa-plus-circle"></span> Update Skills</button>
                    </div>
                    <div class="col-xs-12 col-sm-4 emphasis">
                        <h2><strong></strong></h2>                    
                        <p><small></small></p>
                        <button id="cancelResourceSkillBtn" class="btn-default btn"><span class="fa fa-plus-circle"></span> Cancel </button>
                    </div>
                </div>
            </div>
        </div>

    </div>
</div>
