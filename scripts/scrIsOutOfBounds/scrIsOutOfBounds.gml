/// @description Checks whether an x and y position is out of bounds
/// @param {object} instance The instance to check for out of bounds
/// @param {object} boundsObject The object to check for bounds
function scrIsOutOfBounds(instance, boundsObject){
  
  with (instance) {
    if (x - sprite_width / 2 < boundsObject.boundLeft) {
      return true;
    }
    if (x + sprite_width / 2 > boundsObject.boundRight) {
      return true;
    }
    if (y - sprite_height / 2 < boundsObject.boundUp) {
      return true;
    }
    if (y + sprite_height / 2 > boundsObject.boundDown) {
      return true;
    }
  }
  
  return false;
}

/// @description Checks whether an x and y position is out of bounds
/// @param {real} checkX The x coordinate to check for out of bounds
/// @param {real} checkY The y coordinate to check for out of bounds
/// @param {object} boundsObject The object to check for bounds
function scrIsPosOutOfBounds(checkX, checkY, boundsObject) {
  
  with (instance) {
    if (checkX < boundsObject.boundLeft) {
      return true;
    }
    if (checkX > boundsObject.boundRight) {
      return true;
    }
    if (checkY < boundsObject.boundUp) {
      return true;
    }
    if (checkY > boundsObject.boundDown) {
      return true;
    }
  }
  
  return false;  
}

