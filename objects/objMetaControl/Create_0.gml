/// @description Create base variables and load up initialization
// You can write your code in this editor

controlObjects = ds_map_create();
currentGame = "Test";


ds_map_add(controlObjects, "Test", objTestParent);

scrSwitchGame(currentGame);
