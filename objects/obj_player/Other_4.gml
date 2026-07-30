wall_tilemap = layer_tilemap_get_id("Walls");

if (instance_number(object_index) > 1) {
    instance_destroy();
    exit;
}

if(room = rm_s2_f1){
	f1SceneDone = true;
	show_debug_message("f1scDone true");
}

if (room == rm_s2_e1end || room == rm_s2_e1battle) {
    visible = false;
} else {
    visible = true;
}

if(room == rm_s3_f2_maze){
	image_xscale = 0.625;
	image_yscale = 0.625;
	wall_tilemap = obj_maze;
} else {
	image_xscale = 1;
	image_yscale = 1;
}

/*if(room != rm_s3_f2_maze){
	x = 50;
	y = 50;
}*/