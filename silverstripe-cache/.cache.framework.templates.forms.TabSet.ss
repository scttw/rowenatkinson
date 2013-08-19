<?php
$val .= '<div ';

$val .= $scope->XML_val('getAttributesHTML', array('class'), true);
$val .= ' class="ss-tabset ';

$val .= $scope->XML_val('extraClass', null, true);
$val .= '">
	<ul>
	';

$scope->obj('Tabs', null, true); $scope->pushScope(); while (($key = $scope->next()) !== false) {
$val .= '
		<li class="';

$val .= $scope->XML_val('FirstLast', null, true);
$val .= ' ';

$val .= $scope->XML_val('MiddleString', null, true);
$val .= ' ';

$val .= $scope->XML_val('extraClass', null, true);
$val .= '"><a href="' . (SSViewer::$options['rewriteHashlinks'] ? strip_tags( $_SERVER['REQUEST_URI'] ) : "") . '#';

$val .= $scope->XML_val('id', null, true);
$val .= '" id="tab-';

$val .= $scope->XML_val('id', null, true);
$val .= '">';

$val .= $scope->XML_val('Title', null, true);
$val .= '</a></li>
	';


}; $scope->popScope(); 
$val .= '
	</ul>

	';

$scope->obj('Tabs', null, true); $scope->pushScope(); while (($key = $scope->next()) !== false) {
$val .= '
		';

if ($scope->hasValue('Tabs', null, true)) { 
$val .= '
			';

$val .= $scope->XML_val('FieldHolder', null, true);
$val .= '
		';


}else { 
$val .= '
			<div ';

$val .= $scope->XML_val('AttributesHTML', null, true);
$val .= '>
				';

$scope->obj('Fields', null, true); $scope->pushScope(); while (($key = $scope->next()) !== false) {
$val .= '
					';

$val .= $scope->XML_val('FieldHolder', null, true);
$val .= '
				';


}; $scope->popScope(); 
$val .= '
			</div>
		';


}
$val .= '
	';


}; $scope->popScope(); 
$val .= '
</div>
';

