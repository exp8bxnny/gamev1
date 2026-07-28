// Current battle section
battle_state = "dialogue";

// Dialogue
dialogue_text = "* The cat blocks your path.";
visible_characters = 0;
characters_per_second = 30;
dialogue_finished = false;

// Attack timing bar
attack_position = 0;
attack_speed = 0.8;
damage = 0;

// Prevent the same Z press from doing multiple things
input_delay = 5;

// Player health
player_hp = 100;
player_max_hp = 100;

// Enemy health
enemy_hp = 100;
enemy_max_hp = 100;

// Cat attack state
cat_turn_length = 6;
cat_turn_timer = cat_turn_length;

// Player square
dodge_player_x = 0.5;
dodge_move_speed = 0.3;

// Falling attacks
cat_attack_x = [];
cat_attack_y = [];

attack_spawn_timer = 0;
attack_spawn_delay = 0.1;
attack_fall_speed = 0.8;

// Brief protection after taking damage
hurt_timer = 0;

player_name = "YOU";
enemy_name = "CAT";

// Elyse
elyse_alpha = 1;
global.cat_defeated = false;