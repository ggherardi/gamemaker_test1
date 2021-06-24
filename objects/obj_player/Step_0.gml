/// @description player movement

// check keys for movement
player_moveRight = keyboard_check(ord("D"));
player_moveLeft = keyboard_check(ord("A"));
player_moveUp = keyboard_check(ord("W"));
player_moveDown = keyboard_check(ord("S"));

// calculate movement
player_vx = ((player_moveRight - player_moveLeft) * player_walkSpeed);
player_vy = ((player_moveUp - player_moveDown) * player_walkSpeed);

// if idle
if (player_vx == 0 && player_vy == 0) {
	
}

// if moving
if (player_vx != 0 || player_vy != 0) {
	x += player_vx;
	y -= player_vy;
}
	