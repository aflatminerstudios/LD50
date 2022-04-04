/// @description Switches to game passed in as param
/// @param {string} whichGame which game do you want to switch to
// if (live_call(argument0, argument1)) return live_result; // For 2 arg scripts
function scrSwitchGame(whichGame){

  //TODO: Do any internal score cleanups or anything before destruction
  
  var newScore = 0;
  
  //Just add game score to total score  
  if (instance_number(objControlParent) > 0) {
    newScore += objControlParent.gameScore;
    objMetaControl.totalScore += newScore
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
 var oldGame = objMetaControl.currentGame;
 objMetaControl.currentGame = whichGame;
 
 //Create new control object for new game, which probably autostarts
 instance_create_depth(0, 0, 0, ds_map_find_value(objMetaControl.controlObjects, whichGame));

 var pctBurntCols = 0;
 var pctDeadPixels = 0;
 
 var numDeadPixels = 0;
 var numBurntCols = ds_list_size(objMetaControl.burntColList);
 
 for (var i = 0; i < objMetaControl.numHPixels; i++) {
  for (var j = 0; j < objMetaControl.numVPixels; j++) {
      //Draw this pixel if grid is greater than 1
  	var pixelAge = ds_grid_get(objMetaControl.pixelGrid, i, j)
    if (pixelAge > 1) {
      numDeadPixels += 1;
    }
  }
 }
 pctBurntCols = numBurntCols / objMetaControl.numVPixels;
 pctDeadPixels = numDeadPixels / (objMetaControl.numHPixels * objMetaControl.numVPixels); 
 
 if (oldGame != "GameSelect" && oldGame != "Credits" && oldGame != "Title") {
  scrSelectMessage(newScore, objMetaControl.totalScore, pctBurntCols, pctDeadPixels);
 }

 layer_background_sprite(objMetaControl.bgLayer, ds_map_find_value(objMetaControl.backgrounds, whichGame));

}

function scrSelectMessage(newScore, totalScore, pctBurntCols, pctDeadPixels) {
  var potentials = ds_list_create();  
  
  if (newScore > 3000) {
    for (var i = 0; i < 20; ++i) {
      ds_list_add(potentials, "That is the best game playing I've ever seen!"); 
    }
  }
  else if (newScore > 1000) {
    ds_list_add(potentials, "You wrecked that last game!"); 
    ds_list_add(potentials, "Great job!");
    ds_list_add(potentials, "I couldn't even do that 20 years ago.");
    ds_list_add(potentials, "You wrecked that last game!"); 
    ds_list_add(potentials, "Great job!");
    ds_list_add(potentials, "I couldn't even do that 20 years ago.");
    ds_list_add(potentials, "You wrecked that last game!"); 
    ds_list_add(potentials, "Great job!");
    ds_list_add(potentials, "I couldn't even do that 20 years ago.");
  } else if (newScore > 500) {
    ds_list_add(potentials, "Good job!");
    ds_list_add(potentials, "Where did you learn to play like that?");
    ds_list_add(potentials, "That's what I'm talking about!");
    ds_list_add(potentials, "Good job!");
    ds_list_add(potentials, "Where did you learn to play like that?");
    ds_list_add(potentials, "That's what I'm talking about!");
  } else if (newScore > 100) {
    ds_list_add(potentials, "Well, you could have done worse.");
    ds_list_add(potentials, "Good start, can you do better next time?");
    ds_list_add(potentials, "Pay more attention next time, I bet you'll live longer");
    ds_list_add(potentials, "Well, you could have done worse.");
    ds_list_add(potentials, "Good start, can you do better next time?");
    ds_list_add(potentials, "Pay more attention next time, I bet you'll live longer");
  } else {
    ds_list_add(potentials, "Let's not talk about that last game");
    ds_list_add(potentials, "Did you actually mean to start that one?");
    ds_list_add(potentials, "At least you tried.");
    ds_list_add(potentials, "Let's not talk about that last game");
    ds_list_add(potentials, "Did you mean to hit start?");
    ds_list_add(potentials, "At least you tried.");
  }
  
  
  if (totalScore > 10000) {
    ds_list_add(potentials, "You are a grand master at this stuff."); 
    ds_list_add(potentials, "I wish I could play games like you.");    
    ds_list_add(potentials, "You're the best!");
    ds_list_add(potentials, "You are a grand master at this stuff."); 
    ds_list_add(potentials, "I wish I could play games like you.");    
    ds_list_add(potentials, "You're the best!");
  } else if (totalScore > 5000) {
    ds_list_add(potentials, "You are so good!");
    ds_list_add(potentials, "You know what you're doing.");
    ds_list_add(potentials, "You are so good!");
    ds_list_add(potentials, "You know what you're doing.");
  } else if (totalScore > 1000) {
    ds_list_add(potentials, "Good start! Keep going!"); 
    ds_list_add(potentials, "Good start! Keep going!");
  } else {   
    if (random(1) < 0.4) {
      ds_list_add(potentials, "Screen's not looking too bad."); 
    }
  }
  
  if (pctBurntCols > 0.5 || pctDeadPixels > 0.5) {
    ds_list_add(potentials, "How can you even see anymore?"); 
  } else if (pctBurntCols > 0.25 || pctDeadPixels > 0.3) {
    ds_list_add(potentials, "That screen's starting to look a little worse for wear.");
  }
  
  if (pctBurntCols > 0.1) {
    ds_list_add(potentials, "Hey, those are some weird looking lines");
  } else if (pctDeadPixels > 0.1) {
    ds_list_add(potentials, "What are those spots???"); 
  }
  
  if ((pctBurntCols > 0.25 || pctDeadPixels > 0.3) && newScore > 500) {
    ds_list_add(potentials, "Wait, what!? How did you do that on THAT screen?");
  }
  
  ds_list_shuffle(potentials);
  

  objMessages.curMsg = potentials[| 0];
  ds_list_destroy(potentials);

}

