<ul class="thumbnail-group clearfix">
	<volist name="item_tab" id="feifei" offset="0" length="7">
	<li>
	<a class="thumbnail" href="{:str_replace('video/eplay/',$feifei['list_dir'].'/',ff_url_vod_play($feifei['list_id'],$feifei['list_dir'],$feifei['vod_id'],$feifei['vod_ename'],ff_array(ff_url_play_end($feifei['vod_url']),0),ff_array(ff_url_play_end($feifei['vod_url']),1)))}">
		<img src="{:ff_url_img($feifei['vod_pic'],$feifei['vod_content'])}" alt="{$feifei.vod_name}" />
		<span class="video-grade">{$feifei.vod_url|ff_url_play_end|ff_array=2}</span>
	</a>
	<div class="video-info">
		<h5><a href="{:str_replace('video/ename/',$feifei['list_dir'].'/',ff_url_vod_read($feifei['list_id'],$feifei['list_dir'],$feifei['vod_id'],$feifei['vod_ename'],$feifei['vod_jumpurl']))}" title="{$feifei.vod_name}">{$feifei.vod_name}</a></h5>
	</div>
	</li>
	</volist>
</ul>
<ul class="list-group list-group-dot clearfix">
	<volist name="item_tab" id="feifei" offset="7" length="24">
	<li>												
	<a class="text-primary" href="{:str_replace('video/ename/',$feifei['list_dir'].'/',ff_url_vod_read($feifei['list_id'],$feifei['list_dir'],$feifei['vod_id'],$feifei['vod_ename'],$feifei['vod_jumpurl']))}">{$feifei.vod_name}</a><span class="sep">-</span><a href="{:str_replace('video/eplay/',$feifei['list_dir'].'/',ff_url_vod_play($feifei['list_id'],$feifei['list_dir'],$feifei['vod_id'],$feifei['vod_ename'],ff_array(ff_url_play_end($feifei['vod_url']),0),ff_array(ff_url_play_end($feifei['vod_url']),1)))}">{$feifei.vod_url|ff_url_play_end|ff_array=2}</a>
	</li>
	</volist>
</ul>