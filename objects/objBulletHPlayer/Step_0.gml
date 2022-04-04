/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

if (!isPaused) {
  
  var oldX = x;
  var oldY = y;
  
  var input = scrCheckInput();
  
  //Check moves

  if (ds_list_find_index(input, "up") != -1) {
    y -= moveSpeed;
    if (scrIsOutOfBounds(self, objMetaControl)) {
      x = oldX;
      y = oldY;
    }
  }
  if (ds_list_find_index(input, "down") != -1) {
    y += moveSpeed; 
    if (scrIsOutOfBounds(self, objMetaControl)) {
      x = oldX;
      y = oldY;
    }
  }

  if (ds_list_find_index(input, "left") != -1) {
    x -= moveSpeed; 
    image_xscale = 1;
    if (scrIsOutOfBounds(self, objMetaControl)) {
      x = oldX;
      y = oldY;
    }
  }
  if (ds_list_find_index(input, "right") != -1) {
    x += moveSpeed; 
    image_xscale = -1;
    if (scrIsOutOfBounds(self, objMetaControl)) {
      x = oldX;
      y = oldY;
    }
  }

  
  if (ds_list_find_index(input, "actionPressed") != -1) {
    if (curSBombs > 0) {
      scrBulletHLaunchBomb(self, true); 
      curSBombs -= 1;
    } else if (curBombs > 0) {
      scrBulletHLaunchBomb(self, true);
      curBombs -= 1;
    }
  }
  ds_list_destroy(input);
}
