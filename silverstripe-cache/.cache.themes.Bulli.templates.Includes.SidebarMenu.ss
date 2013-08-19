<?php

$val .= '
';

if ($scope->hasValue('Children', null, true)) { 
$val .= '
	';

$scope->obj('Children', null, true); $scope->pushScope(); while (($key = $scope->next()) !== false) {
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
			';

if ($scope->hasValue('Children', null, true)) { 
$val .= '
				';

if ($scope->XML_val('LinkOrSection', null, true)!='link') { 
$val .= ' 
					<ul>
						';

$val .= SSViewer::execute_template('SidebarMenu', $scope->getItem(), array());

$val .= '
					</ul>
				';


}
$val .= '
			';


}
$val .= '
		</li>
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

