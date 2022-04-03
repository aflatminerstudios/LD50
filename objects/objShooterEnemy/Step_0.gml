/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

if (!isPaused) {

  if (hp <= 0) {
    audio_play_sound(sndShooterEnemyDie, 0, false);
    instance_destroy();
  }



  var player = instance_find(objShooterPlayer, 0);

  move_towards_point(player.x, player.y, moveSpeed);




}
