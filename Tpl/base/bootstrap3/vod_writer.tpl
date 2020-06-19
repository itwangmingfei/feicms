<notempty name="vod_writer">
<volist name=":explode(',',ff_xml_vodactor($vod_writer))" id="feifei" offset="0" length="2">
<a href="{:ff_url('vod/search',array('writer'=>urlencode($feifei)),true)}">{$feifei}</a>
</volist>
<else />
<a href="javascript:;">未知</a>
</notempty>