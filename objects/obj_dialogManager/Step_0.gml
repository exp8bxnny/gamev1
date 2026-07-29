// Inherit the parent event
event_inherited();

if(!hasTalked){
	if(obj_player.f1SceneDone){
		dialog.add("scene f1 done");
		dialog.add("sc f2 l2");
		hasTalked = true;
	}
}