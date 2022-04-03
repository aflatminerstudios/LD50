/// @description Change direction
// You can write your code in this editor

var player = instance_find(objPlayer, 0);

var dist = point_distance(x, y, player.x, player.y);
var r1 = irandom_range(-1 * dist/10, dist / 10);
var r2 = irandom_range(-1 * dist/10, dist / 10);

targetX = player.x + r1;
targetY = player.y + r2;

alarm[0] = changeSpeed * 200 / 50 + 1;
