<!DOCTYPE html>
<html lang="zh-cn">
<head>
<include file="BlockTheme:header_meta" />
<include file="BlockSeo:vod_list" />
</head>
<body class="vod-list">
<include file="BlockTheme:header" />
<div class="content">
<div class="container">
<div class="panel">
	<div class="panel-heading clearfix">
		<h3 class="panel-title">{$list_name}热播</h3>
		<div class="panel-tabs pull-left pl40">
			<a href="javascript:;" class="active">Hot</a>
		</div>
	</div>
	<div class="panel-body tab-content pt15">
		<div class="tab-panel" id="con_hot_1" style="display: block;">
			<ul class="list-group list-group-50 list-group-dot clearfix">
			<volist name=":ff_mysql_vod('field:list_id,list_dir,vod_id,vod_ename,vod_name,vod_jumpurl,vod_play,vod_server,vod_url;cid:'.$list_id.';limit:30;cache_name:default;cache_time:default;order:vod_stars desc,vod_hits_lasttime;sort:desc')" id="feifei">
				<li>   
				<a class="text-primary" href="{:str_replace('video/ename/',$feifei['list_dir'].'/',ff_url_vod_read($feifei['list_id'],$feifei['list_dir'],$feifei['vod_id'],$feifei['vod_ename'],$feifei['vod_jumpurl']))}">{$feifei.vod_name}</a>
				<span class="sep">-</span>
				<a href="{:str_replace('video/eplay/',$feifei['list_dir'].'/',ff_url_vod_play($feifei['list_id'],$feifei['list_dir'],$feifei['vod_id'],$feifei['vod_ename'],ff_array(ff_url_play_end($feifei['vod_url']),0),ff_array(ff_url_play_end($feifei['vod_url']),1)))}">{$feifei.vod_url|ff_url_play_end|ff_array=2}</a>
				<span class="pl10 hidden-xs">首播：<span>{$feifei.vod_filmtime|date='Y-m-d',###}</span></span>
				<span class="pl10 hidden-xs">更新：<span>{$feifei.vod_addtime|date='Y-m-d H:i:s',###}</span></span>
				</li>
			</volist>
			</ul>
		</div>
	</div>
</div><!--panel end -->
<php>
$item_vod = ff_mysql_vod('cid:'.$list_id.';limit:42;page_is:true;page_id:list;page_p:'.$list_page.';cache_name:default;cache_time:default;order:vod_addtime;sort:desc');
if($action == 'category'){
	$page = ff_url_page('vod/category',array('id'=>$list_dir,'p'=>'FFLINK'),true,'list',4);
	$page = str_replace('video/category/','',$page);
}else{
  $page = ff_url_page('vod/show',array('id'=>$list_id,'list_dir'=>$list_dir,'p'=>'FFLINK'),true,'list',4);
}
$totalpages = ff_page_count('list', 'totalpages');
</php>
<div class="panel">
	<div class="panel-heading clearfix">
		<h3 class="panel-title">{$list_name} <small>第<span class="text-primary">{$list_page}</span>页</small></h3>
		<div class="panel-more"><a class="text-primary" href="{:ff_url('vod/type',array('id'=>$list_id,'type'=>'','area'=>'','year'=>'','star'=>'','state'=>'','order'=>'hits','p'=>1),true)}">筛选</a></div>
	</div>
	<div class="panel-max"> 
		<ul class="thumbnail-group clearfix">
			<include file="BlockTheme:item_vod" />
		</ul>
	</div>
	<gt name="totalpages" value="1">
	<div class="text-center clearfix">
		<ul class="pagination pagination-lg hidden-xs">
			{$page}
		</ul>
		<ul class="pagination pager visible-xs">
			<gt name="list_page" value="1">
				<li><a id="ff-prev" href="{:str_replace('video/category/','',ff_url_vod_show($list_id,$list_dir,$list_page-1))}">上一页</a></li>
			</gt>
			<lt name="list_page" value="$totalpages">
				<li><a id="ff-next" href="{:str_replace('video/category/','',ff_url_vod_show($list_id,$list_dir,$list_page+1))}">下一页</a></li>
			</lt>
		 </ul> 
	</div>
	</gt>
</div>
<!-- -->
<notempty name="list_extend.star">
<div class="panel">
	<div class="panel-heading clearfix">
		<h3 class="panel-title">热门{$list_name}演员</h3>
	</div>
	<div class="panel-body">
		<div class="tags-group tags-group-lg">
		<volist name=":explode(',',$list_extend['star'])" id="feifei"><a href="{:ff_url('vod/type',array('id'=>$type_id,'type'=>urlencode($type_type),'area'=>urlencode($type_area),'year'=>$type_year,'star'=>urlencode($feifei),'state'=>urlencode($type_state),'order'=>$type_order,'p'=>1),true)}">{$feifei}</a></volist>
		</div>
	</div>
</div><!--panel end -->
</notempty>
</div><!--container end -->
</div>
<include file="BlockTheme:footer" />
</body>
</html>