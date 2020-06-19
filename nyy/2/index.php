<?php
/**
 * @name    飞飞定时自动采集程序
 * @link http://mb700.com/
 */
@set_time_limit(0);
ini_set("memory_limit",-1);
header("Content-Type:text/html;charset=utf-8");
$config = require_once './cfg.php';
$cookie_file = tempnam(dirname(__FILE__), 'cookie');
$url = $config['urlManage'];
$ch = curl_init($url);
curl_setopt($ch, CURLOPT_HEADER, 0);
curl_setopt($ch, CURLOPT_RETURNTRANSFER, 1);
curl_setopt($ch, CURLOPT_COOKIEJAR, $cookie_file);
$con = curl_exec($ch);
curl_close($ch);
$url = $config['urlDomain'] . '/index.php?s=Admin-Login';
$ch = curl_init($url);
curl_setopt($ch, CURLOPT_HEADER, 0);
curl_setopt($ch, CURLOPT_RETURNTRANSFER, 1);
curl_setopt($ch, CURLOPT_COOKIEFILE, $cookie_file);
$con = curl_exec($ch);

//preg_match("<input type=\"hidden\" name=\"__hash__\" value=\"(.*)\" /></form>", $con, $rg);
curl_close($ch);
$curlPost["user_name"] = $config['user_name'];
$curlPost["user_pwd"] = $config['user_pwd'];
$curlPost["__hash__"] = $rg[1];
$url = $config['urlDomain'] . '/index.php?s=Admin-Login-Check';
$ch = curl_init($url);
curl_setopt($ch, CURLOPT_HEADER, 0);
curl_setopt($ch, CURLOPT_RETURNTRANSFER, 0);
curl_setopt($ch, CURLOPT_POST, 1);
curl_setopt($ch, CURLOPT_COOKIEFILE, $cookie_file);
curl_setopt($ch, CURLOPT_POSTFIELDS, http_build_query($curlPost, '', '&'));
$con = curl_exec($ch);
curl_close($ch);
$urls = $config['urlCollect'];
echo "<pre>";
if(is_string($urls))$urls=array($urls);
foreach($urls as $url){
    echo "采集：".$url;
    do{
        $ch = curl_init($url);
        curl_setopt($ch, CURLOPT_HEADER, 0);
        curl_setopt($ch, CURLOPT_RETURNTRANSFER, 1);
        curl_setopt($ch, CURLOPT_COOKIEFILE, $cookie_file);
        $con = curl_exec($ch);
        $b = preg_match("<meta http-equiv=\"refresh\" content=.;url=(.*)>", $con, $nextUrl);
        if ($b) {
            $nextUrl[1] = $config['urlDomain'] . "/index.php". $nextUrl[1];
            echo $nextUrl[1];
        }
        if ($b) {
            $con = preg_replace("<meta http-equiv=\"refresh\" content=.;url=(.*)>", "#", $con);
            echo "采集完成\n\r";
        }
        curl_close($ch);
        $url = $nextUrl[1];
    }while($b);
}
unlink($cookie_file);
?>
