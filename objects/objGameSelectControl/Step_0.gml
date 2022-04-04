/// @description Insert description here
// You can write your code in this editor

var input = scrCheckInput();

if (ds_list_find_index(input, "leftPressed") != -1) {
   
   carts[whichCart].sprite_index = carts[whichCart].unselectedSprite;
   
   whichCart -= 1;
   if (whichCart < 0) {
    whichCart = numCarts - 1; 
   }
   audio_play_sound(sndMoveSelect, 1, false);
   carts[whichCart].sprite_index = carts[whichCart].selectedSprite;
}
if (ds_list_find_index(input, "rightPressed") != -1) {
   carts[whichCart].sprite_index = carts[whichCart].unselectedSprite;
   
   whichCart += 1;
   whichCart %= numCarts;
   audio_play_sound(sndMoveSelect, 1, false);
   carts[whichCart].sprite_index = carts[whichCart].selectedSprite;
}
if (ds_list_find_index(input, "actionPressed") != -1) {  
  var theGame = carts[whichCart].gameName;
  with (objGameSelectBG) {
    instance_destroy(); 
  }
  with (objGameCart) {
    instance_destroy(); 
  }
  audio_play_sound(sndSelectCart, 1, false);
  scrSwitchGame(theGame);
}

ds_list_destroy(input);
