wall_tilemap = layer_tilemap_get_id("Walls");

if (instance_number(object_index) > 1) {
    instance_destroy();
    exit;
}

if (room == rm_s2_e1end) {
    visible = false;
} else {
    visible = true;
}

if(room == rm_s3_maze){
	wall_tilemap = obj_maze;
}

if(room != rm_s3_maze){
	x = 50;
	y = 50;
}