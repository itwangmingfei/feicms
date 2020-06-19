<php>
if($search_wd){
	$item_vod = ff_mysql_vod('wd:'.$search_wd.';limit:42;page_is:true;page_id:search;page_p:'.$search_page.';cache_name:default;cache_time:default;order:vod_'.$search_order.';sort:desc');
  $params = array('wd'=>urlencode($search_wd),'p'=>'FFLINK');
  $page = ff_url_page('vod/search', $params, true, 'search', 4);
}else if($search_actor){
	$item_vod = ff_mysql_vod('actor:'.$search_actor.';limit:42;page_is:true;page_id:search;page_p:'.$search_page.';cache_name:default;cache_time:default;order:vod_'.$search_order.';sort:desc');
  $params = array('actor'=>urlencode($search_actor),'p'=>'FFLINK');
  $page = ff_url_page('vod/search', $params, true, 'search', 4);
}else if($search_director){
	$item_vod = ff_mysql_vod('director:'.$search_director.';limit:42;page_is:true;page_id:search;page_p:'.$search_page.';cache_name:default;cache_time:default;order:vod_'.$search_order.';sort:desc');
  $params = array('director'=>urlencode($search_director),'p'=>'FFLINK');
  $page = ff_url_page('vod/search', $params, true, 'search', 4);
}else if($search_name){
	$item_vod = ff_mysql_vod('name:'.$search_name.';limit:42;page_is:true;page_id:search;page_p:'.$search_page.';cache_name:default;cache_time:default;order:vod_'.$search_order.';sort:desc');
  $params = array('name'=>urlencode($search_name),'p'=>'FFLINK');
  $page = ff_url_page('vod/search', $params, true, 'search', 4);
}else if($search_title){
	$item_vod = ff_mysql_vod('title:'.$search_title.';limit:42;page_is:true;page_id:search;page_p:'.$search_page.';cache_name:default;cache_time:default;order:vod_'.$search_order.';sort:desc');
  $params = array('title'=>urlencode($search_title),'p'=>'FFLINK');
  $page = ff_url_page('vod/search', $params, true, 'search', 4);
}
$totalpages = ff_page_count('search', 'totalpages');
</php><!DOCTYPE html>
<html lang="zh-cn">
<head>
<include file="BlockTheme:header_meta" />
<include file="BlockSeo:vod_search" />
</head>
<body class="vod-search">
<include file="BlockTheme:header" />
<div class="content">
<div class="container">
<div class="panel">
	<div class="panel-heading clearfix">
		<h3 class="panel-title">搜索结果：<span class="text-primary">{$search_name}{$search_actor}{$search_director}{$search_wd}</span> 
		<small class="text-gray">共有<span class="text-primary">{:ff_page_count('search', 'records')}</span>个视频 第<span class="text-primary">{$search_page}</span>页</small></h3>
	</div>
	<div class="panel-max">   
		<ul class="thumbnail-group clearfix">
			<include file="BlockTheme:item_vod" />
		</ul>
	</div>
	<!-- -->
	<gt name="totalpages" value="1">
	<div class="clearfix"></div>
	<div class="text-center">
		<ul class="pagination pagination-lg hidden-xs">
			{$page}
		</ul>
		<ul class="pagination pager visible-xs">
			<gt name="search_page" value="1">
				<php>$params['p'] = $search_page-1</php>
				<li><a id="ff-prev" href="{:ff_url('vod/search', $params, true)}">上一页</a></li>
			</gt>
			<lt name="search_page" value="$totalpages">
				<php>$params['p'] = $search_page+1</php>
				<li><a id="ff-next" href="{:ff_url('vod/search', $params, true)}">下一页</a></li>
			</lt>
	 </ul>
	</div>
	</gt>
</div><!--panel end -->
</div><!--container -->
</div><!--content end -->
<include file="BlockTheme:footer" />
</body>
</html>