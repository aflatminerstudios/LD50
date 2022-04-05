/// @description Insert description here
// You can write your code in this editor

var input = scrCheckInput();

if (ds_list_find_index(input, "gameSelectPressed") != -1) {
  scrSwitchGame("GameSelect"); 
}


//TODO: Comment out debug keys
/*if (keyboard_check_pressed(ord("M"))) {
  audio_master_gain(0);
}
if (keyboard_check_pressed(ord("Z"))) {
  audio_master_gain(1);
}
if (keyboard_check_pressed(ord("O"))) {
  totalScore = 0; 
}
if (keyboard_check_pressed(ord("P"))) {
   for (var i = 0; i < ds_grid_width(pixelGrid); i++) {
      for (var j = 0; j < ds_grid_height(pixelGrid); j++) {
        ds_grid_set(pixelGrid, i, j, random_range(0.1, 0.3)); 
      }
    }

    var numBurntPixel = irandom_range(10,20);
    for (var i = 0; i < numBurntPixel; i++) {
      ds_grid_set(pixelGrid, irandom_range(0, numHPixels), irandom_range(0, numVPixels), random_range(0.8, 1.4));
    }
}
*/

/*
if (scrCheckAction()) {
  button = sprButtonDown; 
} else {
  button = sprButtonUp; 
}


if (scrCheckLeft()) {
  dPad = sprDPadLeft; 
} else if (scrCheckRight()) {
  dPad = sprDPadRight; 
} else if (scrCheckUp()) {
  dPad = sprDPadUp;
} else if (scrCheckDown()) {
  dPad = sprDPadDown; 
} else {
  dPad = sprDPadNeutral; 
}
*/
ds_list_destroy(input);
