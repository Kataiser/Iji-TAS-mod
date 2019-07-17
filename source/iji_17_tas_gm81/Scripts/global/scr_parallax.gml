// 2 million is the parallax tile layer
tile_layer_shift(2000000,(x-xprev)/2,0)
with (obj_tasenship)
    x+=(obj_sabot.x-obj_sabot.xprev)/1.6;
xprev=x;
