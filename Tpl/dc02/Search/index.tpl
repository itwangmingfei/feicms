<!DOCTYPE html>
<html lang="zh-cn">
<head>
<include file="BlockTheme:header_meta" />
<title>热门视频搜索_{$site_name}</title>
</head>
<body class="ajax-search">
<include file="BlockTheme:header" />
<div class="content">
<div class="container">
<div class="panel">
	<form class="ff-search" data-sid="{$site_sid}" data-limit="{:C('ui_search_limit')}" role="search" action="{$root}index.php?s=vod-search" method="post" data-action="{:ff_url('vod/search',array('wd'=>'FFWD'), true)}">
		<div class="navbar-search">
			<input class="search-control ff-wd" type="text" name="wd" placeholder="请输入影片名称" />
			<button class="search-button" type="submit">搜索</button>
		</div>
	</form>
	<div class="search-hotkey">
		<h5>热门搜索：</h5>
		<volist name=":ff_mysql_vod('limit:30;cache_name:default;cache_time:default;order:vod_stars desc,vod_hits_lasttime;sort:desc')" id="feifei">
		<a class="btn btn-default btn-sm" href="{:ff_url_play($feifei['list_id'],$feifei['list_dir'],$feifei['vod_id'],$feifei['vod_ename'],ff_array(ff_url_play_end($feifei['vod_url']),0),ff_array(ff_url_play_end($feifei['vod_url']),1))}">{$feifei.vod_name|msubstr=0,15,'utf-8',true}</a>
		</volist>
	</div>
</div>
</div>
</div>
<include file="BlockTheme:footer" />
</body>
</html>