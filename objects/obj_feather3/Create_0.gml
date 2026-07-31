if(global.statueDone){
	image_alpha = 100;
	//show_text = false;
} else {
	mask_index = -1;
	image_alpha = 0;
}

if(global.featherf3Collected){
	instance_destroy();
}