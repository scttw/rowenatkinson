<?php
/**
 * Represents an image and title that can be associated with a page
 */
class HomeImage extends DataObject {

	public static $db = array(
	);

	public static $has_one = array(
		'Image'			=> 'Image',
		'ParentPage'	=> 'Page'
	);
    public static $summary_fields = array(
        'ID' => 'Pic ID',
        'ImageThumb' => 'Picture'
    );
    function ImageThumb(){
       return $this->Image()->SetHeight(40);
    } 

    function GetHalfWidth() {
        $width = $this->Image()->Width;
        return $width / 2;
    }
    function GetHalfHeight() {
        $height = $this->Image()->Height;
        return $height / 2;
    }
    public function halver($value) {
        return $this->getDimensions(0);
        //return ($value / 2).'gah';
    }
    public function canView($member = null) {
        return $this->ParentPage()->canEdit($member);
    }
    public function canEdit($member = null) {
        return $this->ParentPage()->canEdit($member);
    }
    public function canDelete($member = null) {
        return $this->ParentPage()->canEdit($member);
    }
    public function canCreate($member = null) {
        return $this->ParentPage()->canEdit($member);
    }

	public function getCMSFields(){
		$fields = parent::getCMSFields();
		$fields->removeByName('ParentPageID');
		return $fields;
	}
}