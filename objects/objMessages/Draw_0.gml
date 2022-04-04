/// @description Insert description here
// You can write your code in this editor

/// @description Insert description here
// You can write your code in this editor

var halign = draw_get_halign();
var color = draw_get_color();
var font = draw_get_font();

draw_set_color(c_yellow);
draw_set_font(fntMessageFont);
draw_set_halign(fa_left);

draw_text_ext(670, 130, curMsg, -1, 130);

draw_set_halign(halign);
draw_set_color(color);
draw_set_font(font);


var halign = draw_get_halign();
var color = draw_get_color();
var font = draw_get_font();

draw_set_color(c_yellow);
draw_set_halign(fa_center);
draw_set_font(fntScoreTextFont);

draw_text(730, 50, "Score");
draw_set_font(fntScoreFont);

var curScore = objMetaControl.totalScore;
if (instance_number(objControlParent) == 1) {
  curScore += objControlParent.gameScore
}

draw_text(730, 85, scrAddThousandSep(curScore));

/*draw_set_font(fntMessageFont);
draw_set_halign(fa_left);
draw_text_ext(670, 120, curMsg, -1, 130);*/

draw_set_halign(halign);
draw_set_color(color);
draw_set_font(font);
