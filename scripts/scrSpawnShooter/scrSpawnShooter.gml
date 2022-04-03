/// @description Insert description here
// if (live_call()) return live_result;
// if (live_call(argument0, argument1)) return live_result; // For 2 arg scripts
function scrSpawnShooter(){

}

/// @description Spawns a bullet from source object that is heading towards destination object
function scrSpawnShooterBullet(objSource, objDestination) {
  
  audio_play_sound(sndBulletShoot, 1, false);
  
  var spawnX = objSource.x + (objSource.bulletX * sign(image_xscale));
  var spawnY = objSource.y + objSource.bulletY;
  var bullet = instance_create_depth(spawnX, spawnY, objSource.depth, objShooterBullet);
  bullet.direction = point_direction(spawnX, spawnY, objDestination.x, objDestination.y);
}

function scrSpawnShooterEnemy(objRoomCoords) {
  var whichDir = irandom_range(1, 4);
  
  var otherDist = irandom(40);
  
  var posX = irandom(objRoomCoords.screenWidth);;
  var posY = irandom(objRoomCoords.screenHeight);
  
  switch(whichDir) {
  case 1:
    posX = objRoomCoords.boundLeft - otherDist;
    break;
    
  case 2:
    posX = objRoomCoords.boundRight + otherDist;
    break;
    
  case 3:
    posY = objRoomCoords.boundUp - otherDist;
    break;
    
  case 4:
    posY = objRoomCoords.boundDown + otherDist;
    break;
  }
  
  var inst = instance_create_depth(posX, posY, objRoomCoords.depth, objShooterEnemy);
  
  var diff = irandom_range(-1 * inst.moveVariance, inst.moveVariance);  
  inst.speed = inst.speed + diff;
  diff = irandom_range(-1 * inst.hpVariance, inst.hpVariance);
  inst.hp += diff;
  
}
