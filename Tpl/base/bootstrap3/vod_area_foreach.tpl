<notempty name="feifei.vod_area">
<volist name=":explode(',',$feifei['vod_area'])" id="feifeiarea">
<a href="{:ff_url('list/select',array('id'=>$feifei['vod_cid'],'type'=>'','area'=>urlencode($feifeiarea),'year'=>'','star'=>'','state'=>'','order'=>'addtime'),true)}">{$feifeiarea}</a>
</volist>
<else/>
<a href="javascript:;">未知</a>
</notempty>