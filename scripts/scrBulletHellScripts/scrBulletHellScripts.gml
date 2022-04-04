/// @description Insert description here
// if (live_call()) return live_result;
// if (live_call(argument0, argument1)) return live_result; // For 2 arg scripts
function scrBulletHellScripts(){

}

function scrBulletHLaunchBomb(positionObj, isSpecial) {
 
 var points = 0; 
 
 instance_create_depth(positionObj.x, positionObj.y, positionObj.depth - 1, objScreenFlash);
 
 audio_play_sound(sndBulletHUseBomb, 1, false);
 
 with (objBulletHBullet) {
  instance_destroy();
  points += 2;
 }
 
 with (objBulletHTower) {
  hp -= 1;
  if (hp <= 0) {
   damaged = true;
   hp = irandom_range(minHP, maxHP);   
   sprite_index = sprBulletHTowerDamaged;
   alarm[1] = irandom_range(minRepairTime, maxRepairTime);
   points += 20;
  }
 }
 

if (isSpecial) {
  scrRepairAtPosition(positionObj, 0.5, 10);
}
 
 with (objBulletHControl) {
  gameScore += points; 
 }
 
}

function scrRepairAtPosition(positionObj, strength, range) {
  var pixelGrid = objMetaControl.pixelGrid;
  var burntCols = objMetaControl.burntColList;
  
  var cArray = scrCoordsScreenToGame(positionObj.x, positionObj.y, objMetaControl);
  var gridX = cArray[0];
  var gridY = cArray[1];
  for (var i = 1; i < range; ++i) {
    ds_grid_add_disk(pixelGrid, gridX, gridY, i, -1 * strength);    
  }
  
  for (var i = gridX - range / 2; i < gridX + range/2; i++) {
    var theIndex = ds_list_find_index(burntCols, i)
    while (ds_list_find_index(burntCols, i) != -1) {
      ds_list_delete(burntCols, theIndex);
      theIndex = ds_list_find_index(burntCols, i)
    }
  }
  
}
