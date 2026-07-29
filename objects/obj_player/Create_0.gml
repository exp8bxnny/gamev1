wall_tilemap = layer_tilemap_get_id("Walls");
move_speed = 3;

// checks if this room's feather is collected
// player cannot move on to next room until true
s1Done = false;
mazeDone = false;

global.textf1Done = false;
global.featherf1Collected = false;

global.cat_defeated = false;