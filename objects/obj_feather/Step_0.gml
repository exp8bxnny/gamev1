if (place_meeting(x, y, obj_player)){
	show_text = true;
    image_alpha = 0;
	room_goto(rm_s2_maze);
}

if(obj_player.mazeDone){
	instance_destroy();
}