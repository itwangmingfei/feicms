 <?php
/**
 * @name    飞飞定时自动采集配置文件
 * @link http://mb700.com//
 */
//采集多个资源，不要设置太多，不然运行时间太长会导致采集失败
return array(
	"user_name" => "seeflycai",//在飞飞后台添加一个后台管理，只需要赋予采集管理权限
	"user_pwd" => "zyh5211314",//密码可以设置符号
	"urlDomain" => "http://nyytv.com", // 如http://127.0.0.1，最后不要加斜杠
	"urlManage" => "http://nyytv.com/adminsee.php", // 如 http://127.0.0.1/Admin/或者http://127.0.0.1/admin.php
	"urlCollect" => array(
        "http://nyytv.com/index.php?s=Admin-Cj-Apis-cjid-10-cjtype-1-apikey--action-days-xmlurl-aHR0cHM6Ly93d3cua3l6eS50di9hcGkucGhwL2t5bTN1OGZmL3ZvZC9hdC94bWwvP2FjPWxpc3Q=-h-24",
        ),
	);