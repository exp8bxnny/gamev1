var active_key = rings[current_ring];

if (current_ring < 3) {
    var diff = abs(angle_difference(active_key.image_angle, active_key.target_angle));
    
    if (diff <= active_key.margin_of_error) {
        active_key.is_locked = true;
        active_key.is_active = false;
        
        active_key.image_angle = active_key.target_angle; 
        
        current_ring++;
        
        if (current_ring < 3) {
            rings[current_ring].is_active = true;
        } else {
			global.statueDone = true;
			obj_player.x = 3350;
			obj_player.y = 773;
			room_goto(rm_main);
            show_debug_message("Statue Puzzle Complete!");
        }
        
    } else {
        
        for (var i = 0; i < 3; i++) {
            rings[i].is_locked = false;
            rings[i].is_active = false;
            rings[i].image_angle = random(360); 
        }
        
        current_ring = 0;
        rings[0].is_active = true;
    }
}