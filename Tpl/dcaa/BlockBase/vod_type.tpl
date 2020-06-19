<notempty name="vod_type">
<volist name=":explode(',',$vod_type)" id="feifei">
<a href="{:ff_url('list/select',array('id'=>$list_id,'type'=>urlencode($feifei),'area'=>'','year'=>'','star'=>'','state'=>'','order'=>'hits'),true)}">{$feifei}</a>
</volist>
</notempty>