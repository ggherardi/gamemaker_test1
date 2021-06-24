/// @description player movement

// check keys for movement
player_moveRight = keyboard_check("D");

// calculate movement
player_vx = ((player_moveRight - player_moveLeft) * player_walkSpeed);
player_vy = ((player_moveUp - player_moveDown) * player_walkSpeed);

// if idle
if (player_vx == 0) {
	
}

// if moving
if (player_vx != 0 || player_vy != 0) {
	x += player_vx;
	y -= player_vy;
}
	