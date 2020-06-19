<notempty name="feifei.vod_actor">
<volist name=":explode(',',ff_xml_vodactor($feifei['vod_director']))" id="feifei" offset="0" length="2">
<a href="{:ff_url('vod/search',array('director'=>urlencode($feifei)),true)}">{$feifei}</a>
</volist>
</notempty>