<notempty name="vod_director">
<volist name=":explode(',',ff_xml_vodactor($vod_director))" id="feifei" offset="0" length="3">
<a href="{:ff_url('vod/search',array('director'=>urlencode($feifei)),true)}">{$feifei}</a>
</volist>
<else />
<a href="javascript:;">未知</a>
</notempty>