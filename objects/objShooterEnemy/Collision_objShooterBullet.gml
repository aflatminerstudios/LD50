/// @description Insert description here
// You can write your code in this editor


audio_play_sound(sndBulletHit, 1, false);

hp -= other.damage;

with (other) {
  instance_destroy(); 
}



