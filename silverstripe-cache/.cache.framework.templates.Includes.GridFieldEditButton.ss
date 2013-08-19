<?php
$val .= '<a class="action action-detail edit-link" href="';

$val .= $scope->XML_val('Link', null, true);
$val .= '" title="';

$val .= _t($scope->XML_val('I18NNamespace').'.EDIT','Edit');
$val .= '">';

$val .= _t($scope->XML_val('I18NNamespace').'.EDIT','Edit');
$val .= '</a>
';

