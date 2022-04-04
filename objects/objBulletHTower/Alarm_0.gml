/// @description Shoot at player
// You can write your code in this editor

if (!damaged) {
  var player = instance_find(objBulletHPlayer, 0);
  var bull = instance_create_depth(x + bulletX, y + bulletY, player.depth-2, objBulletHBullet);
  bull.direction = point_direction(bull.x, bull.y, player.x, player.y);
}


alarm[0] = irandom_range(shootMin, shootMax);
