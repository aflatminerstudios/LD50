/// @description Create base variables and load up initialization
// You can write your code in this editor

scrInitialize();


//Probably temp, pixel lifespan in number of ticks
pixelLife = 200;


// Set up screen and grid
screenWidth = 200;
screenHeight = 200;

pixelWidth = 8;
pixelHeight = 8;



//boundLeft = (room_width - screenWidth) / 2;
//boundRight = room_width - ((room_width - screenWidth) / 2);
//boundUp = (room_height - screenHeight) / 2;
//boundDown = room_height - ((room_height - screenHeight) / 2);

boundLeft = 0;
boundRight = boundLeft + screenWidth;
boundUp = room_height + screenHeight; // bottom of the room + one screen's worth of empty space
boundDown = boundUp + screenHeight

numHPixels = screenWidth / pixelWidth;
numVPixels = screenHeight / pixelHeight;

pixelGrid = ds_grid_create(numHPixels, numVPixels);

for (var i = 0; i < ds_grid_width(pixelGrid); i++) {
  for (var j = 0; j < ds_grid_height(pixelGrid); j++) {
    ds_grid_set(pixelGrid, i, j, 0.0); 
  }
}


/////////////////////////////////////////////////////////////////////////////////

//Set up game switching
controlObjects = ds_map_create();
currentGame = "Shooter";


ds_map_add(controlObjects, "Test", objTestParent);
ds_map_add(controlObjects, "Snake", objSnakeControl);
ds_map_add(controlObjects, "Shooter", objShooterControl);

scrSwitchGame(currentGame);






