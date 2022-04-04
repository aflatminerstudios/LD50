/// @description Draw bomb inventory
// You can write your code in this editor


var bl = objMetaControl.boundLeft;
var bu = objMetaControl.boundUp;
var curTotalBombs = objBulletHPlayer.curBombs + objBulletHPlayer.curSBombs;
var maxBombs = objBulletHPlayer.maxBombs;


if (objBulletHPlayer.curSBombs > 0) {
  draw_sprite_ext(sprBulletHSpecialBomb, 0, bl + 10, bu + 0, 0.75, 0.75, 0, c_white, 1);
} else {
  draw_sprite_ext(sprBulletHBomb, 0, bl + 10, bu + 0, 0.75, 0.75, 0, c_white, 1);
}
var font = draw_get_font();
var color = draw_get_color();

draw_set_color(c_black);
draw_set_font(fntBulletHell);
draw_text(bl + 20, bu + 0, string(curTotalBombs) + " / " + string(maxBombs));


draw_set_font(font);
draw_set_color(color);
