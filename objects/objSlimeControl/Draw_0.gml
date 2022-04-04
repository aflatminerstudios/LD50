/// @description 
// Inherit the parent event
event_inherited();


var x0 = objMetaControl.boundLeft
var y0 = objMetaControl.boundUp

var spacing = 16; // sprite size + space between
var initialX = x0 + 8;
var initialY = y0 + 8;

for (var i = 0; i < maxEscapes; i++) {
	if (i < escapesCount)
		draw_sprite(sprSlimeMissMini, 0, initialX+i*spacing, initialY);
	else
		draw_sprite(sprSlimeEnemyMini, 0, initialX+i*spacing, initialY);
}
