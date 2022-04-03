/// @description Spawn snake
// You can write your code in this editor

// Inherit the parent event
event_inherited();


gridWidth = sprite_get_width(sprSnakeHead);
gameWidth = objMetaControl.screenWidth;
gameHeight = objMetaControl.screenHeight;

borderX = 0;
borderY = 0;


numGridX = gameWidth / gridWidth;
numGridY = gameHeight / gridWidth;


scrSpawnSnakeObject(3, 3, objSnakePlayer);
scrSpawnSnakeTarget();


