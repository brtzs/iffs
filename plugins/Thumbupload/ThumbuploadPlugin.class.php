<?php
    namespace plugins\Thumbupload;
    use Common\Lib\Plugin;

    class Thumbupload extends Plugin{
        public $info = array(
            'name' => "Thumb Picture Upload",
            'title' => "缩略图上传插件",
            'description' => '对上传的缩略图进行裁剪',
            'status'=>1,
            'author'=>'Jerry Zhang',
            'version'=>'1.0'
        );

        public $has_admin=1;//插件是否有后台管理界面

        public function install(){//安装方法必须实现
            return true;//安装成功返回true，失败false
        }

        public function uninstall(){//卸载方法必须实现
            return true;//卸载成功返回true，失败false
        }

        public function upload($param){
        	$config=$this->getConfig();
        	$this->assign($config);
        	$this->display('widget');
        }
    }
?>