<notempty name="vod_ids">
	<php>
	$item_vod = ff_mysql_vod('ids:'.$vod_ids.';field:list_id,list_dir,vod_id,vod_ename,vod_name,vod_play,vod_server,vod_url;cache_name:default;cache_time:default;order:vod_id;sort:desc');
	$array_vod = array();
	foreach($item_vod as $key=>$value){
		$array_vod[$value['vod_id']] = $value;
	}
	unset($item_vod);
	$array_id = explode(',',$vod_ids);
	krsort($array_id);//倒序按最后时间
	foreach($array_id as $key=>$value){
		$item_vod[$value] = $array_vod[$value];
	}
	unset($array_vod);
	</php>
  <ul class="history-list">
  <volist name="item_vod" id="feifei">
  <li><a class="text-primary" href="{:str_replace('video/ename/',$feifei['list_dir'].'/',ff_url_vod_read($feifei['list_id'],$feifei['list_dir'],$feifei['vod_id'],$feifei['vod_ename'],$feifei['vod_jumpurl']))}" title="{$feifei.vod_name}">{$feifei.vod_name}</a><span class="sep">-</span><a href="{:str_replace('video/eplay/',$feifei['list_dir'].'/',ff_url_vod_play($feifei['list_id'],$feifei['list_dir'],$feifei['vod_id'],$feifei['vod_ename'],ff_array(ff_url_play_end($feifei['vod_url']),0),ff_array(ff_url_play_end($feifei['vod_url']),1)))}">{$feifei.vod_url|ff_url_play_end|ff_array=2}</a></li>
  </volist>
  </ul>
<else/>
	<p class="text-center text-light">暂无观看记录</p>
</notempty>