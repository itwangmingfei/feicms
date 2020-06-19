<notempty name="feifei.vod_year">
<volist name=":explode(',',$feifei['vod_year'])" id="feifeiyear">
<a href="{:ff_url('list/select',array('id'=>$list_id,'type'=>'','area'=>'','year'=>$feifeiyear,'star'=>'','state'=>'','order'=>'hits'),true)}">{$feifeiactor}</a></volist>
<else />
未知
</notempty>