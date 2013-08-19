<?php
$val .= '<!DOCTYPE html>
<!--[if lt IE 7]>      <html lang="';

$val .= $scope->XML_val('ContentLocale', null, true);
$val .= '" class="no-js lt-ie9 lt-ie8 lt-ie7"> <![endif]-->
<!--[if IE 7]>         <html lang="';

$val .= $scope->XML_val('ContentLocale', null, true);
$val .= '" class="no-js lt-ie9 lt-ie8"> <![endif]-->
<!--[if IE 8]>         <html lang="';

$val .= $scope->XML_val('ContentLocale', null, true);
$val .= '" class="no-js lt-ie9"> <![endif]-->
<!--[if gt IE 8]><!--> <html lang="';

$val .= $scope->XML_val('ContentLocale', null, true);
$val .= '" class="no-js"> <!--<![endif]-->
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
        ';

$val .= SSViewer::get_base_tag($val);
$val .= '
        <title>';

if ($scope->hasValue('MetaTitle', null, true)) { 
$val .= $scope->XML_val('MetaTitle', null, true);

}else { 
$val .= $scope->XML_val('Title', null, true);

}
$val .= ' &raquo; ';

$val .= $scope->obj('SiteConfig', null, true)->XML_val('Title', null, true);
$val .= '</title>
        ';

$val .= $scope->XML_val('MetaTags', array('false'), true);
$val .= '
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <script src="//cdnjs.cloudflare.com/ajax/libs/modernizr/2.6.2/modernizr.min.js"></script>
        <!--[if lt IE 9]>
        <script src="//cdnjs.cloudflare.com/ajax/libs/html5shiv/3.6.2/html5shiv.js"></script>
        <link rel="stylesheet" type="text/css" href="css/ie8.css" />
        <script src="//cdnjs.cloudflare.com/ajax/libs/respond.js/1.1.0/respond.min.js"></script>
        <![endif]-->
  </head>
  <body class="';

if (!$scope->hasValue('Menu', array('2'), true)) { 
$val .= ' no-sidebar';


}
if ($scope->hasValue('PageStyle', null, true)) { 
$val .= ' ';

$val .= $scope->XML_val('PageStyle', null, true);

}
if ($scope->hasValue('HasBanner', null, true)) { 
$val .= ' banner ';


}else { 
$val .= ' no-banner ';


}
$val .= '">

        <!--[if lt IE 7]>
            <p class="chromeframe">You are using an <strong>outdated</strong> browser. Please <a href="http://browsehappy.com/">upgrade your browser</a> or <a href="http://www.google.com/chromeframe/?redirect=true">activate Google Chrome Frame</a> to improve your experience.</p>
        <![endif]-->

        <div class="bgStretcher">
        <div class="fauxbody" >
        <div class="container" id="container">

';

$val .= SSViewer::execute_template('Header', $scope->getItem(), array());

$val .= '
    ';

$val .= $scope->XML_val('Layout', null, true);
$val .= '
';

$val .= SSViewer::execute_template('Footer', $scope->getItem(), array());

$val .= '
        </div><!-- container -->
        </div><!-- fauxbody -->
        </div><!-- bgStretcher -->

    

</body>
</html>
';

