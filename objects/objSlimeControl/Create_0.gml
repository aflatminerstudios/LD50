/// @description Spawn hammer
// You can write your code in this editor

// Inherit the parent event
event_inherited();


maxEscapes = 5; // Number of slimes that can escape before game over
escapesCount = 0;

gameWidth = objMetaControl.screenWidth;
gameHeight = objMetaControl.screenHeight;

borderX = 0;
borderY = 0;

numGridX = 4;
numGridY = 4;

var x0 = objMetaControl.boundLeft
var y0 = objMetaControl.boundUp

// Screen coordinates of each hole
gridPosX = [31, 80, 127, 173]
gridPosY = [54, 90, 130, 175]

slimeGrid = ds_grid_create(numGridX, numGridY);

for (var i = 0; i < ds_grid_width(slimeGrid); i++) {
  for (var j = 0; j < ds_grid_height(slimeGrid); j++) {
    ds_grid_set(slimeGrid, i, j, 0); 
  }
}

slimeAddInterval = 10; // Time between checks for adding new slimes
idealSlimeCount = 1; // Goes up over time, if the current count is less than this, add a slime
slimeCountIncreaseRate = 0.003; // Add to idealSlimeCount each frame
slimeEscapeTime = 4*room_speed; // Goes down over time
slimeEscapeMultiplier = 0.9998; // Multiply slimeEscapeTime by this every frame
// Add an initial slime and kick off internal alarm for checking if we have enough slimes
alarm[1] = 1;



// Create objSlimePlayer (hammer)
instance_create_layer(x0+gridPosX[0], y0+gridPosY[0], "Instances", objSlimePlayer);

