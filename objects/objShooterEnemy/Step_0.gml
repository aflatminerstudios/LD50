/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

if (!isPaused) {

  if (hp <= 0) {
    audio_play_sound(sndShooterEnemyDie, 0, false);
    
    instance_create_depth(x, y, depth, objShooterExplodingGhost);
    
    with (objShooterControl) {
      gameScore += 10;
    }
    
    
    instance_destroy();
  }



  var player = instance_find(objShooterPlayer, 0);




  move_towards_point(player.x, player.y, moveSpeed);
  var dir = point_direction(x, y, player.x, player.y);
  
  if (dir >= 90 && dir < 270) {
     image_xscale = -1;
  } else {
    image_xscale = 1; 
  }



}
