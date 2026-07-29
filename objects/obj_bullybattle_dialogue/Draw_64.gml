var gui_width  = display_get_gui_width();
var gui_height = display_get_gui_height();

// -------------------------------------
// HEALTH BARS
// -------------------------------------

var health_width = gui_width * 0.25;
var health_height = 22;
var health_y = 45;

// ENEMY HEALTH — upper-right
var enemy_right = gui_width - 30;
var enemy_left = enemy_right - health_width;
var enemy_percentage = enemy_hp / enemy_max_hp;

// bully sprite
draw_sprite_ext(spr_bullyEVIL, -1, 400, 100, 3, 3, 0, -1, bully_alpha);

draw_set_halign(fa_right);
draw_set_valign(fa_bottom);
draw_set_color(c_white);
// Enemy text on right
draw_text(enemy_right, health_y - 5, enemy_name);

// Enemy bar background
draw_set_color(c_dkgray);
draw_rectangle(
    enemy_left,
    health_y,
    enemy_right,
    health_y + health_height,
    false
);

// Enemy remaining health
draw_set_color(c_red);
draw_rectangle(
    enemy_left,
    health_y,
    enemy_left + health_width * enemy_percentage,
    health_y + health_height,
    false
);

// Enemy border
draw_set_color(c_white);
draw_rectangle(
    enemy_left,
    health_y,
    enemy_right,
    health_y + health_height,
    true
);

// Enemy health numbers
draw_set_valign(fa_top);
draw_text(
    enemy_left,
    health_y + health_height + 5,
    string(enemy_hp) + " / " + string(enemy_max_hp)
);


// PLAYER HEALTH — upper-left
var player_left = 30;
var player_right = player_left + health_width;
var player_percentage = player_hp / player_max_hp;

draw_set_halign(fa_left);
draw_set_valign(fa_bottom);
draw_set_color(c_white);
draw_text(player_left, health_y - 5, player_name);

// Player bar background
draw_set_color(c_dkgray);
draw_rectangle(
    player_left,
    health_y,
    player_right,
    health_y + health_height,
    false
);

// Player remaining health
draw_set_color(c_lime);
draw_rectangle(
    player_left,
    health_y,
    player_left + health_width * player_percentage,
    health_y + health_height,
    false
);

// Player border
draw_set_color(c_white);
draw_rectangle(
    player_left,
    health_y,
    player_right,
    health_y + health_height,
    true
);

// Player health numbers
draw_set_valign(fa_top);
draw_text(
    player_right,
    health_y + health_height + 5,
    string(player_hp) + " / " + string(player_max_hp)
);

// Reset alignment before drawing the dialogue
draw_set_halign(fa_left);
draw_set_valign(fa_top);

// Optional pixel font:
// draw_set_font(fnt_dialogue);

draw_set_halign(fa_left);
draw_set_valign(fa_top);

// DIALOGUE AND RESULT
if (
    battle_state == "dialogue"
    || battle_state == "result"
    || battle_state == "victory"
    || battle_state == "game_over"
)
{
    var box_left   = gui_width * 0.10;
    var box_right  = gui_width * 0.90;
    var box_top    = gui_height * 0.55;
    var box_bottom = gui_height * 0.80;

    // White outer border
    draw_set_color(c_white);
    draw_rectangle(
        box_left - 4,
        box_top - 4,
        box_right + 4,
        box_bottom + 4,
        false
    );

    // Black box interior
    draw_set_color(c_black);
    draw_rectangle(
        box_left,
        box_top,
        box_right,
        box_bottom,
        false
    );

    // Visible dialogue
    var shown_text = string_copy(
        dialogue_text,
        1,
        floor(visible_characters)
    );

    draw_set_color(c_white);

    draw_text_ext(
        box_left + 24,
        box_top + 20,
        shown_text,
        -1,
        (box_right - box_left) - 48
    );

    // Only show FIGHT during the opening dialogue
    if (battle_state == "dialogue")
    {
        var button_left   = gui_width * 0.38;
        var button_right  = gui_width * 0.62;
        var button_top    = gui_height * 0.86;
        var button_bottom = gui_height * 0.95;

        // Selected yellow border
        draw_set_color(c_yellow);
        draw_rectangle(
            button_left - 3,
            button_top - 3,
            button_right + 3,
            button_bottom + 3,
            false
        );

        // Black button interior
        draw_set_color(c_black);
        draw_rectangle(
            button_left,
            button_top,
            button_right,
            button_bottom,
            false
        );

        // Selected button text
        draw_set_color(c_yellow);
        draw_set_halign(fa_center);
        draw_set_valign(fa_middle);

        draw_text(
            gui_width * 0.5,
            (button_top + button_bottom) * 0.5,
            "> FIGHT"
        );
    }
}
// BULLY'S TURN
else if (battle_state == "bully_attack")
{
    var arena_left = gui_width * 0.20;
    var arena_right = gui_width * 0.80;
    var arena_top = gui_height * 0.25;
    var floor_y = gui_height * 0.72;

    var player_size = 20;
    var attack_size = 18;

    // Ground line
    draw_set_color(c_white);
    draw_rectangle(
        arena_left,
        floor_y,
        arena_right,
        floor_y + 4,
        false
    );

    // Player placeholder square
    var player_x = lerp(
        arena_left + player_size / 2,
        arena_right - player_size / 2,
        dodge_player_x
    );

    var player_y = floor_y - player_size / 2;

    // Flash when damaged
    if (hurt_timer <= 0 || floor(hurt_timer * 12) mod 2 == 0)
    {
        draw_set_color(c_red);

        draw_rectangle(
            player_x - player_size / 2,
            player_y - player_size / 2,
            player_x + player_size / 2,
            player_y + player_size / 2,
            false
        );
    }

    // Falling bully attacks
    draw_set_color(c_red);

    for (var i = 0; i < array_length(bully_attack_y); i++)
    {
        var falling_x = lerp(
            arena_left,
            arena_right,
            bully_attack_x[i]
        );

        var falling_y = lerp(
            arena_top,
            floor_y + attack_size,
            bully_attack_y[i]
        );

        draw_rectangle(
            falling_x - attack_size / 2,
            falling_y - attack_size / 2,
            falling_x + attack_size / 2,
            falling_y + attack_size / 2,
            false
        );
    }
}
// ATTACK TIMING BAR
else if (battle_state == "attack")
{
    var bar_left   = gui_width * 0.15;
    var bar_right  = gui_width * 0.85;
    var bar_top    = gui_height * 0.62;
    var bar_bottom = gui_height * 0.76;

    // White border
    draw_set_color(c_white);
    draw_rectangle(
        bar_left - 4,
        bar_top - 4,
        bar_right + 4,
        bar_bottom + 4,
        false
    );

    // Black interior
    draw_set_color(c_black);
    draw_rectangle(
        bar_left,
        bar_top,
        bar_right,
        bar_bottom,
        false
    );

    // Center target area
    var center_x = (bar_left + bar_right) * 0.5;

    draw_set_color(c_red);
    draw_rectangle(
        center_x - 12,
        bar_top + 8,
        center_x + 12,
        bar_bottom - 8,
        false
    );

    // Moving attack line
    var line_x = lerp(bar_left, bar_right, attack_position);

    draw_set_color(c_yellow);
    draw_rectangle(
        line_x - 4,
        bar_top + 4,
        line_x + 4,
        bar_bottom - 4,
        false
    );
}

// Restore defaults
draw_set_color(c_white);
draw_set_halign(fa_left);
draw_set_valign(fa_top);