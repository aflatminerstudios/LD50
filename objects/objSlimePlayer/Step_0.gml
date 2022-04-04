/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();
if (!isPaused) {
  
  if (moveBusyCoolDown > 0)
    moveBusyCoolDown--;
  if (hammerBusyCoolDown > 0)
    hammerBusyCoolDown--;
	
  var canMove = (moveBusyCoolDown <= 0);
  var input = scrCheckInput();
  //Check moves
  if (canMove) {
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
		moveBusyCoolDown = moveBusyCoolDownAmount;
		audio_play_sound(sndSlimeHammerMove, 1, false);
		hammerBusyCoolDown = -1; // Lets you hammer right after moving
	  }
	  // Move to the current position
	  x = x0 + objSlimeControl.gridPosX[positionX]
	  y = y0 + objSlimeControl.gridPosY[positionY]
  }
  
  
  var canHammer = (hammerBusyCoolDown <= 0);
  
  if (canHammer) {
	// Reset the hammer sprite to up
	if (sprite_index != sprSlimeHammerUp)
		sprite_index = sprSlimeHammerUp;
 
  
	  if (ds_list_find_index(input, "actionPressed") != -1) {
	      // Hammer now!
		  // Kick off hammer animation and squish any slimes in that spot
		  sprite_index = sprSlimeHammerDown;
		  
		  var hitSlimeInstance = collision_point(x, y, objSlimeEnemy, false, false);
		  var isHit = (hitSlimeInstance != noone);
		  if (isHit) {
			  audio_play_sound(sndSlimeHammerHit, 1, false);  
        
        if (hitSlimeInstance.isSquished) {
          hitSlimeInstance.alarm[0] = 1;
        } else {  
      		// Squish the slime
      		hitSlimeInstance.alarm[0] = hitSlimeInstance.squishedCoolDownAmount;
      		hitSlimeInstance.isSquished = true;
			
      		// Add to the score
      		with (objSlimeControl) {
      			gameScore += 10;
      		}
        }
		  } else {
			audio_play_sound(sndSlimeHammerMiss, 1, false);
		  }
		  
		  
		  // Set the busyCooldown to some value so we can't rapid fire
		  hammerBusyCoolDown = hammerBusyCoolDownAmount;
	  }
  
	  /*
	  if (ds_list_find_index(input, "actionPressed") != -1) {
    
	  }
	  */
  }
  
}
