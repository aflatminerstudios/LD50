/// @description Insert description here
// You can write your code in this editor

if ((curBombs + curSBombs) < maxBombs) {
 
  audio_play_sound(sndBulletHPickup, 1, false);
 
  objBulletHControl.gameScore += 5;
 
  curBombs += 1;
  
  with (other) {
    instance_destroy();
  }
  
}
