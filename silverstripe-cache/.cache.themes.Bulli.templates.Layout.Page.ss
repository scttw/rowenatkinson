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
            <div class="row-fluid">
                <div class="span8 lefstedge">
					<article>
						<h1>';

$val .= $scope->XML_val('Title', null, true);
$val .= '</h1>
						<div class="content">
							';

$val .= $scope->XML_val('Content', null, true);
$val .= '
						</div>
					</article>
						';

$val .= $scope->XML_val('Form', null, true);
$val .= '
						';

$val .= $scope->XML_val('PageComments', null, true);
$val .= '
                </div>
                <div class="span3 pull-right" style="margin-right: 20px;">
                	';

$val .= SSViewer::execute_template('SideBar', $scope->getItem(), array());

$val .= '
                </div>
                <div class="breaker"></div>
            </div>

';

