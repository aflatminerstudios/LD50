/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

scoreIncrease = 0;
scoreTime = -1;
alarm[11] = -1;

ready = false;
alarm[0] = room_speed / 2;


audio_sound_gain(sndMainMusic, 1.5, 0);
if (!audio_is_playing(sndMainMusic)) {
  audio_stop_all();
  
  audio_play_sound(sndMainMusic, 1, true);
}

