if(global.statueDone){
	image_alpha = 100;
	//show_text = false;
} else {
	image_alpha = 0;
}

if(global.featherf4Collected){
	instance_destroy();
}