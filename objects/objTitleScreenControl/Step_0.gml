/// @description Check for key press
// You can write your code in this editor

if (ready) {
  if (keyboard_check_pressed(vk_anykey)) {
    
    if (!secondScreen) {
      sprite_index = sprTitleScreen2; 
      secondScreen = true;
      ready = false;
      alarm[0] = readyTime;
    } else {
      scrSwitchGame("GameSelect"); 
    }
  }
}
