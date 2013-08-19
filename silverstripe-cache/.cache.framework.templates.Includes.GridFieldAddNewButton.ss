<?php
$val .= '<a href="';

$val .= $scope->XML_val('NewLink', null, true);
$val .= '" class="action action-detail ss-ui-action-constructive ss-ui-button ui-button ui-widget ui-state-default ui-corner-all new new-link" data-icon="add">
';

$val .= $scope->XML_val('ButtonName', null, true);
$val .= '
</a>';

