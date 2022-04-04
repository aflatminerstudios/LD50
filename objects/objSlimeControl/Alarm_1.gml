/// @description Add slimes if needed


var currentSlimeCount = ds_grid_get_sum(slimeGrid, 0, 0, numGridX-1, numGridY-1);

if (currentSlimeCount < numGridX*numGridY && currentSlimeCount < idealSlimeCount) {
	
	// Find an empty spot in the grid
	var needsEmptySpot = true;
	var loopLimit = 100; // Just in case, to prevent infinite loops
	var loopIter = 0;
	while(needsEmptySpot && loopIter < loopLimit) {
		loopIter++;
		var slimeX = irandom_range(0, numGridX-1)
		var slimeY = irandom_range(0, numGridY-1)
		if (ds_grid_get(slimeGrid, slimeX, slimeY) < 1) {
			needsEmptySpot = false;
			var newSlime = instance_create_depth(-100, -100, objSlimePlayer.depth+1, objSlimeEnemy);
			newSlime.positionX = slimeX;
			newSlime.positionY = slimeY;
			newSlime.alarm[1] = slimeEscapeTime;
			ds_grid_set(slimeGrid, slimeX, slimeY, 1);
		}
	}

}

alarm[1] = slimeAddInterval;
