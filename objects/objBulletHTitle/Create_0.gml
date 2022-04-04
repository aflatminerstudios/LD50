/// @description Insert description here// You can write your code in this editor

event_inherited();

controlObject = objBulletHControl;

audio_sound_gain(sndBulletHMusic, 1.5, 0);
if (!audio_is_playing(sndBulletHMusic)) {
  audio_stop_all();
  
  audio_play_sound(sndBulletHMusic, 1, true);
}
