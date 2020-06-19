<php>$item_vod = ff_mysql_vod('cid:'.$select_id.';limit:42;tag_name:'.$select_type.';tag_list:vod_type;area:'.$select_area.';year:'.implode(',',str_split($select_year,4)).';actor:'.$select_star.';state:'.$select_state.';page_is:true;page_id:type;page_p:'.$select_page.';cache_name:default;cache_time:default;order:vod_'.$select_order.';sort:desc');
$params = array('id'=>$select_id,'type'=>urlencode($select_type),'area'=>urlencode($select_area),'year'=>$select_year,'star'=>urlencode($select_star),'state'=>urlencode($select_state),'order'=>$select_order,'p'=>'FFLINK');
$page = ff_url_page('list/select', $params, true, 'type', 4);
$totalpages = ff_page_count('type', 'totalpages');
</php><!DOCTYPE html>
<html lang="zh-cn">
<head>
<include file="BlockTheme:header_meta" />
<include file="BlockSeo:vod_type" />
</head>
<body class="vod-type">
<include file="BlockTheme:header" />
<div class="content">
<div class="container">
<div class="panel">
	<div class="panel-heading clearfix">
		<h3 class="panel-title">{$list_name} <small>{$select_type} {$select_area} {$select_year} {$select_star} {$select_state} 共有<label class="text-primary">{:ff_page_count('type', 'records')}</label>个影片  第<span class="text-primary">{$select_page}</span>页</small></h3>
	</div>
	<div class="category">
		<dl class="clearfix">
    <dt><span>频道：</span></dt>
    <dd class="ff-gallery">
			<volist name=":ff_mysql_list('sid:1;limit:0;cahce_name:default;cahce_time:default;order:list_pid asc,list_oid;sort:asc')" id="feifei">
			<notempty name="feifei.list_son">
			<volist name="feifei.list_son" id="feifeison">
			<a href="{:ff_url('list/select',array('id'=>$feifeison['list_id'],'type'=>'','area'=>'','year'=>'','star'=>'','state'=>'','order'=>'addtime','p'=>1),true)}" id="id{:md5($feifeison['list_id'])}">{$feifeison.list_name}</a>
			</volist>
			<else/>
			<a href="{:ff_url('list/select',array('id'=>$feifei['list_id'],'type'=>'','area'=>'','year'=>'','star'=>'','state'=>'','order'=>'addtime','p'=>1),true)}" id="id{:md5($feifei['list_id'])}">{$feifei.list_name}</a>
			</notempty>
			</volist>
		</dd>
		<notempty name="list_extend.area">
    <dt><span>地区：</span></dt>
    <dd class="ff-gallery">
    <a href="{:ff_url('list/select',array('id'=>$select_id,'type'=>urlencode($select_type),'area'=>'','year'=>$select_year,'star'=>urlencode($select_star),'state'=>urlencode($select_state),'order'=>$select_order,'p'=>1),true)}" id="area{:md5('')}">全部</a>
    <volist name=":explode(',',$list_extend['area'])" id="feifei" offset="0" length='15'><a href="{:ff_url('list/select',array('id'=>$select_id,'type'=>urlencode($select_type),'area'=>urlencode($feifei),'year'=>$select_year,'star'=>urlencode($select_star),'state'=>urlencode($select_state),'order'=>$select_order,'p'=>1),true)}" id="area{:md5($feifei)}">{$feifei}</a></volist></dd>
		</notempty>		
		<notempty name="list_extend.year">
    <dt><span>年代：</span></dt>
    <dd class="ff-gallery">
    <a href="{:ff_url('list/select',array('id'=>$select_id,'type'=>urlencode($select_type),'area'=>urlencode($select_area),'year'=>'','star'=>urlencode($select_star),'state'=>urlencode($select_state),'order'=>$select_order,'p'=>1),true)}" id="year{:md5('')}">全部</a>
    <volist name=":explode(',',$list_extend['year'])" id="feifei" offset="0" length='10'><a href="{:ff_url('list/select',array('id'=>$select_id,'type'=>urlencode($select_type),'area'=>urlencode($select_area),'year'=>$feifei,'star'=>urlencode($select_star),'state'=>urlencode($select_state),'order'=>$select_order,'p'=>1),true)}" id="year{:md5($feifei)}">{$feifei}</a></volist>
		<a href="{:ff_url('list/select',array('id'=>$select_id,'type'=>urlencode($select_type),'area'=>urlencode($select_area),'year'=>'20002010','star'=>urlencode($select_star),'state'=>urlencode($select_state),'order'=>$select_order,'p'=>1),true)}" id="year{:md5('20002010')}">2010-2000</a>
		<a href="{:ff_url('list/select',array('id'=>$select_id,'type'=>urlencode($select_type),'area'=>urlencode($select_area),'year'=>'19901999','star'=>urlencode($select_star),'state'=>urlencode($select_state),'order'=>$select_order,'p'=>1),true)}" id="year{:md5('19901999')}">90年代</a>
		<a href="{:ff_url('list/select',array('id'=>$select_id,'type'=>urlencode($select_type),'area'=>urlencode($select_area),'year'=>'18001989','star'=>urlencode($select_star),'state'=>urlencode($select_state),'order'=>$select_order,'p'=>1),true)}" id="year{:md5('18001989')}">更早</a></dd>
		</notempty>
    <notempty name="list_extend.star">
    <dt><span>明星：</span></dt>
    <dd class="ff-gallery">
    <a href="{:ff_url('list/select',array('id'=>$select_id,'type'=>urlencode($select_type),'area'=>urlencode($select_area),'year'=>$select_year,'star'=>'','state'=>urlencode($select_state),'order'=>$select_order,'p'=>1),true)}" id="star{:md5('')}">全部</a>
    <volist name=":explode(',',$list_extend['star'])" id="feifei" offset="0" length='13'><a href="{:ff_url('list/select',array('id'=>$select_id,'type'=>urlencode($select_type),'area'=>urlencode($select_area),'year'=>$select_year,'star'=>urlencode($feifei),'state'=>urlencode($select_state),'order'=>$select_order,'p'=>1),true)}" id="star{:md5($feifei)}">{$feifei}</a></volist></dd>
    </notempty>		
    <notempty name="list_extend.state">
    <dt><span>资源：</span></dt>
    <dd class="ff-gallery">
    <a href="{:ff_url('list/select',array('id'=>$select_id,'type'=>urlencode($select_type),'area'=>urlencode($select_area),'year'=>$select_year,'star'=>urlencode($select_star),'state'=>'','order'=>$select_order,'p'=>1),true)}" id="state{:md5('')}">全部</a>
    <volist name=":explode(',',$list_extend['state'])" id="feifei" offset="0" length='15'><a href="{:ff_url('list/select',array('id'=>$select_id,'type'=>urlencode($select_type),'area'=>urlencode($select_area),'year'=>$select_year,'star'=>urlencode($select_star),'state'=>urlencode($feifei),'order'=>$select_order,'p'=>1),true)}" id="state{:md5($feifei)}">{$feifei}</a></volist></dd>
    </notempty>		
		<dt><span>排序：</span></dt>
    <dd class="ff-gallery">
    	<a href="{:ff_url('list/select',array('id'=>$select_id,'type'=>urlencode($select_type),'area'=>urlencode($select_area),'year'=>$select_year,'star'=>urlencode($select_star),'state'=>urlencode($select_state),'order'=>hits,'p'=>1),true)}" id="orderhits">最近热播</a>
      <a href="{:ff_url('list/select',array('id'=>$select_id,'type'=>urlencode($select_type),'area'=>urlencode($select_area),'year'=>$select_year,'star'=>urlencode($select_star),'state'=>urlencode($select_state),'order'=>addtime,'p'=>1),true)}" id="orderaddtime">最新上映</a>
      <a href="{:ff_url('list/select',array('id'=>$select_id,'type'=>urlencode($select_type),'area'=>urlencode($select_area),'year'=>$select_year,'star'=>urlencode($select_star),'state'=>urlencode($select_state),'order'=>gold,'p'=>1),true)}" id="ordergold">评分最高</a>
		</dl>
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
			<gt name="page.totalpages" value="1">
        <php>$params['p'] = $select_page-1</php>
        <li><a id="ff-prev" href="{:ff_url('list/select', $params, true)}">上一页</a></li>
      </gt>
      <lt name="list_page" value="$totalpages">
        <php>$params['p'] = $select_page+1</php>
        <li><a id="ff-next" href="{:ff_url('list/select', $params, true)}">下一页</a></li>
      </lt>
		 </ul> 
	</div>
	</gt>
</div><!--panel end -->
</div>
</div>
<include file="BlockTheme:footer" />
<script>
$("#id{$select_id|md5}").removeClass("btn-default").addClass("active");
$("#type{$select_type|md5}").removeClass("btn-default").addClass("active");
$("#area{$select_area|md5}").removeClass("btn-default").addClass("active gallery-active");
$("#year{$select_year|md5}").removeClass("btn-default").addClass("active gallery-active");
$("#star{$select_star|md5}").removeClass("btn-default").addClass("active gallery-active");
$("#state{$select_state|md5}").removeClass("btn-default").addClass("active gallery-active");
$("#order{$select_order}").removeClass("btn-default").addClass("active");
</script>
</body>
</html>