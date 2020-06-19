<!DOCTYPE html>
<html lang="zh-cn">
<head>
<include file="BlockTheme:header_meta" />
<include file="BlockSeo:vod_detail" />
</head>
<body class="vod-detail">
<include file="BlockTheme:header" />
<div class="content">   	
<div class="container">
<div class="panel">
<div class="breadcrumbs">
	当前位置：<a href="{$root}">首页</a><em class="sep">&gt;</em><a href="{:ff_url_vod_show($list_id,$list_dir,1)}">{$list_name}</a><em class="sep">&gt;</em><span>{$vod_name}</span>
</div>
<div class="detail clearfix">
	<div class="detail-mobile hidden-xs">
		<a class="btn btn-primary" href="javascript:;" data-hover="owl"><i class="iconfont iconfont-phone">&#xe605;</i> 扫码手机观看</a>
		<div class="dropdown-menu animated fadeInDown">
			<img id="qrcode" src="{$public_path}images/qrcode/weixin.jpg"><p style="text-align:center">扫码发送网址到手机观看</p>
		</div>
	</div>  
	<div class="detail-poster">
		<a href="{:str_replace('video/ename/',$list_dir.'/',ff_url_vod_read($list_id,$list_dir,$vod_id,$vod_ename,$vod_jumpurl))}"><img src="{$vod_pic|ff_url_img=$vod_content}" alt="{$vod_name}海报剧照"></a>
	</div>
	<div class="detail-info">
		<div class="detail-header clearfix">
		<h2>{$vod_name}<small>{$vod_state|default='正片'}{$vod_version}</small></h2>		
		<h3>{$vod_title}</h3>
		<div class="score-wrap hidden-xs">
			<include file="BlockBase:vod_score" />
		</div>
	</div>
	<ul class="detail-actor clearfix">
		<li><label>主演：</label>{$vod_actor|ff_url_search}</li>
		<li><p><label>导演：</label>{$vod_director|ff_url_search='director'}</p>
		<gt name="vod_total" value="0"><p><label>总共集数：</label><span class="text-dark">{$vod_total}</span></p></gt>
		</li>
		<li class="clearfix">
		<p><label class="hidden-xs">类型：</label><a href="{:ff_url_vod_show($list_id,$list_dir,1)}">{$list_name}</a><include file="BlockBase:vod_type" /></p>	
		<p><label class="hidden-xs">发行地区：</label><include file="BlockBase:vod_area" /></p>
		<p><label class="hidden-xs">影片对白：</label><span class="text-dark">{$vod_language|default='普通话'}</span></p>
		</li>
		<li class="clearfix">
		<p><label><span class="hidden-xs">影片</span>时长：</label><span class="text-dark">{$vod_length|ff_Second2Length}</span></p>
		<p><label><span class="hidden-xs">发行</span>年份：</label><include file="BlockBase:vod_year" /></p>
		<p class="hidden-xs"><label>上映时间：</label><span class="text-dark">{$vod_filmtime|default='loading...'}</span></p>
		</li>
		<li class="intro hidden-xs">
		<p class="detail-intro text-justify"><label>剧情：</label>{$vod_content|strip_tags}</p>
		<a class="detail-intro-more text-primary" href="javascript:;" id="detail-intro-more">详情</a>
		</li>
	</ul>
</div><!--detail end -->	
	<include file="BlockBase:vod_playurl" />
	<include file="BlockBase:vod_playurl_line_tab" />				
</div><!--container end -->
</div><!--content end -->
<include file="BlockTheme:vod_series" />
<include file="BlockTheme:vod_actor" />
<include file="BlockTheme:vod_list" />
<include file="BlockTheme:vod_forum" />
<include file="BlockTheme:footer" />
</body>
</html>