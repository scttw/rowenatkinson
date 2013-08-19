<?php
$val .= '<select ';

$val .= $scope->XML_val('AttributesHTML', null, true);
$val .= '>
';

$scope->obj('Options', null, true); $scope->pushScope(); while (($key = $scope->next()) !== false) {
$val .= '
	<option value="';

$val .= $scope->obj('Value', null, true)->XML_val('XML', null, true);
$val .= '"';

if ($scope->hasValue('Selected', null, true)) { 
$val .= ' selected="selected"';


}
if ($scope->hasValue('Disabled', null, true)) { 
$val .= ' disabled="disabled"';


}
$val .= '>';

$val .= $scope->obj('Title', null, true)->XML_val('XML', null, true);
$val .= '</option>
';


}; $scope->popScope(); 
$val .= '
</select>
';

