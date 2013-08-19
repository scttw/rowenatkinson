<?php
$val .= '<div id="userforms-submissions">
	';

if ($scope->hasValue('Submissions', null, true)) { 
$val .= '
		<ul class="userforms-submission-actions">
			<li><a href="';

$val .= $scope->XML_val('ExportLink', null, true);
$val .= '">';

$val .= _t($scope->XML_val('I18NNamespace').'.EXPORTSUBMISSIONS','Export submissions to CSV');
$val .= '</a></li>
			<li><a href="';

$val .= $scope->XML_val('DeleteSubmissionsLink', null, true);
$val .= '" class="deleteAllSubmissions">';

$val .= _t($scope->XML_val('I18NNamespace').'.DELETEALLSUBMISSIONS','Delete All Submissions');
$val .= '</a></li>
		</ul>
		<h5>Name: ';

$val .= $scope->XML_val('Name', null, true);
$val .= '</h5>
		
		';

$scope->obj('Submissions', null, true); $scope->pushScope(); while (($key = $scope->next()) !== false) {
$val .= '
			<div class="userform-submission">
				<h5>';

$val .= _t($scope->XML_val('I18NNamespace').'.SUBMITTED','Submitted at');
$val .= ' ';

$val .= $scope->obj('Created', null, true)->XML_val('Nice', null, true);
$val .= ' <a href="';

$val .= $scope->XML_val('DeleteLink', array($scope->obj('Up', null, true)->XML_val('Link', null, true)), true);
$val .= '" class="deleteSubmission">';

$val .= _t($scope->XML_val('I18NNamespace').'.DELETESUBMISSION','Delete Submission');
$val .= '</a></h5>
				';

$scope->obj('Values', null, true); $scope->pushScope(); while (($key = $scope->next()) !== false) {
$val .= '
					<div id="Text_readonly" class="field readonly text">
						<label class="left" for="Form_EditForm_Text_readonly">';

$val .= $scope->XML_val('Title', null, true);
$val .= '</label>
						<div class="middleColumn">
							<span id="Form_EditForm_Text_readonly" class="readonly text">';

$val .= $scope->XML_val('FormattedValue', null, true);
$val .= '</span>
						</div>
					</div>
				';


}; $scope->popScope(); 
$val .= '
			</div>
		';


}; $scope->popScope(); 
$val .= '
		
	 	';

if ($scope->obj('Submissions', null, true)->hasValue('MoreThanOnePage', null, true)) { 
$val .= '
		<div class="userforms-submissions-pagination">
			<span>';

$val .= _t($scope->XML_val('I18NNamespace').'.PAGES','Pages');
$val .= ':</span>
			
			';

$scope->obj('Submissions', null, true)->obj('Pages', null, true); $scope->pushScope(); while (($key = $scope->next()) !== false) {
$val .= '
				';

if ($scope->hasValue('CurrentBool', null, true)) { 
$val .= '
					';

$val .= $scope->XML_val('PageNum', null, true);
$val .= '
				';


}else { 
$val .= '
					';

if ($scope->hasValue('Link', null, true)) { 
$val .= '
						<a href="';

$val .= $scope->obj('Top', null, true)->XML_val('Link', array('getMoreSubmissions'), true);
if ($scope->obj('Top', null, true)->hasValue('LinkContainsParameter', null, true)) { 
$val .= '&';


}else { 
$val .= '?';


}
$val .= 'page=';

$val .= $scope->XML_val('PageNum', null, true);
$val .= '">';

$val .= $scope->XML_val('PageNum', null, true);
$val .= '</a>
					';


}else { 
$val .= '
						...
					';


}
$val .= '
				';


}
$val .= '
			';


}; $scope->popScope(); 
$val .= '
		</div>
		';


}
$val .= '
	 	
	';


}else { 
$val .= '
		<p class="userforms-nosubmissions" ';

if ($scope->hasValue('Submissions', null, true)) { 
$val .= 'style="display: none"';


}
$val .= '>';

$val .= _t($scope->XML_val('I18NNamespace').'.NOSUBMISSIONS','No Submissions');
$val .= '</p>
	';


}
$val .= '
</div>
';

