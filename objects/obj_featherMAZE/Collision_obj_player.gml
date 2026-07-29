obj_player.mazeDone = true;
instance_destroy();
obj_player.x = obj_player.xprevious;
obj_player.y = obj_player.yprevious;
room_goto(rm_s3_f2);