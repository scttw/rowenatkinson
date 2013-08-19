<?php
$val .= '<div>
	';

if ($scope->hasValue('Menu', array('2'), true)) { 
$val .= '
		<nav class="secondary">
			<ul id="subNav" class="nav nav-tabs nav-stacked">
				';

$scope->obj('Level', array('1'), true); $scope->pushScope();
$val .= '
					';

$val .= SSViewer::execute_template('SidebarMenu', $scope->getItem(), array());

$val .= '
				';


; $scope->popScope(); 
$val .= '
			</ul>
		</nav>
	';


}
$val .= '
</div>
';

