/// @description Insert description here
// You can write your code in this editor

event_inherited();


controlObject = objSlimeControl;

audio_sound_gain(sndSlimeMusic, 1.5, 0);
if (!audio_is_playing(sndSlimeMusic)) {
  audio_stop_all();
  
  audio_play_sound(sndSlimeMusic, 1, true);
}

