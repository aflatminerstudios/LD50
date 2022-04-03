/// @description Setup game variables
// You can write your code in this editor

gameScore = 0;

view_visible[1] = true;



//Score increase every X ticks
scoreIncrease = 5;
scoreTime = room_speed / 2;

//This alarm just increments the score
alarm[11] = scoreTime;
