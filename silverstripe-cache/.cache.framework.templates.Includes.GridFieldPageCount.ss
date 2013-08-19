<?php
$val .= '<span class="pagination-records-number">
	';

$val .= _t('Pagination.View','View', 'Verb. Example: View 1 of 2');
$val .= '
	';

$val .= $scope->XML_val('FirstShownRecord', null, true);
$val .= '&ndash;';

$val .= $scope->XML_val('LastShownRecord', null, true);
$val .= '
	';

$val .= _t('TableListField_PageControls.ss.OF','of', 'Example: View 1 of 2');
$val .= ' 
	';

$val .= $scope->XML_val('NumRecords', null, true);
$val .= '
</span>';

