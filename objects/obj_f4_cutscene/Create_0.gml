video_open("f4_cutscene_video.mov");

event_inherited();

alarm[0] = 2 * game_get_speed(gamespeed_fps);

show_text = true;

text_index = 0;
displayText = ["Thanks for accompanying me here. I'll miss you so much.",
			   "The outcome isn’t the greatest -- twins split up and all -- but I know you'll do amazing.",
			   "So you're really leaving without me, huh?",
			   "I guess there's nothing to do but hope we'll be close again in our next life.",
			   "What?",
			   "..!",
			   "Why punish me? I’m just…protecting myself.",
			   "That's all..."];