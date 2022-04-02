/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

if (!isPaused) {

  var player = instance_find(objPlayer, 0);


  move_towards_point(player.x, player.y, moveSpeed);

}
