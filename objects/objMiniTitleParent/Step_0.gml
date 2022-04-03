/// @description Insert description here
// You can write your code in this editor

if (ready) {
  if (keyboard_check_pressed(vk_anykey)) {
    instance_create_depth(0, 0, 0, controlObject);
    
    instance_destroy();
  }
}
