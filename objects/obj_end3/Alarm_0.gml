if(animate = true){
	if(sprite_index == spr_end3){
		sprite_index = spr_end3glitch;
	} else {
		sprite_index = spr_end3;
	}
} else {
	if(sprite_index == red){
		sprite_index = black;
	} else {
		sprite_index = red;
	}
}