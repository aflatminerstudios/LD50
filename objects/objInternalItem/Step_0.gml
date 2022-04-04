/// @description Increment pixel counter for now
// You can write your code in this editor


var topLeft = scrCoordsScreenToGame(bbox_left, bbox_top, objMetaControl);
var bottomRight = scrCoordsScreenToGame(bbox_right, bbox_bottom, objMetaControl); 

//show_debug_message(string(sprite_width) + " :: " + string(sprite_height));

//show_debug_message("topLeft: " + string(topLeft[0]) + ", " + string(topLeft[1]));
//show_debug_message("bottomRight: " + string(bottomRight[0]) + ", " + string(bottomRight[1]));

var chanceToIncrease = 0.9;
for (var i = topLeft[0]; i <= bottomRight[0] && i < objMetaControl.numHPixels; i++) {
  for (var j = topLeft[1]; j <= bottomRight[1] && j < objMetaControl.numHPixels; j++) {    
    //show_debug_message(string(i) + ", " + string(j));
    
    if (i >= 0 && j >= 0 && irandom(1) < chanceToIncrease) {
      var gridAmt = ds_grid_get(objMetaControl.pixelGrid, i, j);
      gridAmt = gridAmt + counterIncrease;
      gridAmt = clamp(gridAmt, 0, 2);
      ds_grid_add(objMetaControl.pixelGrid, i, j, counterIncrease);    
    }
  }
}
/*
var coords = scrCoordsScreenToGame(x, y, objMetaControl);

var pixelX = coords[0];
var pixelY = coords[1];

if (pixelX >= 0 && pixelY >= 0) {

//var pixelValue = ds_grid_get(objMetaControl.pixelGrid, pixelX, pixelY);
//pixelValue += 0.5;
  ds_grid_add(objMetaControl.pixelGrid, pixelX, pixelY,  counterIncrease+0.5);
}
*/
