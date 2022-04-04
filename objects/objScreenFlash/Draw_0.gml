/// @description Insert description here
// You can write your code in this editor

if (flashOn) {
  
  var alpha = draw_get_alpha();
  
  draw_set_alpha(0.8);
  //Draws single rectangle  
  draw_rectangle_color(objMetaControl.boundLeft, objMetaControl.boundUp, 
    objMetaControl.boundRight, objMetaControl.boundDown, #F8E587, #F8E587, #F8E587, #F8E587, false);
  
  draw_set_alpha(alpha);
  
}
