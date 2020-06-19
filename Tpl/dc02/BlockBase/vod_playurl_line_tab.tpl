<!--在线观看TAB标签组件 -->
<notempty name="playurl_line">
<div class="detail-source">
	<ul class="detail-tab ff-playurl-tab detail-tab-zt clearfix" id="detail-tab" data-active=".ff-playurl-tab-{$play_sid}">
		<volist name="playurl_line" id="feifei" key="n">
		<eq name="n" value="1"><assign name="active" value="active" /><else/><assign name="active" value=""/></eq>
		<li class="{$active}">
			<a href="javascript:;" data-target=".ff-playurl-tab-{$feifei.player_sid}" data-toggle="tab">{$feifei.player_name_zh}</a>
		</li>
		</volist>
	</ul>
	<div class="detail-content tab-content ff-playurl-tab" id="detail-content">
		<volist name="playurl_line" id="feifei" key="k">
		<eq name="k" value="1"><assign name="active" value="active fade in" /><else/><assign name="active" value="fade"/></eq>
		<ul class="detail-play-list clearfix tab-pane ff-playurl ff-playurl-tab-{$feifei.player_sid} {$active}" data-active="{$vod_id}-{$play_sid}-{$play_pid}" data-more="{$Think.config.ui_playurl|intval}">
			<volist name="feifei.son" id="feifeison" key="pid">
			<li data-id="{$vod_id}-{$feifei.player_sid}-{$pid}"><a href="{:str_replace('video/eplay/',$list_dir.'/',ff_url_vod_play($list_id,$list_dir,$vod_id,$vod_ename,$feifei['player_sid'],$pid))}" title="{$feifeison.title}"><if condition="(strlen($feifeison['title']) eq 8) and is_numeric($feifeison['title'])">{$feifeison.title|msubstr=2,5}<else/>{$feifeison.title|msubstr=0,6}</if></a></li>
			</volist>
		</ul>
		</volist>
	</div>
</div>
</notempty>