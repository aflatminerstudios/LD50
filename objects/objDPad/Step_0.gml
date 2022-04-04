/// @description Insert description here
// You can write your code in this editor

if (scrCheckLeft()) {
  sprite_index = sprDPadLeft; 
} else if (scrCheckRight()) {
  sprite_index = sprDPadRight; 
} else if (scrCheckUp()) {
  sprite_index = sprDPadUp;
} else if (scrCheckDown()) {
  sprite_index = sprDPadDown; 
} else {
  sprite_index = sprDPadNeutral; 
}
