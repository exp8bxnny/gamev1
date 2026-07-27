// Short delay after changing states
if (input_delay > 0)
{
    input_delay--;
}

// DIALOGUE STATE
if (battle_state == "dialogue")
{
    if (!dialogue_finished)
    {
        visible_characters += characters_per_second
            * (delta_time / 1000000);

        if (visible_characters >= string_length(dialogue_text))
        {
            visible_characters = string_length(dialogue_text);
            dialogue_finished = true;
        }
    }

    if (keyboard_check_pressed(ord("Z")) && input_delay <= 0)
    {
        // First press completes unfinished dialogue
        if (!dialogue_finished)
        {
            visible_characters = string_length(dialogue_text);
            dialogue_finished = true;
        }
        else
        {
            // Begin attack bar
            battle_state = "attack";
            attack_position = 0;
            input_delay = 5;
        }
    }
}

// ATTACK STATE
else if (battle_state == "attack")
{
    attack_position += attack_speed * (delta_time / 1000000);

    // Stop the bar with Z
    if (keyboard_check_pressed(ord("Z")) && input_delay <= 0)
    {
        // Distance from the center
        var distance_from_middle = abs(attack_position - 0.5);

        // 100 damage in the exact center, less toward the edges
        damage = round(50 * (1 - distance_from_middle * 2));
        damage = max(0, damage);
		enemy_hp -= damage;
		enemy_hp = max(0, enemy_hp);

        dialogue_text = "* You dealt " + string(damage) + " damage!";
        visible_characters = 0;
        dialogue_finished = false;

        battle_state = "result";
        input_delay = 5;
    }

    // Missing by letting the bar reach the end
    if (attack_position >= 1)
    {
        attack_position = 1;
        damage = 0;

        dialogue_text = "* You missed!";
        visible_characters = 0;
        dialogue_finished = false;

        battle_state = "result";
        input_delay = 5;
    }
}

