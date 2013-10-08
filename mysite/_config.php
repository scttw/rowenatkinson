<?php

global $project;
$project = 'mysite';

include_once dirname(__FILE__).'/local.conf.php';

MySQLDatabase::set_connection_charset('utf8');

// Set the current theme. More themes can be downloaded from
// http://www.silverstripe.org/themes/
//SSViewer::set_theme('rowenatkinson');
FulltextSearchable::enable();


// Set the site locale
i18n::set_locale('en_US');

// Enable nested URLs for this site (e.g. page/sub-page/)
if (class_exists('SiteTree')) SiteTree::enable_nested_urls();

DataObject::add_extension('Image', 'MyImage');