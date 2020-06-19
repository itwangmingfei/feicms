<php>$item_vod = ff_mysql_vod('field:list_id,list_dir,vod_id,vod_actor,vod_type,vod_area,vod_ename,vod_name,vod_jumpurl,vod_url,vod_pic,vod_content;cid:'.$vod_cid.';limit:7;cache_name:default;cache_time:default;order:vod_hits_lasttime;sort:desc');</php>
<div class="panel">
	<div class="panel-heading clearfix">
		<h3 class="panel-title">@《{$vod_name}》推荐同类型的{$list_name}</h3>
	</div>
	<div class="panel-max detail-hot">			
		<ul class="thumbnail-group clearfix">
			<include file="BlockTheme:item_vod" />
		</ul>
	</div>
</div><!--panel end -->