/// @description Insert description here
// You can write your code in this editor

if (!isPaused) {
  
  //Check moves
  if (scrCheckUp()) {
    y -= moveSpeed;
  }
  if (scrCheckDown()) {
    y += moveSpeed; 
  }
  if (scrCheckLeft()) {
    x -= moveSpeed; 
  }
  if (scrCheckRight()) {
    x += moveSpeed; 
  }
  
  
  
}
