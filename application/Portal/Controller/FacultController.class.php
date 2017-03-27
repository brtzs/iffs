<?php
// +----------------------------------------------------------------------
// | ThinkCMF [ WE CAN DO IT MORE SIMPLE ]
// +----------------------------------------------------------------------
// | Copyright (c) 2013-2014 http://www.thinkcmf.com All rights reserved.
// +----------------------------------------------------------------------
// | Author: Dean <zxxjjforever@163.com>
// +----------------------------------------------------------------------
namespace Portal\Controller;

use Common\Controller\HomebaseController;

class FacultController extends HomebaseController{

    //文章内页
    public function index() {
        $term_id=I('get.id',0,'intval');
        $term=sp_get_term($term_id);
        $article_id=I('get.id',0,'intval');


        if(empty($term)){
            header('HTTP/1.1 404 Not Found');
            header('Status:404 Not Found');
            if(sp_template_file_exists(MODULE_NAME."/404")){
                $this->display(":404");
            }
            return;
        }
        $this->assign("article_id",$article_id);
        $this->assign($term);
        $this->assign('cat_id', $term_id);
        $this->display(":facult");
    }

}