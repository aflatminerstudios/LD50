/// @description Checks whether an x and y position is out of bounds
/// @param {object} instance The instance to check for out of bounds
/// @param {object} boundsObject The object to check for bounds
function scrIsOutOfBounds(instance, boundsObject){
  
  with (instance) {
    if (bbox_left < boundsObject.boundLeft) {
      return true;
    }
    if (bbox_right > boundsObject.boundRight) {
      return true;
    }
    if (bbox_top < boundsObject.boundUp) {
      return true;
    }
    if (bbox_bottom > boundsObject.boundDown) {
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

