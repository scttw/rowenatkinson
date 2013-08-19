<?php
Requirements::css('userforms/css/FieldEditor.css');
$val .= '
';

Requirements::javascript('userforms/javascript/UserForm.js');
$val .= '

<div class="FieldEditor ';

if ($scope->hasValue('canEdit', null, true)) { 

}else { 
$val .= 'readonly';


}
$val .= '" id="Fields" ';

$val .= $scope->XML_val('AttributesHTML', null, true);
$val .= '>
	
	<div class="FieldListHold">
		<ul class="FieldList" id="Fields_fields">
			';

$scope->obj('Fields', null, true); $scope->pushScope(); while (($key = $scope->next()) !== false) {
$val .= '
				';

$val .= $scope->XML_val('EditSegment', null, true);
$val .= '
			';


}; $scope->popScope(); 
$val .= '
		</ul>
	</div>
	 
	';

if ($scope->hasValue('canEdit', null, true)) { 
$val .= '
	<div class="MenuHolder">
		<h2>';

$val .= _t($scope->XML_val('I18NNamespace').'.ADD','Add');
$val .= '</h2>

		<select name="AddUserFormField" id="AddUserFormField">
			<option value="">';

$val .= _t($scope->XML_val('I18NNamespace').'.SELECTAFIELD','Select a Field');
$val .= '</option>

			';

$scope->obj('CreatableFields', null, true); $scope->pushScope(); while (($key = $scope->next()) !== false) {
$val .= '
				<option value="';

$val .= $scope->XML_val('ClassName', null, true);
$val .= '">';

$val .= $scope->XML_val('Title', null, true);
$val .= '</option>
			';


}; $scope->popScope(); 
$val .= '
		</select>

		<input type="submit" class="action" value="';

$val .= _t($scope->XML_val('I18NNamespace').'.ADD','Add');
$val .= '" /> 
	</div>
	';


}
$val .= '

</div>';

