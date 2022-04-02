/// @description Checks all inputs and returns  a string repreestnting which input was selected
// if (live_call()) return live_result;
// if (live_call(argument0, argument1)) return live_result; // For 2 arg scripts
function scrCheckInput(){
  /*inputString = "";
	//Checks all 4 inputs, otherwise returns empty space
	if (scrCheckRight()) {
	  inputString += "right";
	}
  if (scrCheckLeft()) {
	  inputString += "left"; 
	}
  if (scrCheckDown()) {
	  inputString += "down"; 
	}
  if (scrCheckUp()) {
	  inputString += "up"; 
	}
  return inputString;*/
  inputList = ds_list_create();
	//Checks all 4 inputs, otherwise returns empty space
	if (scrCheckRight()) {
	  ds_list_add(inputList, "right");
	}
  if (scrCheckLeft()) {
	  ds_list_add(inputList, "left"); 
	}
  if (scrCheckDown()) {
	  ds_list_add(inputList, "down"); 
	}
  if (scrCheckUp()) {
	  ds_list_add(inputList, "up"); 
	}
  return inputList;
  
}

/// @function     scrCheckLeft();
/// @description  Checks whether the user is pressing left
function scrCheckLeft() {
	if (keyboard_check(vk_left) || keyboard_check(ord("A"))) {
	  return true;
	}
}

/// @function     scrCheckRight();
/// @description  Checks whether the user is pressing right
function scrCheckRight() {
	if (keyboard_check(vk_right) || keyboard_check(ord("D"))) {
	  return true;
	}
}

/// @function     scrCheckUp();
/// @description  Checks whether the user is pressing up
function scrCheckUp() {
	if (keyboard_check(vk_up) || keyboard_check(ord("W"))) {
	  return true;
	}
}

/// @function     scrCheckDown();
/// @description  Checks whether the user is pressing down
function scrCheckDown() {
	if (keyboard_check(vk_down) || keyboard_check(ord("S"))) {
	  return true;
	}
}
