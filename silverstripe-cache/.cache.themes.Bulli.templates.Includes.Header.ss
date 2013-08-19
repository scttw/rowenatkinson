<?php
$val .= '            <header class="banner" role="banner">
                <div class="logo"><h1><a href="';

$val .= $scope->XML_val('BaseHref', null, true);
$val .= '">Buli Anglican Church</a></h1></div>
                <nav id="mainnav" class="mainnav navbar">
                	<div class="navbar-surround" data-toggle="collapse" data-target=".nav-collapse">
				  <a class="btn btn-navbar" data-toggle="collapse" data-target=".nav-collapse">
				   <span class="icon-bar"></span>
				   <span class="icon-bar"></span>
				   <span class="icon-bar"></span>
				  </a>
  		        <div class="nav-collapse">
		        <ul class="nav">
		           ';

$scope->obj('Menu', array('1'), true); $scope->pushScope(); while (($key = $scope->next()) !== false) {
$val .= '
		              <li class="';

$val .= $scope->XML_val('LinkingMode', null, true);
$val .= ' ';

if ($scope->hasValue('First', null, true)) { 
$val .= 'first';


}
if ($scope->hasValue('Children', null, true)) { 
$val .= ' dropdown';


}
$val .= '"><a class="';

$val .= $scope->XML_val('LinkingMode', null, true);
if ($scope->hasValue('Children', null, true)) { 
$val .= ' dropdown-toggle" data-toggle="dropdown';


}
$val .= '" href="';

$val .= $scope->XML_val('Link', null, true);
$val .= '">';

$val .= $scope->XML_val('MenuTitle', null, true);
if ($scope->hasValue('Children', null, true)) { 
$val .= ' <span class="caret"></span>';


}
$val .= ' </a>
		                ';

if ($scope->hasValue('Children', null, true)) { 
$val .= '
		                ';

if ($scope->XML_val('ClassName', null, true)!='HomePage') { 
$val .= '
		                  <ul class="dropdown-menu">
		                    ';

$val .= SSViewer::execute_template('TopbarMenu', $scope->getItem(), array());

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


}; $scope->popScope(); 
$val .= '
				</ul>
                </div></div></nav>
                <div class="search">
                    
                    ';

$val .= $scope->XML_val('SearchForm', null, true);
$val .= '
                </div>
            </header>';

