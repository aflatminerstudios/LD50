/// @description 
// You can write your code in this editor

var maxRecoveryAge = 4.0;
var chanceToCriticallyFail = 0.00005;
var chanceToFullyRevive = 0.0001;
var chanceToRevive = 0.0005;
var reviveMultiplier = 0.5;

var maxSum = 15;
var maxIndex = -1;
var lineList = ds_list_create();

for (var i = 0; i < numHPixels; i++) {
  var colSum = ds_grid_get_sum(pixelGrid, i, 0, i , numVPixels - 1);
  if (colSum > maxSum) {
     maxSum = colSum;
     maxIndex = i;     
  }
}

var lineIndex = (maxIndex == -1) ? -1 : oldMaxCol + sign(maxIndex - oldMaxCol);
oldMaxCol = lineIndex;
ds_list_add(lineList, lineIndex);

for (var i = 0; i < numHPixels; i++) {
  if (ds_list_find_index(lineList, i) != -1) {
    for (var j = 0; j < numVPixels; j++) {
      var cArray = scrCoordsGameToScreen(i, j, objMetaControl);
      
      //If column has maximum sum, draw it as black line
      draw_set_color(c_black);
      draw_rectangle(cArray[0], cArray[1], cArray[0] + pixelWidth -1 , cArray[1] + pixelHeight - 1, false);
    }
  } else {
  for (var j = 0; j < numVPixels; j++) {
    
      //Draw this pixel if grid is greater than 1
  	var pixelAge = ds_grid_get(pixelGrid, i, j)
      if (pixelAge >= 1) {
        var cArray = scrCoordsGameToScreen(i, j, objMetaControl);
	  
        depth = -10000; // This affects the order that subsequent Draw events are called in relation to other objects!
        draw_set_color(#94B26B);
        //draw_set_color(c_blue);
        draw_rectangle(cArray[0], cArray[1], cArray[0] + pixelWidth -1 , cArray[1] + pixelHeight - 1, false);
	  
	  
  	  // Experimental glitchy pixel drop+recover effect below this point
	  
  	  // If it hasn't gone too far, give it a chance to recover or completely fail
  	  if (pixelAge < maxRecoveryAge) {
  		// Give it a small chance to come back to life (reduce age or reset to zero)
  		var roll = random(1);
  		if (roll < chanceToCriticallyFail)
  		  ds_grid_set(pixelGrid, i, j, maxRecoveryAge);
  		else if (roll < chanceToFullyRevive)
  		  ds_grid_set(pixelGrid, i, j, 0.0);
  		else if (roll < chanceToRevive)
  		  ds_grid_set(pixelGrid, i, j, pixelAge*reviveMultiplier);
  	  }
      }
    }
  }
}


