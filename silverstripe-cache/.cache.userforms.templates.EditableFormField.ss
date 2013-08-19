<?php
$val .= '<!-- JS Relys on EditableFormField as a class - and the 3 ids in this order - do not change -->
<li class="';

$val .= $scope->XML_val('ClassName', null, true);
$val .= ' EditableFormField" id="';

$val .= $scope->obj('Name', null, true)->XML_val('ATT', null, true);
$val .= ' EditableItem_';

$val .= $scope->XML_val('Pos', null, true);
$val .= ' ';

$val .= $scope->XML_val('Name', null, true);
$val .= '">
	<div class="fieldInfo">
		';

if ($scope->hasValue('canEdit', null, true)) { 
$val .= '
			<img class="fieldHandler" src="';

$val .= $scope->XML_val('ModulePath', array('framework'), true);
$val .= '/images/drag.gif" alt="';

$val .= _t($scope->XML_val('I18NNamespace').'.DRAG','Drag to rearrange order of fields');
$val .= '" />
		';


}else { 
$val .= '
			<img class="fieldHandler" src="';

$val .= $scope->XML_val('ModulePath', array('framework'), true);
$val .= '/images/drag_readonly.gif" alt="';

$val .= _t($scope->XML_val('I18NNamespace').'.LOCKED','These fields cannot be modified');
$val .= '" />
		';


}
$val .= '
	
		<img class="icon" src="';

$val .= $scope->XML_val('Icon', null, true);
$val .= '" alt="';

$val .= $scope->XML_val('ClassName', null, true);
$val .= '" title="';

$val .= $scope->XML_val('singular_name', null, true);
$val .= '" />
	
		';

$val .= $scope->XML_val('TitleField', null, true);
$val .= '
	</div>
	
	<div class="fieldActions">
		';

if ($scope->hasValue('showExtraOptions', null, true)) { 
$val .= '
			<a class="moreOptions" href="' . (SSViewer::$options['rewriteHashlinks'] ? strip_tags( $_SERVER['REQUEST_URI'] ) : "") . '#" title="';

$val .= _t($scope->XML_val('I18NNamespace').'.SHOWOPTIONS','Show Options');
$val .= '">';

$val .= _t($scope->XML_val('I18NNamespace').'.SHOWOPTIONS','Show Options');
$val .= '</a>
		';


}
$val .= '
		
		';

if ($scope->hasValue('canDelete', null, true)) { 
$val .= '
			<a class="delete" href="' . (SSViewer::$options['rewriteHashlinks'] ? strip_tags( $_SERVER['REQUEST_URI'] ) : "") . '#" title="';

$val .= _t($scope->XML_val('I18NNamespace').'.DELETE','Delete');
$val .= '">';

$val .= _t($scope->XML_val('I18NNamespace').'.DELETE','Delete');
$val .= '</a>
		';


}
$val .= ' 	
	</div>
	
	';

