<?php

/**
 * 后台首页
 */
namespace Admin\Action;
use Common\Action\AdminbaseAction;
class TestAction extends AdminbaseAction {
	
	
	function _initialize() {
		//parent::_initialize();
	}
    //后台框架首页
    public function index() {
    	$class='\\Common\\Model\\MenuModel';
    	if( class_exists($class)){
    		echo "exists1";
    	}
    	echo "dd";
    	$menu_model=new \Common\Model\MenuModel('Menu');
    	$menu=$menu_model->menu_cache();
    	print_r($menu);
        
    }

    

}

?>
