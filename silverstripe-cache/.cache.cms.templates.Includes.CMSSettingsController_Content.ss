<?php
$val .= '<div id="settings-controller-cms-content" class="cms-content center cms-tabset ';

$val .= $scope->XML_val('BaseCSSClasses', null, true);
$val .= '" data-layout-type="border" data-pjax-fragment="Content CurrentForm">

	<div class="cms-content-header north">
		';

$scope->obj('EditForm', null, true); $scope->pushScope();
$val .= '
			<div class="cms-content-header-info">
				<h2>
				';

$scope->obj('Controller', null, true); $scope->pushScope();
$val .= '
					';

$val .= SSViewer::execute_template('CMSBreadcrumbs', $scope->getItem(), array());

$val .= '
				';


; $scope->popScope(); 
$val .= '
				</h2>
			</div>
			';

if ($scope->obj('Fields', null, true)->hasValue('hasTabset', null, true)) { 
$val .= '
				';

$scope->obj('Fields', null, true)->obj('fieldByName', array('Root'), true); $scope->pushScope();
$val .= '
				<div class="cms-content-header-tabs">
					<ul>
					';

$scope->obj('Tabs', null, true); $scope->pushScope(); while (($key = $scope->next()) !== false) {
$val .= '
						<li';

if ($scope->hasValue('extraClass', null, true)) { 
$val .= ' class="';

$val .= $scope->XML_val('extraClass', null, true);
$val .= '"';


}
$val .= '><a href="' . (SSViewer::$options['rewriteHashlinks'] ? strip_tags( $_SERVER['REQUEST_URI'] ) : "") . '#';

$val .= $scope->XML_val('id', null, true);
$val .= '">';

$val .= $scope->XML_val('Title', null, true);
$val .= '</a></li>
					';


}; $scope->popScope(); 
$val .= '
					</ul>
				</div>
				';


; $scope->popScope(); 
$val .= '
			';


}
$val .= '
		';


; $scope->popScope(); 
$val .= '
	</div>

	<div class="cms-content-fields center ui-widget-content" data-layout-type="border">

		';

$val .= $scope->XML_val('EditForm', null, true);
$val .= '

	</div>

</div>
';

