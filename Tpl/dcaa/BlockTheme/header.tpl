<nav class="header" data-dir="#nav-{$list_dir}">
	<div class="navbar-header">
		<div class="container">
			<h1 class="navbar-brand"><a href="{$root}" title="{$site_name}"><img src="{$tpl_path}Images/logo.png" alt="{$site_name}" /></a></h1>
			<a class="navbar-toggle primary-toggle visible-xs" href="javascript:;" data-toggle="owl" data-target="#navbar-primary"><i class="iconfont iconfont-menu">&#xe6a9;</i></a> <a class="navbar-toggle history-toggle visible-xs" href="javascript:;" data-toggle="owl" data-target="#history-dropdown"><i class="iconfont iconfont-history">&#xe64c;</i></a> <a class="navbar-toggle search-toggle visible-xs" href="{:ff_url('search/index')}"><i class="iconfont iconfont-search">&#xe679;</i></a> <a class="navbar-toggle navbar-goback" href="javascript:;"><i class="iconfont iconfont-back">&#xe608;</i></a>
			<div class="navbar-history"> <a class="history-hover hidden-xs" href="javascript:;" data-hover="owl"><i class="iconfont iconfont-history">&#xe64c;</i></a>
				<div class="dropdown-menu animated fadeInDown" id="history-dropdown">
					<div class="history-heading clearfix">
						<h5>观看历史</h5>
						<a class="history-close" href="javascript::" data-dismiss="owl" data-target="#history-dropdown"><i class="iconfont iconfont-close">&#xe604;</i></a> </div>
					<div class="history-record-get">
						<p class="text-center text-light">loading...</p>
					</div>
				</div>
			</div>
			<form class="ff-search" data-sid="{$site_sid}" data-limit="{:C('ui_search_limit')}" role="search" action="{$root}index.php?s=vod-search" method="post" data-action="{:ff_url('vod/search',array('wd'=>'FFWD'), true)}">
				<div class="navbar-search hidden-xs">
					<input class="search-control ff-wd" type="text" name="wd" placeholder="请输入影片名称" />
					<button class="search-button" type="submit">搜索</button>
				</div>
			</form>
		</div>
	</div>
	<php>$nav_item = ff_mysql_nav(array('field'=>'*','limit'=>'0','order'=>'nav_id','sort'=>'asc'));</php>
	<div class="navbar" id="navbar-primary">
		<div class="navbar-primary" >
			<div class="container">
				<ul class="navbar-nav clearfix">
					<li id="nav-{$nav_item.0.nav_tips}"><a href="{:ff_url_nav($nav_item[0]['nav_link'],$nav_item[0]['nav_tips'])}">{$nav_item.0.nav_title}</a></li>
					<volist name="nav_item.1.nav_son" id="feifei">
					<li id="nav-{$feifei.nav_tips}"><a href="{:ff_url_nav($feifei['nav_link'],$feifei['nav_tips'])}">{$feifei.nav_title}</a></li>
					</volist>
					<li id="nav-{$nav_item.3.nav_tips}"><a href="{:ff_url_nav($nav_item[3]['nav_link'],$nav_item[3]['nav_tips'])}">{$nav_item.3.nav_title}</a></li>
					<li id="nav-{$nav_item.4.nav_tips}"><a href="{:ff_url_nav($nav_item[4]['nav_link'],$nav_item[4]['nav_tips'])}">{$nav_item.4.nav_title}</a></li>
					<li id="nav-{$nav_item.5.nav_tips}"><a href="{:ff_url_nav($nav_item[5]['nav_link'],$nav_item[5]['nav_tips'])}">{$nav_item.5.nav_title}</a></li>
				</ul>
			</div>
		</div>
		<div class="navbar-subnav">
			<div class="container">
				<ul class="navbar-nav clearfix">
					<li class="movie"><strong>{$nav_item.2.nav_title}：</strong></li>
					<volist name="nav_item.2.nav_son" id="feifei">
					<li id="nav-{$feifei.nav_tips}"><a href="{:ff_url_nav($feifei['nav_link'],$feifei['nav_tips'])}">{$feifei.nav_title}</a></li>
					</volist>
				</ul>
			</div>
		</div>
	</div>
</nav>
<!-- // header end-->