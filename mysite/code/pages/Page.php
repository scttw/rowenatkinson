<?php
class Page extends SiteTree {
	public static $db = array(
		'PageStyle' => "Enum('orange, blue, red')",
		'HasBanner' => 'boolean',
		'BannerContent' => 'HTMLText'
	);
	static $defaults = array(
		'PageStyle' => 'orange',
		'HasBanner' => 0
	);


	function getCMSFields() {
		$fields = parent::getCMSFields();

		$options = singleton('Page')->dbObject('PageStyle')->enumValues();
		$fields->addFieldToTab("Root.Main", new DropdownField("PageStyle", "Page colour scheme", $options), 'Content');

		$fields->addFieldToTab('Root.Banner', new CheckboxField('HasBanner'));
		$fields->addFieldToTab('Root.Banner', new HTMLEditorField('BannerContent'));

		return $fields;
	}    
}
class Page_Controller extends ContentController {
	public static $allowed_actions = array (
	);

	public function init() {
		parent::init();

		Requirements::css('themes/Bulli/css/normalize.css');
		Requirements::css('themes/Bulli/css/bootstrap.css');
		Requirements::css('themes/Bulli/css/bootstrap-responsive.css');
		Requirements::css('themes/Bulli/css/main.css');
		Requirements::css('themes/Bulli/css/site.css');
		
        Requirements::javascript('//cdnjs.cloudflare.com/ajax/libs/jquery/1.9.1/jquery.min.js');
        Requirements::javascript('themes/Bulli/javascript/plugins.js');
        Requirements::javascript('themes/Bulli/javascript/main.js');
        Requirements::javascript('themes/Bulli/javascript/bootstrap.js');
        Requirements::javascript('themes/Bulli/javascript/site.js');
	}

}