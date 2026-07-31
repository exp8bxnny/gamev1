var res = video_draw();
var status = res[0];

if (status == 0) {
    var surface = res[1];
    //draw_surface(surface, 0, 0);
	draw_surface_ext(surface, 0, 0, 0.8, 0.8, 0, c_white, 1);
} else {
	video_close();
	obj_player.x = 1509;
	obj_player.y = 2717;
	room_goto(rm_main);
}