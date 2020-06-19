<!DOCTYPE html>
<html lang="zh-cn">
<head>
<include file="BlockTheme:header_meta" />
<include file="BlockSeo:index" />
</head>
<body class="index">
<include file="BlockTheme:header" />
<php>$item_list = ff_mysql_list('field:list_id,list_pid,list_sid,list_name,list_dir;sid:1;limit:0;cache_name:default;cache_time:default;order:list_oid;sort:asc');</php>
<div class="content">
<div class="container">
<div class="panel">
<div class="latest-primary">
	<ul class="latest-tabs clearfix">
		<li id="latest1" onmouseover="setTab('latest',1,5);" class="active">热播推荐</li>
		<li id="latest2" onmouseover="setTab('latest',2,5);">最新{$item_list.0.list_name}</li>
		<li id="latest3" onmouseover="setTab('latest',3,5);">最新{$item_list.1.list_name}</li>
		<li id="latest4" onmouseover="setTab('latest',4,5);">最新{$item_list.2.list_name}</li>
		<li id="latest5" onmouseover="setTab('latest',5,5);">最新{$item_list.3.list_name}</li>
	</ul>
	<div class="tab-content">
		<div class="tab-panel" id="con_latest_1" style="display:block;">
		<php>$item_tab = ff_mysql_vod('field:list_id,list_dir,vod_id,vod_actor,vod_type,vod_area,vod_ename,vod_name,vod_jumpurl,vod_url,vod_pic,vod_content;limit:35;cache_name:default;cache_time:default;order:vod_stars desc,vod_hits_lasttime;sort:desc');</php>
		<include file="BlockTheme:index_tab" />
		</div>
		<!-- -->
		<div class="tab-panel" id="con_latest_2">
		<php>$item_tab = ff_mysql_vod('field:list_id,list_dir,vod_id,vod_actor,vod_type,vod_area,vod_ename,vod_name,vod_jumpurl,vod_url,vod_pic,vod_content;cid:'.ff_list_ids($item_list[0]['list_id']).';limit:35;cache_name:default;cache_time:default;order:vod_stars desc,vod_addtime;sort:desc');</php>
		<include file="BlockTheme:index_tab" />
		</div>
		<!-- -->
		<div class="tab-panel" id="con_latest_3">
		<php>$item_tab = ff_mysql_vod('field:list_id,list_dir,vod_id,vod_actor,vod_type,vod_area,vod_ename,vod_name,vod_jumpurl,vod_url,vod_pic,vod_content;cid:'.ff_list_ids($item_list[1]['list_id']).';limit:35;cache_name:default;cache_time:default;order:vod_stars desc,vod_addtime;sort:desc');</php>
		<include file="BlockTheme:index_tab" />
		</div>
		<!-- -->
		<div class="tab-panel" id="con_latest_4">
		<php>$item_tab = ff_mysql_vod('field:list_id,list_dir,vod_id,vod_actor,vod_type,vod_area,vod_ename,vod_name,vod_jumpurl,vod_url,vod_pic,vod_content;cid:'.ff_list_ids($item_list[2]['list_id']).';limit:35;cache_name:default;cache_time:default;order:vod_stars desc,vod_addtime;sort:desc');</php>
		<include file="BlockTheme:index_tab" />
		</div>
		<!-- -->
		<div class="tab-panel" id="con_latest_5">
		<php>$item_tab = ff_mysql_vod('field:list_id,list_dir,vod_id,vod_actor,vod_type,vod_area,vod_ename,vod_name,vod_jumpurl,vod_url,vod_pic,vod_content;cid:'.ff_list_ids($item_list[3]['list_id']).';limit:35;cache_name:default;cache_time:default;order:vod_stars desc,vod_addtime;sort:desc');</php>
		<include file="BlockTheme:index_tab" />
		</div>
		<!-- -->
	</div><!--tab-content end -->
</div>
</div><!--panel end-->
<volist name="item_list" id="item">
<present name="item.list_son">
	<volist name="item.list_son" id="feifeilist">
	<include file="BlockTheme:index_volist" />
	</volist>
<else/>
	<php>$feifeilist = $item;</php>
	<include file="BlockTheme:index_volist" />	
</present >
</volist>
<!--foreach end -->
<div class="panel clearfix">
	<div class="panel-heading clearfix">
		<h3 class="panel-title">友情链接</h3> 
	</div>
	<div class="panel-body">
		<p class="friend-link"><volist name=":ff_mysql_link('limit:20;cache_name:default;cache_time:default;order:link_order;sort:asc')" id="feifei"><a href="{$feifei.link_url}" target="_blank">{$feifei.link_name}</a></volist></p>
	</div>
</div><!--panel end -->
</div><!--container end -->
</div><!--content end -->
<include file="BlockTheme:footer" />
</body>
</html>