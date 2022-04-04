/// @description Insert description here// You can write your code in this editor

event_inherited();

controlObject = objShooterControl;

audio_sound_gain(sndShooterMusic, 1.5, 0);
if (!audio_is_playing(sndShooterMusic)) {
  audio_stop_all();
  
  audio_play_sound(sndShooterMusic, 1, true);
}

