/// @description Spawn hammer
// You can write your code in this editor

// Inherit the parent event
event_inherited();


gameWidth = objMetaControl.screenWidth;
gameHeight = objMetaControl.screenHeight;

borderX = 0;
borderY = 0;


numGridX = 4;
numGridY = 4;

var x0 = objMetaControl.boundLeft
var y0 = objMetaControl.boundUp

// Screen coordinates of each hole
gridPosX = [20, 60, 100, 140]
gridPosY = [40, 80, 120, 160]

// Create objSlimePlayer (hammer)
instance_create_layer(x0+gridPosX[0], y0+gridPosY[0], "Instances", objSlimePlayer);

scrShowGameBackgroundLayer("SlimeBackground");
