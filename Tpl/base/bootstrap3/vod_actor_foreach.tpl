<notempty name="feifei.vod_actor">
<volist name=":explode(',',ff_xml_vodactor($feifei['vod_actor']))" id="feifei" offset="0" length="2">
<a href="{:ff_url('vod/search',array('actor'=>urlencode($feifei)),true)}">{$feifei}</a>
</volist>
</notempty>