if(elyseDetected){
	sprite_index = spr_elyseRed;
} else {
	visible = true;
	if(sprite_index == spr_elyse1){
		sprite_index = spr_elyse2;
	} else {
		sprite_index = spr_elyse1
	}
}