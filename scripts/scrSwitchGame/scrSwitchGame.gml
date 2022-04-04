/// @description Switches to game passed in as param
/// @param {string} whichGame which game do you want to switch to
// if (live_call(argument0, argument1)) return live_result; // For 2 arg scripts
function scrSwitchGame(whichGame){

  //TODO: Do any internal score cleanups or anything before destruction
  
  //Just add game score to total score  
  if (instance_number(objControlParent) > 0) {
    objMetaControl.totalScore += objControlParent.gameScore;
  }
  
  with (objGameCart) {
    instance_destroy();
  }
  
  with (objGameSelectBG) {
    instance_destroy(); 
  }
  
  //Destroy all displayed objects
  with (objInternalItem) {
    instance_destroy();
  }
  
  with (objInternalNonBurn) {
    instance_destroy(); 
  }


  //Destroy control objects
  with (objControlParent) {
    instance_destroy(); 
  }
  with (objMiniTitleParent) {
    instance_destroy();
  }
  
 objMetaControl.currentGame = whichGame;
 
 //Create new control object for new game, which probably autostarts
 instance_create_depth(0, 0, 0, ds_map_find_value(objMetaControl.controlObjects, whichGame));

 layer_background_sprite(objMetaControl.bgLayer, ds_map_find_value(objMetaControl.backgrounds, whichGame));

}

