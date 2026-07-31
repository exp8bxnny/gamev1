wall_tilemap = layer_tilemap_get_id("Collision");

if (instance_number(object_index) > 1) {
    instance_destroy();
    exit;
}

if(room = rm_s2_f1){
	f1SceneDone = true;
	show_debug_message("f1scDone true");
}

if (room == rm_s2_e1battle || room == rm_s2_e1end ||
    room == rm_s3_e2battle || room == rm_s3_f2_maze) {
    visible = false;
} else {
    visible = true;
}