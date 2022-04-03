/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();
if (!isPaused) {
  
  var oldX = x;
  var oldY = y;
  
  var input = scrCheckInput();
  
  
  /*
    y -= moveSpeed;
    if (scrIsOutOfBounds(self, objMetaControl)) {
      x = oldX;
      y = oldY;
    }
    */
  
  //Check moves

  if (ds_list_find_index(input, "up") != -1) {
    if (oldDir != 270)
      turnDir = 90;
  } else if (ds_list_find_index(input, "down") != -1) {
    if (oldDir != 90)
      turnDir = 270;
  } else if (ds_list_find_index(input, "left") != -1) {
    if (oldDir != 0)
      turnDir = 180;
  } else if (ds_list_find_index(input, "right") != -1) {
    if (oldDir != 180)
      turnDir = 0;
  }

    
  //speed *= 1.01;
  /*
  if (scrIsOutOfBounds(self, objMetaControl)) {
    objSnakeControl.alarm[0] = 1;
  }
  */
  
  
  
}
