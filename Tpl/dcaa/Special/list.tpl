<php>$item_special = ff_mysql_special('limit:40;tag_name:'.$special_type.';tag_list:special_type;page_is:true;page_id:special;page_p:'.$special_page.';cache_name:default;cache_time:default;order:special_stars;sort:desc');
$page = ff_url_page('special/show',array('type'=>urlencode($special_type),'p'=>'FFLINK'),true,'special',4);
$totalpages = ff_page_count('special', 'totalpages');
</php><!DOCTYPE html>
<html lang="zh-cn">
<head>
<include file="BlockTheme:header_meta" />
<include file="./Tpl/base/seo/special_list" />
</head>
<body class="special-list">
<include file="BlockTheme:header" />
<div class="content">
<div class="container">
<div class="panel">
	<div class="panel-heading clearfix">
		<h5 class="panel-title">影视专题<small>(共有<strong class="text-primary">{:ff_page_count('special', 'records')}</strong>专题)</small></h5>
	</div>
	<div class="panel-body">
		<ul class="thumbnail-group thumbnail-group-special clearfix">
		<volist name="item_special" id="feifei">
			<li>
				<a class="thumbnail" href="{:ff_url('special/read', array('id'=>$feifei['special_id']), true)}">
					<img class="ff-img" data-original="{:ff_url_img($feifei['special_logo'])}" alt="{$feifei.special_name}">
				</a>
				<div class="video-info">
					<h5><a href="{:ff_url('special/read', array('id'=>$feifei['special_id']), true)}" title="{$feifei.special_name}">{$feifei.special_name|msubstr=0,10}</a></h5>
				</div>
			</li>
		</volist>	
		</ul>
	</div>
	<gt name="totalpages" value="1">
	<div class="text-center clearfix">
		<ul class="pagination pagination-lg hidden-xs">
			{$page}
		</ul>
		<ul class="pagination pager visible-xs">
			<gt name="special_page" value="1">
				<li><a id="ff-prev" href="{:ff_url('special/show',array('type'=>urlencode($special_type),'p'=>$special_page-1) )}">上一页</a></li>
			</gt>
			<lt name="special_page" value="$totalpages">
				<li><a id="ff-next" href="{:ff_url('special/show',array('type'=>urlencode($special_type),'p'=>$special_page+1) )}">下一页</a></li>
			</lt>
		 </ul> 
	</div>
	</gt>
</div><!--panel end -->
</div><!--container end -->
</div>
<include file="BlockTheme:footer" />
</body>
</html>