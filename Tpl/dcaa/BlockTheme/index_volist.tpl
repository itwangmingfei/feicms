<php>$item_vod=ff_mysql_vod('field:list_id,list_dir,vod_id,vod_actor,vod_type,vod_area,vod_ename,vod_name,vod_jumpurl,vod_url,vod_pic,vod_content;cid:'.$feifeilist['list_id'].';limit:6;cache_name:default;cache_time:default;order:vod_stars desc,vod_addtime;sort:desc');
if(!$item_vod){continue;}</php>
<div class="panel clearfix">
	<div class="panel-main">
		<div class="panel-heading clearfix">
			<h3 class="panel-title">
				<a href="{$feifeilist.list_link}">{$feifeilist.list_name}</a>
			</h3>
			<div class="panel-more">
				<a class="text-primary" href="{$feifeilist.list_link}">更多<i class="iconfont iconfont-more">&#xe617;</i></a>
			</div>
		</div>
		<ul class="thumbnail-group clearfix">
			<volist name="item_vod" id="feifei" key="url_key"><li>
			<a class="thumbnail" href="{:ff_url_play($feifei['list_id'],$feifei['list_dir'],$feifei['vod_id'],$feifei['vod_ename'],ff_array(ff_url_play_end($feifei['vod_url']),0),ff_array(ff_url_play_end($feifei['vod_url']),1))}">
				<img class="ff-img" data-original="{:ff_url_img($feifei['vod_pic'],$feifei['vod_content'])}" alt="{$feifei.vod_name}">
				<span class="video-grade">{$feifei.vod_url|ff_url_play_end|ff_array=2}</span>
			</a>
			<div class="video-info">
				<h5><a href="{:ff_url_read_vod($feifei['list_id'],$feifei['list_dir'],$feifei['vod_id'],$feifei['vod_ename'],$feifei['vod_jumpurl'])}" title="{$feifei.vod_name}">{$feifei.vod_name}</a></h5>
				<p>
				<notempty name="feifei.vod_actor">
					<include file="BlockBase:vod_actor_foreach" />
				 <else/>
					<include file="BlockBase:vod_type_foreach" />
					<include file="BlockBase:vod_area_foreach" />
				</notempty>
				</p>
			</div>
			</li></volist>
		</ul>
	</div>
	<div class="panel-aside">
		<ul class="rank-group clearfix">
			<volist name=":ff_mysql_vod('field:list_id,list_dir,vod_id,vod_ename,vod_name,vod_jumpurl,vod_url;cid:'.$feifeilist['list_id'].';limit:10;cache_name:default;cache_time:default;order:vod_hits_month;sort:desc')" id="feifei"><li>
			<span class="rank-title"><a href="{:ff_url_read_vod($feifei['list_id'],$feifei['list_dir'],$feifei['vod_id'],$feifei['vod_ename'],$feifei['vod_jumpurl'])}" title="{$feifei.vod_name}">{$feifei.vod_name}</a></span>
			<span class="rank-grade">{$feifei.vod_gold|ff_gold}</span>
			</li></volist>
		</ul>
	</div>	
</div><!--panel end -->