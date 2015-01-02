<?php
return array (
		'text' => array ( // 配置在表单中的键名 ,这个会是config[text]
				'title' => '显示文本:', // 表单的文字
				'type' => 'text', // 表单的类型：text、textarea、checkbox、radio、select等
				'value' => 'Hello,ThinkCMF'  // 表单的默认值
		),
		'theme' => array ( // 配置在表单中的键名 ,这个会是config[theme]
				'title' => '是否开启随机:', // 表单的文字
				'type' => 'select', // 表单的类型：text、textarea、checkbox、radio、select等
				'options' => array ( // select 和radion、checkbox的子选项
						'1' => 'default', // 值=>文字
						'2' => 'blue' 
				),
				'value' => ''  // 表单的默认值
		),
)
;
					