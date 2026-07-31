if(!global.slidingDone){
	if (place_empty(x + 32, y + 0)){
		x += 64;
		y += 0;
	} else {
		if (place_empty(x + -32, y + 0)) {
			x += -64;
			y += 0;
		} else {
			if (place_empty(x + 0, y + 32)) {
				x += 0;
				y += 64; 
			} else {
				if (place_empty(x + 0, y + -32)){
					x += 0;
					y += -64;
				}
			}
		}
	}
}