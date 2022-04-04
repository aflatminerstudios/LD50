/// @description Insert description here
// You can write your code in this editor

event_inherited();

audio_sound_gain(sndSnakeMusic, 1.5, 0);
if (!audio_is_playing(sndSnakeMusic)) {
  audio_stop_all();
  
  audio_play_sound(sndSnakeMusic, 1, true);
}


controlObject = objSnakeControl;
