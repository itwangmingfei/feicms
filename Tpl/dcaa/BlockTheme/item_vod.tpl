<volist name="item_vod" id="feifei"><li>
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