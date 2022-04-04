/// @description Create base variables and load up initialization
// You can write your code in this editor

scrInitialize();

totalScore = 0;

//Probably temp, pixel lifespan in number of ticks
pixelLife = 200;


// Set up screen and grid
screenWidth = 200;
screenHeight = 200;

pixelWidth = 2;
pixelHeight = 2;

oldMaxCol = -1;
curGlitchLine = -1;
stepsToJump = 3;
jumpStep = 0;
burntColList = ds_list_create();


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
    ds_grid_set(pixelGrid, i, j, random(0.2)); 
  }
}

var numBurntPixel = irandom_range(10,20);
for (var i = 0; i < numBurntPixel; i++) {
  ds_grid_set(pixelGrid, irandom_range(0, numHPixels), irandom_range(0, numVPixels), random_range(0.8, 1.4));
}


/////////////////////////////////////////////////////////////////////////////////

//For button drawing

/*dPad = sprDPadNeutral;
button = sprButtonUp;*/
tape = sprTape;

/////////////////////////////////////////////////////////////////////////////////

//Set up game switching
controlObjects = ds_map_create();
backgrounds = ds_map_create();
currentGame = "Title";


ds_map_add(controlObjects, "Test", objTestParent);
ds_map_add(controlObjects, "Snake", objSnakeTitle);
ds_map_add(controlObjects, "Shooter", objShooterTitle);
ds_map_add(controlObjects, "BulletHell", objBulletHTitle);
ds_map_add(controlObjects, "Slime", objSlimeTitle);
ds_map_add(controlObjects, "GameSelect", objGameSelectControl);
ds_map_add(controlObjects, "Credits", objCreditsControl);
ds_map_add(controlObjects, "Title", objTitleScreenControl);

ds_map_add(backgrounds, "Test", sprGeneralBackground);
ds_map_add(backgrounds, "Snake", sprSnakeBackground);
ds_map_add(backgrounds, "Shooter", sprHogBG);
ds_map_add(backgrounds, "BulletHell", sprBulletBG);
ds_map_add(backgrounds, "Slime", sprSlimeBG);
ds_map_add(backgrounds, "GameSelect", sprGeneralBackground);
ds_map_add(backgrounds, "Credits", sprGeneralBackground);
ds_map_add(backgrounds, "Title", sprGeneralBackground);

bgLayer = layer_background_get_id("Backgrounds_1");

scrSwitchGame(currentGame);


instance_create_depth(590, 508, depth + 50, objButton);
instance_create_depth(258, 524, depth + 50, objDPad);
//instance_create_depth(454, 0, depth + 50, objTape);
instance_create_depth(647, 558, depth + 50, objSpaceTape);

instance_create_depth(0, 0, depth + 50, objMessages);





