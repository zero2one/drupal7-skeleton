<?php
/**
 * @file
 * Migrate class to create Skeleton content.
 */

/**
 * Class SkeletonDemoCreateSkeletonContent
 */
class SkeletonDemoCreateContent extends SkeletonDemoCreateEntity {
  public $entityType = 'node';
  public $bundle = 'skeleton_content';

  /**
   * CSV Column mapping.
   *
   * @var array
   */
  public $csvColumns = array(
    array('id', 'ID'),
    array('title', 'Title'),
    array('body', 'Body'),
  );

  /**
   * Configure the object during creation.
   */
  public function __construct() {
    parent::__construct();

    $this->addFieldMapping('body', 'body');
  }
}
