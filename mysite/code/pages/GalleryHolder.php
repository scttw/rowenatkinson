<?php
class GalleryHolder extends Page {

	public static $db = array(
	);	
	public static $has_one = array(
	);
  static $allowed_children = array("GalleryPage");
  static $default_child = "GalleryPage";
}
class GalleryHolder_Controller extends Page_Controller {
	public static $allowed_actions = array (
	);
	public function init() {
	    RSSFeed::linkToFeed($this->Link() . "rss");   
	    RSSFeed::linkToFeed($this->Link() . "rssAll");   
	    parent::init();
	}
	public function getChildGalleries() {
	    $children = SiteTree::get('GalleryPage', "ParentID = $this->ID"); 
	    if( !$children )
	      return null; 
	    $children->sort('EventDate', 'DESC');
	    return $children;
	}
	public function rss() {
	    $galleries = SiteTree::get('GalleryPage');
	    $galleries->sort('EventDate','DESC');
	    $galleries->limit(15);
	    $rss = new RSSFeed($galleries, $this->Link(), "RSS feed of galleries");
	    return $rss->outputToBrowser();
	}
}

