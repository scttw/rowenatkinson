<?php
class HomePage extends Page {

	public static $db = array(
		'EndText' => 'HTMLText'
	);	
	public static $has_many = array(
		'HomeImages' => 'HomeImage'
	);
	static $icon = "framework/docs/en/tutorials/_images/treeicons/home-file.gif";
	
	function getCMSFields() {
		$fields = parent::getCMSFields();

		$fields->addFieldToTab('Root.Images', new GridField('HomeImages', 'Homepage Feature Images', $this->HomeImages(), GridFieldConfig_RecordEditor::create()));
		//$fields->addFieldToTab('Root.Images', new GridField('CarouselImages', 'Carousel Images', $this->CarouselImages(), GridFieldConfig_RecordEditor::create()));
		$fields->addFieldToTab('Root.Main', new HTMLEditorField('EndText'));
		return $fields;
	}

}
class HomePage_Controller extends Page_Controller {
	public static $allowed_actions = array (
	);

	public function init() {
		parent::init();
        Requirements::javascript('themes/rowenatkinson/javascript/homepage.js');
	}

}

