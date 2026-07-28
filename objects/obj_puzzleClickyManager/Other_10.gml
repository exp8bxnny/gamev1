if (current_ring < 3) {
    var active_ring = rings[current_ring];

    var diff = abs(angle_difference(active_ring.image_angle, active_ring.target_angle));


    if (diff <= active_ring.margin_of_error) {
        active_ring.is_locked = true;
        active_ring.is_active = false;
        active_ring.image_angle = active_ring.target_angle; 

        targets[current_ring].image_index = 1; 

        current_ring += 1; 

        if (current_ring < 3) {
            rings[current_ring].is_active = true; 
        } else {
            show_debug_message("Distributor Calibrated!");
        }
    } else {
        for (var i = 0; i < 3; i++) {
            rings[i].is_locked = false;
            rings[i].is_active = false;
            rings[i].image_angle = random(360); 
            targets[i].image_index = 0;     
        }

        current_ring = 0;
        rings[0].is_active = true; 
    }
}