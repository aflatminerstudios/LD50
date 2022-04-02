/// @description Checks all inputs and returns  a string repreestnting which input was selected
// if (live_call()) return live_result;
// if (live_call(argument0, argument1)) return live_result; // For 2 arg scripts
function scrCheckInput(){
	//Checks all 4 inputs, otherwise returns empty space
	if (scrCheckRight()) {
	  return "right";
	} else if (scrCheckLeft()) {
	  return "left"; 
	} else if (scrCheckDown()) {
	  return "down"; 
	} else if (scrCheckUp()) {
	  return "up"; 
	} else {
	  return " "; 
	}
}

/// @function     scrCheckLeft();
/// @description  Checks whether the user is pressing left
function scrCheckLeft() {
	if (keyboard_check_pressed(vk_left) || keyboard_check_pressed(ord("A"))) {
	  return true;
	}
}

/// @function     scrCheckRight();
/// @description  Checks whether the user is pressing right
function scrCheckRight() {
	if (keyboard_check_pressed(vk_right) || keyboard_check_pressed(ord("D"))) {
	  return true;
	}
}

/// @function     scrCheckUp();
/// @description  Checks whether the user is pressing up
function scrCheckUp() {
	if (keyboard_check_pressed(vk_up) || keyboard_check_pressed(ord("W"))) {
	  return true;
	}
}

/// @function     scrCheckDown();
/// @description  Checks whether the user is pressing down
function scrCheckUp() {
	if (keyboard_check_pressed(vk_down) || keyboard_check_pressed(ord("S"))) {
	  return true;
	}
}
