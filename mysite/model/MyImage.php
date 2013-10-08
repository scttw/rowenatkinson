<?php
class MyImage extends DataExtension {


    public function halfWidth($passWidth=2) {
        return $passWidth / 2;
    }
    public function halfHeight($passHeight=2) {
        return $passHeight / 2;
    }
    public function requireTable() {
        return false;
    }
}