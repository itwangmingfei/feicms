<!DOCTYPE html>
<html lang="zh-cn">
<head>
<include file="BlockTheme:header_meta" />
<include file="BlockSeo:vod_play" />
</head>
<body class="vod-play">
<include file="BlockTheme:header" />
<div class="content">  
<div class="play">
<div class="container">
	<h2 class="text-nowrap">
		<a href="{:ff_url_vod_show($list_id,$list_dir,1)}">{$list_name}</a>
		<a href="{:str_replace('video/ename/',$list_dir.'/',ff_url_vod_read($list_id,$list_dir,$vod_id,$vod_ename,$vod_jumpurl))}">{$vod_name|msubstr=0,8}</a>
		<small>第{$play_pid}集</small>
	</h2>
	<include file="BlockBase:vod_player" />
	<div class="play-interaction clearfix">
		<div class="detail-mobile hidden-xs">
			<a class="btn btn-primary" href="javascript:;" data-hover="owl"><i class="iconfont iconfont-phone">&#xe605;</i> 扫描到手机观看</a>
			<div class="dropdown-menu animated fadeInDown">
				<img id="qrcode" src="{$public_path}images/qrcode/weixin.jpg" alt="loading">
				<p class="text-center text-light">微信扫码发送网址</p>
			</div>
		</div>  
		<div class="play-clipboard visible-xs">
			<a id="clipboard" class="btn btn-primary" href="javascript:;">复制网址分享给微信朋友</a>
		</div>
		<div class="play-btn">
			<include file="BlockBase:vod_playurl_next" />			
		</div>
		<div class="score-wrap hidden-xs">
			<include file="BlockBase:vod_score" />
		</div>
	</div>
	<div class="play-weixintip visible-xs">
		{:ff_url_ads('90_m')}
	</div>
	</div>
</div>
<!-- -->
<include file="BlockBase:vod_playurl" />
<div class="container">
	<div class="panel play-source">
		<include file="BlockBase:vod_playurl_line_tab" />
	</div>
	<div class="panel play-summary">
		<div class="panel-heading clearfix">
			<h3 class="panel-title">简介</h3>
		</div>
		<div class="panel-body">				
			<div class="play-intro">
				<div class="director">
					<span><label>导演：</label>{$vod_director|ff_url_search='director'}</span>
					<span><label>主演：</label>{$vod_actor|ff_url_search}</span>
					<span><label>类型：</label><a href="{:ff_url_vod_show($list_id,$list_dir,1)}">{$list_name}</a></span>	
					<span><label>地区：</label><include file="BlockBase:vod_area" /></span>
					<span><label>年份：</label><include file="BlockBase:vod_year" /></span>
					<span><a href="{:str_replace('video/ename/',$list_dir.'/',ff_url_vod_read($list_id,$list_dir,$vod_id,$vod_ename,$vod_jumpurl))}">查看整部剧情</a></span></br>
					<span>{$vod_content|strip_tags}</span>
				</div>
			</div>
		</div>
	</div>
	<!-- -->
	<include file="BlockTheme:vod_series" />
	<include file="BlockTheme:vod_list" />
	<include file="BlockTheme:vod_forum" />
</div>
<include file="BlockBase:vod_record_set" />
<include file="BlockBase:vod_hits_set" />
<include file="BlockTheme:footer" />
</body>
</html>