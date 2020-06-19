<notempty name="vod_actor">
<volist name=":explode(',',ff_xml_vodactor($vod_actor))" id="feifei" offset="0" length="3">
<a href="{:ff_url('vod/search',array('actor'=>urlencode($feifei)),true)}">{$feifei}</a>
</volist><a class="text-green hidden-xs hidden-sm" href="{:ff_url('vod/yanyuan',array('id'=>$vod_id),true)}">完整演员表>></a>
<else />
<a href="javascript:;">未知</a>
</notempty>