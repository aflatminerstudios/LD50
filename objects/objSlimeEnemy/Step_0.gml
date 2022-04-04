/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

if (slimeTypeNumber == 0) {
	slimeTypeNumber = choose(1, 2, 3);
	if (slimeTypeNumber == 1)
		sprite_index = sprSlimeEnemy1;
	else if (slimeTypeNumber == 2)
		sprite_index = sprSlimeEnemy2;
	else if (slimeTypeNumber == 3)
		sprite_index = sprSlimeEnemy3;
}

if (!isPaused) {
  
	// Move to the current position
	x = x0 + objSlimeControl.gridPosX[positionX]
	y = y0 + objSlimeControl.gridPosY[positionY]  
	 
	if (isSquished) {
		if (slimeTypeNumber == 1)
			sprite_index = sprSlimeEnemy1Squished;
		else if (slimeTypeNumber == 2)
			sprite_index = sprSlimeEnemy2Squished;
		else if (slimeTypeNumber == 3)
			sprite_index = sprSlimeEnemy3Squished;
	}
}