// RESULT DIALOGUE
else if (battle_state == "result")
{
    // Continue typing the result
    if (!dialogue_finished)
    {
        visible_characters += characters_per_second
            * (delta_time / 1000000);

        if (visible_characters >= string_length(dialogue_text))
        {
            visible_characters = string_length(dialogue_text);
            dialogue_finished = true;
        }
    }

    if (keyboard_check_pressed(ord("Z")) && input_delay <= 0)
    {
        // First Z instantly finishes the sentence
        if (!dialogue_finished)
        {
            visible_characters = string_length(dialogue_text);
            dialogue_finished = true;
        }
        else
        {
            // Continue fighting if the enemy still has health
		if (enemy_hp > 0)
		{
		    // Begin the cat's turn
		    battle_state = "cat_attack";

		    cat_turn_timer = cat_turn_length;
		    dodge_player_x = 0.5;

		    cat_attack_x = [];
		    cat_attack_y = [];

		    attack_spawn_timer = 0;
		    hurt_timer = 0;

		    input_delay = 5;
		}
        else
        {
            // Enemy has been defeated
			dialogue_text = "* You defeated the cat!";
            visible_characters = 0;
            dialogue_finished = false;
            battle_state = "victory";
            input_delay = 5;
			room_goto(rm_s2_e1end);
        }
        }
    }
}
else if (battle_state == "cat_attack")
{
    var seconds = delta_time / 1000000;

    cat_turn_timer -= seconds;

    // Temporary protection after getting hit
    if (hurt_timer > 0)
    {
        hurt_timer -= seconds;
    }

    // Move left
    if (
        keyboard_check(vk_left)
        || keyboard_check(ord("A"))
    )
    {
        dodge_player_x -= dodge_move_speed * seconds;
    }

    // Move right
    if (
        keyboard_check(vk_right)
        || keyboard_check(ord("D"))
    )
    {
        dodge_player_x += dodge_move_speed * seconds;
    }

    dodge_player_x = clamp(dodge_player_x, 0, 1);

    // Spawn falling attacks
    attack_spawn_timer -= seconds;

    if (attack_spawn_timer <= 0)
    {
        array_push(cat_attack_x, random(1));
        array_push(cat_attack_y, 0);

        attack_spawn_timer = attack_spawn_delay;
    }

    // GUI positions used for collision
    var gui_width = display_get_gui_width();
    var gui_height = display_get_gui_height();

    var arena_left = gui_width * 0.20;
    var arena_right = gui_width * 0.80;
    var arena_top = gui_height * 0.25;
    var floor_y = gui_height * 0.72;

    var player_size = 20;
    var attack_size = 18;

    var player_x = lerp(
        arena_left + player_size / 2,
        arena_right - player_size / 2,
        dodge_player_x
    );

    var player_y = floor_y - player_size / 2;

    // Move every falling attack
    for (var i = array_length(cat_attack_y) - 1; i >= 0; i--)
    {
        cat_attack_y[i] += attack_fall_speed * seconds;

        var falling_x = lerp(
            arena_left,
            arena_right,
            cat_attack_x[i]
        );

        var falling_y = lerp(
            arena_top,
            floor_y + attack_size,
            cat_attack_y[i]
        );

        // Collision with player square
        if (
            hurt_timer <= 0
            && abs(falling_x - player_x)
                < (attack_size + player_size) / 2
            && abs(falling_y - player_y)
                < (attack_size + player_size) / 2
        )
        {
            player_hp -= 30;
            player_hp = max(0, player_hp);

            hurt_timer = 0.6;

            // Remove the attack that hit the player
            array_delete(cat_attack_x, i, 1);
            array_delete(cat_attack_y, i, 1);

		if (player_hp <= 0)
		{
		    battle_state = "game_over";

		    dialogue_text = "* You were defeated.";
		    visible_characters = 0;
		    dialogue_finished = false;

		    cat_attack_x = [];
		    cat_attack_y = [];

		    input_delay = 10;
		    exit;
		}

            continue;
        }

        // Delete attacks after they fall offscreen
        if (cat_attack_y[i] > 1)
        {
            array_delete(cat_attack_x, i, 1);
            array_delete(cat_attack_y, i, 1);
        }
    }

    // End the cat's turn
    if (cat_turn_timer <= 0 && battle_state == "cat_attack")
    {
        dialogue_text = "* Your turn.";
        visible_characters = 0;
        dialogue_finished = false;

        battle_state = "dialogue";
        input_delay = 5;

        cat_attack_x = [];
        cat_attack_y = [];
    }
}
else if (battle_state == "victory")
{
    // Type out victory dialogue
    if (!dialogue_finished)
    {
        visible_characters += characters_per_second
            * (delta_time / 1000000);

        if (visible_characters >= string_length(dialogue_text))
        {
            visible_characters = string_length(dialogue_text);
            dialogue_finished = true;
        }
    }

    if (keyboard_check_pressed(ord("Z")) && input_delay <= 0)
    {
        // First Z completes unfinished text
        if (!dialogue_finished)
        {
            visible_characters = string_length(dialogue_text);
            dialogue_finished = true;
        }
        else
        {
            // Remember that the cat was defeated
            global.cat_defeated = true;

            // Return to the overworld
            room_goto(rm_s2_e1end);
        }
    }
}

else if (battle_state == "game_over")
{
    // Typewriter effect
    if (!dialogue_finished)
    {
        visible_characters += characters_per_second
            * (delta_time / 1000000);

        if (visible_characters >= string_length(dialogue_text))
        {
            visible_characters = string_length(dialogue_text);
            dialogue_finished = true;
        }
    }

    if (keyboard_check_pressed(ord("Z")) && input_delay <= 0)
    {
        // First press finishes the sentence
        if (!dialogue_finished)
        {
            visible_characters = string_length(dialogue_text);
            dialogue_finished = true;
        }
        else
        {
            // Restart the entire battle
            room_restart();
        }
    }
}