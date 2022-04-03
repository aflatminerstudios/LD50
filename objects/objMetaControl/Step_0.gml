/// @description Insert description here
// You can write your code in this editor

var input = scrCheckInput();

if (ds_list_find_index(input, "gameSelectPressed") != -1) {
  scrSwitchGame("GameSelect"); 
}