if ($scope->hasValue('showExtraOptions', null, true)) { 
$val .= '
		<div class="extraOptions hidden" id="';

$val .= $scope->obj('Name', null, true)->XML_val('ATT', null, true);
$val .= '-extraOptions">
			';

if ($scope->hasValue('HasAddableOptions', null, true)) { 
$val .= '
				<fieldset class="fieldOptionsGroup">
					<legend>';

$val .= _t($scope->XML_val('I18NNamespace').'.OPTIONS','Options');
$val .= '</legend>
					<ul class="editableOptions" id="';

$val .= $scope->obj('FieldName', null, true)->XML_val('ATT', null, true);
$val .= '-list">

						';

if ($scope->hasValue('canEdit', null, true)) { 
$val .= '
							';

$scope->obj('Options', null, true); $scope->pushScope(); while (($key = $scope->next()) !== false) {
$val .= '
								';

$val .= $scope->XML_val('EditSegment', null, true);
$val .= '
							';


}; $scope->popScope(); 
$val .= '
							';

if ($scope->hasValue('HasAddableOptions', null, true)) { 
$val .= '
								<li class="';

$val .= $scope->XML_val('ClassName', null, true);
$val .= 'Option">
									<a href="' . (SSViewer::$options['rewriteHashlinks'] ? strip_tags( $_SERVER['REQUEST_URI'] ) : "") . '#" rel="';

$val .= $scope->XML_val('ID', null, true);
$val .= '" class="addableOption" title="';

$val .= _t($scope->XML_val('I18NNamespace').'.ADD','Add option to field');
$val .= '">
										Add Option
									</a>
								</li>
							';


}
$val .= '
						';


}else { 
$val .= '
							';

$scope->obj('Options', null, true); $scope->pushScope(); while (($key = $scope->next()) !== false) {
$val .= '
								';

$val .= $scope->XML_val('ReadonlyOption', null, true);
$val .= '
							';


}; $scope->popScope(); 
$val .= '
						';


}
$val .= '
					</ul>
				</fieldset>
			';


}
$val .= '
			
			';

if ($scope->hasValue('FieldConfiguration', null, true)) { 
$val .= '
				<fieldset class="fieldOptionsGroup">
					<legend>';

$val .= _t($scope->XML_val('I18NNamespace').'.FIELDCONFIGURATION','Field Configuration');
$val .= '</legend>
					';

$scope->obj('FieldConfiguration', null, true); $scope->pushScope(); while (($key = $scope->next()) !== false) {
$val .= '
						';

$val .= $scope->XML_val('FieldHolder', null, true);
$val .= '
					';


}; $scope->popScope(); 
$val .= '
				</fieldset>
			';


}
$val .= '
			
			';

if ($scope->hasValue('FieldValidationOptions', null, true)) { 
$val .= '
				<fieldset class="fieldOptionsGroup">
					<legend>';

$val .= _t($scope->XML_val('I18NNamespace').'.VALIDATION','Validation');
$val .= '</legend>
					';

$scope->obj('FieldValidationOptions', null, true); $scope->pushScope(); while (($key = $scope->next()) !== false) {
$val .= '
						';

$val .= $scope->XML_val('FieldHolder', null, true);
$val .= '
					';


}; $scope->popScope(); 
$val .= '
				</fieldset>
			';


}
$val .= '
		
			<fieldset class="customRules fieldOptionsGroup">
				<legend>';

$val .= _t($scope->XML_val('I18NNamespace').'.CUSTOMRULES','Custom Rules');
$val .= '</legend>
				<ul id="';

$val .= $scope->XML_val('FieldName', null, true);
$val .= '-customRules">
					<li>
						<a href="' . (SSViewer::$options['rewriteHashlinks'] ? strip_tags( $_SERVER['REQUEST_URI'] ) : "") . '#" class="addCondition" title="';

$val .= _t($scope->XML_val('I18NNamespace').'.ADD','Add');
$val .= '">';

$val .= _t($scope->XML_val('I18NNamespace').'.ADDRULE','Add Rule');
$val .= '</a>
					</li>
					<li class="addCustomRule">					
						<select name="';

$val .= $scope->XML_val('FieldName', null, true);
$val .= '[CustomSettings][ShowOnLoad]">
							<option value="Show" ';

if ($scope->hasValue('ShowOnLoad', null, true)) { 
$val .= 'selected="selected"';


}
$val .= '>';

$val .= _t($scope->XML_val('I18NNamespace').'.SHOW','Show');
$val .= '</option>
							<option value="Hide" ';

if ($scope->hasValue('ShowOnLoad', null, true)) { 

}else { 
$val .= 'selected="selected"';


}
$val .= '>';

$val .= _t($scope->XML_val('I18NNamespace').'.HIDE','Hide');
$val .= '</option>
						</select>

						<label class="left">';

$val .= _t($scope->XML_val('I18NNamespace').'.FIELDONDEFAULT','Field On Default');
$val .= '</label>
					</li>
					<li class="hidden">
						<select class="displayOption customRuleField" name="';

$val .= $scope->XML_val('FieldName', null, true);
$val .= '[CustomRules][Display]">
							<option value="Show">';

$val .= _t($scope->XML_val('I18NNamespace').'.SHOWTHISFIELD','Show This Field');
$val .= '</option>
							<option value="Hide">';

$val .= _t($scope->XML_val('I18NNamespace').'.HIDETHISFIELD','Hide This Field');
$val .= '</option>
						</select>

						<label>';

$val .= _t($scope->XML_val('I18NNamespace').'.WHEN','When');
$val .= '</label>
						<select class="fieldOption customRuleField" name="';

$val .= $scope->XML_val('FieldName', null, true);
$val .= '[CustomRules][ConditionField]">
							<option></option>
							';

$scope->obj('Parent', null, true); $scope->pushScope(); while (($key = $scope->next()) !== false) {
$val .= '
								';

if ($scope->hasValue('Fields', null, true)) { 
$val .= '
									';

$scope->obj('Fields', null, true); $scope->pushScope(); while (($key = $scope->next()) !== false) {
$val .= '
										<option value="';

$val .= $scope->XML_val('Name', null, true);
$val .= '">';

if ($scope->hasValue('Title', null, true)) { 
$val .= $scope->XML_val('Title', null, true);

}else { 
$val .= $scope->XML_val('Name', null, true);

}
$val .= '</option>
									';


}; $scope->popScope(); 
$val .= '
								';


}
$val .= '
							';


}; $scope->popScope(); 
$val .= '
						</select>

						<label>';

$val .= _t($scope->XML_val('I18NNamespace').'.IS','Is');
$val .= '</label>
						<select class="conditionOption customRuleField" name="';

$val .= $scope->XML_val('FieldName', null, true);
$val .= '[CustomRules][ConditionOption]">
							<option value=""></option>
							<option value="IsBlank">';

$val .= _t($scope->XML_val('I18NNamespace').'.BLANK','Blank');
$val .= '</option>
							<option value="IsNotBlank">';

$val .= _t($scope->XML_val('I18NNamespace').'.NOTBLANK','Not Blank');
$val .= '</option>
							<option value="HasValue">';

$val .= _t($scope->XML_val('I18NNamespace').'.VALUE','Value');
$val .= '</option>
							<option value="ValueNot">';

$val .= _t($scope->XML_val('I18NNamespace').'.NOTVALUE','Not Value');
$val .= '</option>
							<option value="ValueLessThan">';

$val .= _t($scope->XML_val('I18NNamespace').'.LESSTHAN','Value Less Than');
$val .= '</option>
							<option value="ValueLessThanEqual">';

$val .= _t($scope->XML_val('I18NNamespace').'.LESSTHANEQUAL','Value Less Than Or Equal');
$val .= '</option>
							<option value="ValueGreaterThan">';

$val .= _t($scope->XML_val('I18NNamespace').'.GREATERTHAN','Value Greater Than');
$val .= '</option>
							<option value="ValueGreaterThanEqual">';

$val .= _t($scope->XML_val('I18NNamespace').'.GREATERTHANEQUAL','Value Greater Than Or Equal');
$val .= '</option>
						</select>

						<input type="text" class="ruleValue hidden customRuleField" name="';

$val .= $scope->XML_val('FieldName', null, true);
$val .= '[CustomRules][Value]" />

						<a href="' . (SSViewer::$options['rewriteHashlinks'] ? strip_tags( $_SERVER['REQUEST_URI'] ) : "") . '#" class="deleteCondition" title="';

$val .= _t($scope->XML_val('I18NNamespace').'.DELETE','Delete');
$val .= '"><img src="cms/images/delete.gif" alt="';

$val .= _t($scope->XML_val('I18NNamespace').'.DELETE','Delete');
$val .= '" /></a>
					</li>
					';

if ($scope->hasValue('CustomRules', null, true)) { 
$val .= '
						';

$scope->obj('CustomRules', null, true); $scope->pushScope(); while (($key = $scope->next()) !== false) {
$val .= '
							<li>
								';

$val .= SSViewer::execute_template('CustomRule', $scope->getItem(), array());

$val .= '
							</li>
						';


}; $scope->popScope(); 
$val .= '
					';


}
$val .= '
				</ul>
			</fieldset>
		</div>
	';


}
$val .= '
	
	<!-- Hidden option Fields -->
	<input type="hidden" class="typeHidden" name="';

$val .= $scope->XML_val('FieldName', null, true);
$val .= '[Type]" value="';

$val .= $scope->XML_val('ClassName', null, true);
$val .= '" /> 
	<input type="hidden" class="sortHidden" name="';

$val .= $scope->XML_val('FieldName', null, true);
$val .= '[Sort]" value="';

$val .= $scope->XML_val('Sort', null, true);
$val .= '" />
</li>
';

