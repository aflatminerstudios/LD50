/// @description Create base variables and load up initialization
// You can write your code in this editor

scrInitialize();

//Set up game switching
controlObjects = ds_map_create();
currentGame = "Test";


ds_map_add(controlObjects, "Test", objTestParent);

scrSwitchGame(currentGame);


/////////////////////////////////////////////////////////////////////////////////

// Set up screen and grid
screenWidth = 1200;
screenHeight = 600;

pixelWidth = 20;
pixelHeight = 20;



boundLeft = (room_width - screenWidth) / 2;
boundRight = room_width - ((room_width - screenWidth) / 2);
boundUp = (room_height - screenHeight) / 2;
boundDown = room_height - ((room_height - screenHeight) / 2);

numHPixels = screenWidth / pixelWidth;
numVPixels = screenHeight / pixelHeight;

pixelGrid = ds_grid_create(numHPixels, numVPixels);


