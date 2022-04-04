/// @description Insert description here
// You can write your code in this editor

var halign = draw_get_halign();
var color = draw_get_color();
var font = draw_get_font();

draw_set_color(c_yellow);
draw_set_halign(fa_center);
draw_set_font(fntScoreTextFont);

draw_text(730, 50, "Score");
draw_set_font(fntScoreFont);

draw_text(730, 85, scrAddThousandSep(totalScore));


draw_set_halign(halign);
draw_set_color(color);
draw_set_font(font);


draw_sprite(dPad, 0, 258, 524);
draw_sprite(button, 0, 590, 508);
draw_sprite(tape, 0, 454, 0);
