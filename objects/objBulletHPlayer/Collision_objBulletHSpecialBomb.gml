/// @description Insert description here
// You can write your code in this editor

if ((curBombs + curSBombs) < maxBombs) {
 
  audio_play_sound(sndBulletHPickupSpecial, 1, false);
 
  curSBombs += 1;
  
  with (other) {
    instance_destroy();
  }
  
}
