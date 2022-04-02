/// @description Insert description here
// if (live_call()) return live_result;
// if (live_call(argument0, argument1)) return live_result; // For 2 arg scripts
function scrSpawnSnakeObject(gridX, gridY, obj){
  var posX = objMetaControl.boundLeft + objSnakeControl.borderX + objSnakeControl.gridWidth * gridX;
  var posY = objMetaControl.boundUp + objSnakeControl.borderY + objSnakeControl.gridWidth * gridY;
  
  var inst = instance_create_layer(posX, posY, "Instances", obj);
  return inst;
}

function scrSpawnSnakeTarget() {

 do  {
   //TODO: Fix spawning
    var gridX = irandom(objSnakeControl.numGridX - 1) + 1;
    var gridY = irandom(objSnakeControl.numGridY - 1) + 1;
    show_debug_message("Spawning at: " + string(gridX) + " , " + string(gridY));
    var target = scrSpawnSnakeObject(gridX, gridY, objSnakeTarget);
    var collInst = instance_place(target.x, target.y, objSnakePart);
    var collInst2 = instance_place(target.x, target.y, objSnakePlayer);
 } until (collInst == noone && collInst2 == noone);
 
 

 
}
