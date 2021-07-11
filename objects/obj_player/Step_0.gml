/// @description player movement

// movement constants
leftKey = ord("A");
rightKey = ord("D");
upKey = ord("W");
downKey = ord("S");

// check keys for movement
player_moveRight = keyboard_check(rightKey);
player_moveLeft = keyboard_check(leftKey);
player_moveUp = keyboard_check(upKey);
player_moveDown = keyboard_check(downKey);

// calculate movement
player_vx = ((player_moveRight - player_moveLeft) * player_walkSpeed);
player_vy = ((player_moveUp - player_moveDown) * player_walkSpeed);

// if idle
if (player_vx == 0 && player_vy == 0) {
	if (sprite_index == spr_player_run_right) {		
		sprite_index = spr_player_idle_right;
	}
	if (sprite_index == spr_player_run_left) {		
		sprite_index = spr_player_idle_left;
	}
}

// if moving
if (player_vx != 0 || player_vy != 0) {
	if (!collision_point(x + player_vx, y, obj_par_environment, true, true)) {
		x += player_vx;
	}	
	if (!collision_point(x, y - player_vy, obj_par_environment, true, true)) {
		y -= player_vy;
	}		
	
	// change walking sprite
	if (player_vx > 0 || (player_vy != 0 && (sprite_index == spr_player_run_right || sprite_index == spr_player_idle_right))) {
		sprite_index = spr_player_run_right;
		player_dir = 0;
	}
	if (player_vx < 0 || (player_vy != 0 && (sprite_index == spr_player_run_left || sprite_index == spr_player_idle_left))) {
		sprite_index = spr_player_run_left;
		player_dir = 2;
	}
	if (player_vy > 0) {
		//sprite_index = spr_player_run_left;
		player_dir = 3;
	}
		if (player_vy < 0) {
		//sprite_index = spr_player_run_left;
		player_dir = 1;
	}
}
	
	
// depth sorting
depth = -y;