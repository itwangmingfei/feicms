<php>if($special_tag_name){
	$item_vod = ff_mysql_vod('limit:42;tag_name:'.$special_tag_name.';tag_list:vod_tag;cache_name:default;cache_time:default;order:vod_hits desc');
}else{
	$item_vod = ff_mysql_vod('limit:42;ids:'.$special_ids_vod.';cache_name:default;cache_time:default;order:vod_hits desc');
}
</php><!DOCTYPE html>
<html lang="zh-cn">
<head>
<include file="BlockTheme:header_meta" />
<include file="BlockSeo:special_detail" />
</head>
<body class="special-detail">
<include file="BlockTheme:header" />
<div class="content">
<div class="container">
<div class="panel">
	<div class="panel-heading clearfix">
		<h3 class="panel-title">专题：{$special_name}</h3>
	</div>
	<div class="special-intro clearfix">
		<img class="special-intro-pic ff-img" data-original="{$special_banner|ff_url_img}">
		<div class="special-intro-text">
			<h2>贝爷荒野求生系列</h2>
			<div class="special-content">
				{$special_content}
			</div>
		</div>
	</div>	
</div><!--panel end -->
<div class="panel">
	<div class="panel-heading clearfix">
		<h5 class="panel-title">贝爷荒野求生系列相关影片</h5>
	</div>
	<div class="panel-max">   
		<ul class="thumbnail-group clearfix">
			<include file="BlockTheme:item_vod" />
		</ul>
	</div>
</div><!--panel end -->
</div><!--container end -->
</div>
<include file="BlockTheme:footer" />
{$special_hits_insert}
</body>
</html>