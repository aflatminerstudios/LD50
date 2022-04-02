/// @description Checks whether an x and y position is out of bounds
/// @param {object} instance The instance to check for out of bounds
/// @param {objControlParent} controlObject The object to check for bounds
function scrIsOutOfBounds(instance, controlObject){
  
  with (instance) {
    if (x - sprite_width / 2 < controlObject.boundLeft) {
      return true;
    }
    if (x + sprite_width / 2 > controlObject.boundRight) {
      return true;
    }
    if (y - sprite_height / 2 < controlObject.boundUp) {
      return true;
    }
    if (y + sprite_height / 2 > controlObject.boundDown) {
      return true;
    }
  }
  
  return false;
}

/// @description Checks whether an x and y position is out of bounds
/// @param {real} checkX The x coordinate to check for out of bounds
/// @param {real} checkY The y coordinate to check for out of bounds
/// @param {objControlParent} controlObject The object to check for bounds
function scrIsPosOutOfBounds(checkX, checkY, controlObject) {
  
  with (instance) {
    if (checkX < controlObject.boundLeft) {
      return true;
    }
    if (checkX > controlObject.boundRight) {
      return true;
    }
    if (checkY < controlObject.boundUp) {
      return true;
    }
    if (checkY > controlObject.boundDown) {
      return true;
    }
  }
  
  return false;  
}

