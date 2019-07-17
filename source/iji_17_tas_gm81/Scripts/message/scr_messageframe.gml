//Create message frame
if (room==rom_cut){
    with (obj_frame) instance_destroy();
    count=0;
    while (count<100){
        instance_create(8*count,472,obj_frame);
        count+=1;
        }
    if (obj_chatmessagetext.page=(obj_chatmessagetext.pages-1))
        with (obj_scrollarrow) instance_destroy();
    }

else{
    with (obj_frame) instance_destroy();
    count=0;
    while (count<100){
        instance_create(obj_shakescreen.x-400+(8*count),obj_shakescreen.y+172,obj_frame);
        count+=1;
        }
    if ((obj_messagetext.page=(obj_messagetext.pages-1) && instance_number(obj_chat)==1) || (obj_messagetext.pages==1 && instance_number(obj_chat)==0))
        with (obj_scrollarrow) instance_destroy();
    }