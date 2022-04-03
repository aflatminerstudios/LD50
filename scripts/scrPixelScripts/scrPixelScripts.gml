/// @description Converts from actual screen pixels to "game" pixels
/// @param {real} screenX The x coordinate to convert
/// @param {real} screenY The y coordinate to convert
/// @param {obj} metaControl The object that contains information about the game screen size
function scrCoordsScreenToGame(screenX, screenY, metaControl){
  /* Adjust coordinates so that they exist in a world where the top left corner 
   * of the game is 0,0, but still actual screen pixel size 
   */   
  screenX -= metaControl.boundLeft;
  screenY -= metaControl.boundUp;
  
  // Convert to "game pixel size"
  screenX = floor(screenX / metaControl.pixelWidth);
  screenY = floor(screenY / metaControl.pixelHeight);
  
  var returnArray;
  returnArray[0] = screenX;
  returnArray[1] = screenY;
  
  return returnArray;
}

/// @description Converts from "game" pixels to actual screen pixels, giving pixel coordinate of top-left of game pixel
/// @param {real} gameX The x coordinate to convert
/// @param {real} gameY The y coordinate to convert
/// @param {obj} metaControl The object that contains information about the game screen size
function scrCoordsGameToScreen(gameX, gameY, metaControl){

  // Convert size
  gameX = gameX * metaControl.pixelWidth;
  gameY = gameY * metaControl.pixelHeight;
  
  // Move to proper position
  gameX += metaControl.boundLeft;
  gameY += metaControl.boundUp;
  
  returnArray[0] = gameX;
  returnArray[1] = gameY;
  
  return returnArray;

}
