/// @description Insert description here
// You can write your code in this editor

var input = scrCheckInput();

if (ds_list_find_index(input, "gameSelectPressed") != -1) {
  scrSwitchGame("GameSelect"); 
}

if (keyboard_check_pressed(ord("M"))) {
  audio_master_gain(0);
}
if (keyboard_check_pressed(ord("Z"))) {
  audio_master_gain(1);
}


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
