/// @description Repair itself
// You can write your code in this editor

sprite_index = sprBulletHTower;
damaged = false;

if (!audio_is_playing(sndBulletHTowerRepair)) {
  audio_play_sound(sndBulletHTowerRepair, 1, false); 
}
