/// @description Insert description here
// You can write your code in this editor

with (other) {
  instance_destroy(); 
}

turnSpeed /= 1.01;

scrSpawnSnakeTarget();

maxParts += 1;
var pts = other.numPoints;
with (objSnakeControl) {
  gameScore += pts; 
}

audio_play_sound(sndSnakeGetTarget, 1, false);
