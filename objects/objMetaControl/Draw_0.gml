/// @description 
// You can write your code in this editor

for (var i = 0; i < numHPixels; i++) {
  for (var j = 0; j < numVPixels; j++) {
    
    //Draw this pixel if grid is greater than 1
    if (ds_grid_get(pixelGrid, i, j) >= 1) {
      var cArray = scrCoordsGameToScreen(i, j, objMetaControl);
	  
      depth = -10000; // This affects the order that subsequent Draw events are called in relation to other objects!
      //draw_set_color(#94B26B);
      draw_set_color(c_blue);
      draw_rectangle(cArray[0], cArray[1], cArray[0] + pixelWidth, cArray[1] + pixelHeight, false);
    }
  }
}


