<?php

$val .= '
<!-- topbar recursion-->
';

if ($scope->hasValue('Children', null, true)) { 
$val .= '
	';

$scope->obj('Children', null, true); $scope->pushScope(); while (($key = $scope->next()) !== false) {
$val .= '
		';

if ($scope->XML_val('ClassName', null, true)!='HomePage') { 
$val .= '
		';

if ($scope->XML_val('ClassName', null, true)!='Feature') { 
$val .= '
		<li class="';

$val .= $scope->XML_val('LinkingMode', null, true);
$val .= '">
			<a href="';

$val .= $scope->XML_val('Link', null, true);
$val .= '" class="';

$val .= $scope->XML_val('LinkingMode', null, true);
$val .= '" title="Go to the ';

$val .= $scope->obj('Title', null, true)->XML_val('XML', null, true);
$val .= ' page">
				<span class="text">';

$val .= $scope->obj('MenuTitle', null, true)->XML_val('XML', null, true);
$val .= '</span>
			</a>
		</li>
		';


}
$val .= '
		';


}
$val .= '
	';


}; $scope->popScope(); 
$val .= '
';


}
$val .= '
';

