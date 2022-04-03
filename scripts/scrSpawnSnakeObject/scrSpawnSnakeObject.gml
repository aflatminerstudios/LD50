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
var collInst;

do  {
  //TODO: Fix spawning
  var gridX = irandom(objSnakeControl.numGridX - 1) + 1;
  var gridY = irandom(objSnakeControl.numGridY - 1) + 1;    
  var target = scrSpawnSnakeObject(gridX, gridY, objSnakeTarget);
  collInst = instance_place(target.x, target.y, objSnakePart);
  if (collInst == noone) {
    collInst = instance_place(target.x, target.y, objSnakePlayer);
  }
  if (collInst != noone) {
    with (target) {
      instance_destroy(); 
    }
  }
  
} until (collInst == noone);
 
 

 
}
