<?php
class GalleryPage extends Page {

	public static $db = array(
		'Category' => "Enum('wedding, portrait, event, other')",
		'EventDate' => 'Date'			
	);	
	public static $has_one = array(
		'SourceFolder' => 'Folder',
		'FeatureImage' => 'Image'

	);
	static $defaults = array(
		'ProvideComments' => true,
		'ShowInMenus' => false
	);
	static $allowed_children = "none";
    static $can_be_root = false;
	static $default_sort = "EventDate DESC"; 
	//static $icon = "framework/docs/en/tutorials/_images/treeicons/home-file.gif";
	
	function getCMSFields() {
		$fields = parent::getCMSFields();

		$dateField = new DateField('EventDate','Event Date (for example: 20/12/2010) for sorting');
		$dateField->setConfig('showcalendar', true);
		$fields->addFieldToTab('Root.Main', $dateField, 'Content');
		$tree = new TreeDropdownField('SourceFolderID', 'Choose Image Folder', 'Folder');
		$tree->setTreeBaseID(1);
		$fields->addFieldToTab('Root.Main', $tree, 'Content');
		$options = singleton('GalleryPage')->dbObject('Category')->enumValues();
		$fields->addFieldToTab("Root.Main", new DropdownField("Category", "Gallery category", $options), 'Content');
		$fields->addFieldToTab('Root.Main', new UploadField('FeatureImage'), 'Content');
		return $fields;
	}

}
class GalleryPage_Controller extends Page_Controller {
	public static $allowed_actions = array (
	);

	public function init() {
		parent::init();
        Requirements::javascript('themes/rowenatkinson/javascript/homepage.js');
	}
	public function getImagesFromFolder() {
		$source = $this->SourceFolderID;
		
		return $source ? DataObject::get("Image", "ParentID = '{$source}'") : false; 
	}
}

