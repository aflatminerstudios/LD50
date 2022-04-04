/// @description Spawn bombs
// You can write your code in this editor

var numBombs = instance_number(objBulletHBomb) + instance_number(objBulletHSpecialBomb);

if (numBombs == 0) {
  var type = random(1) < 0.7 ? objBulletHBomb : objBulletHSpecialBomb;
  var posX = objMetaControl.boundLeft + irandom_range(25, 175);
  var posY = objMetaControl.boundUp + irandom_range(25, 175);
  
  var theBomb = instance_create_depth(posX, posY, depth, type);
  
  with (theBomb) {
     
    while (place_meeting(x, y, objBulletHTower) || place_meeting(x, y, objBulletHPlayer)) {
      x = objMetaControl.boundLeft + irandom_range(25, 175);
      y = objMetaControl.boundUp + irandom_range(25, 175);
    }
    

    
  }
  
}


alarm[1] = irandom_range(bombSpawnMin, bombSpawnMax);
