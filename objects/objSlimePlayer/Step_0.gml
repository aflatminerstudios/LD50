/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();
if (!isPaused) {
  
  if (busyCoolDown > 0)
    busyCoolDown--;
	
  var isBusy = (busyCoolDown > 0);
  if (!isBusy) {
	// Reset the hammer sprite to up
	if (sprite_index != sprSlimeHammerUp)
		sprite_index = sprSlimeHammerUp;
  }

  
  
  //Check moves
  if (!isBusy) {
	  var input = scrCheckInput();
	  
	  var didMove = false;
	  if (ds_list_find_index(input, "up") != -1) {
	    if (positionY - 1 >= 0) {
			positionY--;
			didMove = true;
		}
	  } else if (ds_list_find_index(input, "down") != -1) {
	    if (positionY + 1 < objSlimeControl.numGridY) {
			positionY++;
			didMove = true;
		}
	  } else if (ds_list_find_index(input, "left") != -1) {
	    if (positionX - 1 >= 0) {
			positionX--;
			didMove = true;
		}
	  } else if (ds_list_find_index(input, "right") != -1) {
	    if (positionX + 1 < objSlimeControl.numGridX) {
			positionX++;
			didMove = true;
		}
	  }
	  
	  if (didMove) {
		busyCoolDown = max(moveBusyCoolDownAmount, busyCoolDown);
	  }
	  // Move to the current position
	  x = x0 + objSlimeControl.gridPosX[positionX]
	  y = y0 + objSlimeControl.gridPosY[positionY]
  
	  if (ds_list_find_index(input, "action") != -1) {
	      // Hammer now!
		  // Kick off hammer animation and squish any slimes in that spot
		  sprite_index = sprSlimeHammerDown;
		  // Micha TODO
		  // Set the busyCooldown to some value so we can't rapid fire, or move immediately
		  busyCoolDown = max(hammerBusyCoolDownAmount, busyCoolDown);
	  }
  
	  /*
	  if (ds_list_find_index(input, "actionPressed") != -1) {
    
	  }
	  */
  }
  
}
