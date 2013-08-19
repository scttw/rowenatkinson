<?php
$val .= '			<div class="strap row-fluid">
                ';

if ($scope->hasValue('HasBanner', null, true)) { 
$val .= '
                    <div class="span12" style="margin-top: 20px;">';

$val .= $scope->XML_val('BannerContent', null, true);
$val .= '</div>
                ';


}
$val .= '
            </div>
            <div class="row-fluid">&nbsp;</div>
            <div class="row-fluid masonry">
					';

$scope->obj('HomepageFeatures', null, true); $scope->pushScope(); while (($key = $scope->next()) !== false) {
$val .= '
                    <div class="';

if ($scope->hasValue('FullWidth', null, true)) { 
$val .= 'wide';


}else { 
$val .= 'narrow';


}
$val .= ' feature">
                        <h2>';

$val .= $scope->XML_val('Title', null, true);
$val .= '</h2>
                        <div class="content">
                            ';

$val .= $scope->XML_val('Stuff', null, true);
$val .= '
                        </div>
                    </div>                        
                    ';


}; $scope->popScope(); 
$val .= '

                <div class="breaker"></div>
            </div>

';

