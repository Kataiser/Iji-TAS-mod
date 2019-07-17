//METHOD 3
//obj_shakescreen
instance_deactivate_region(x-1700,y-1500,3400,3000,1,1);
instance_activate_region(x-1400,y-1200,2800,2400,1);
instance_deactivate_object(obj_deactivateme);
instance_activate_region(x-1000,y-800,2000,1600,1);
instance_activate_object(obj_activateme);
if (obj_sabot.annihilatorbeta)
    instance_activate_region(5880,4704,392,192,1);
