/// @description Move head and spawn other pieces
// You can write your code in this editor

//First spawn a new piece

if (!isPaused) {
  var newSnake = instance_create_depth(x, y, depth, objSnakePart);
  newSnake.numTurns = maxParts + 1;
  newSnake.curDir = oldDir;
  newSnake.nextPieceDir = turnDir;
  var diff = turnDir - oldDir;
  newSnake.sprite_index = choose(sprSnakeBody, sprSnakeBody2, sprSnakeBody3);
  newSnake.image_angle = newSnake.curDir - 90;
  
  if (diff == 90 || diff == -270) {
    newSnake.sprite_index = sprSnakeTurnLeft;
  } else if (diff == -90 || diff == 270) {
    newSnake.sprite_index = sprSnakeTurnRight;
  }

  


  ds_list_add(partList, newSnake);







  //Move snake
  switch(turnDir) {
 
  case 0:
    x += objSnakeControl.gridWidth;  
    break;
  case 90:
    y -= objSnakeControl.gridWidth;
    break;
  case 180:
    x -= objSnakeControl.gridWidth;  
    break;
  case 270:
    y += objSnakeControl.gridWidth;
    break;
  }

  image_angle = turnDir - 90;

  if(ds_list_size(partList) > maxParts) {  
    var size = ds_list_size(partList);
  
    for (var i = 0; i < size - maxParts; i++) {
      
      with (partList[| i]) {
        instance_destroy(); 
      }
    }
  
    for (var i = 0; i < size - maxParts; i++) {
      ds_list_delete(partList, 0);
    }
  }


  var lastSnake = partList[| 0];
  lastSnake.sprite_index = sprSnakeTail;
  var nextSnake = objSnakePlayer;
  if (ds_list_size(partList) > 1) {
    nextSnake = partList[| 1]; 
  }

  lastSnake.image_angle = point_direction(lastSnake.x, lastSnake.y, nextSnake.x, nextSnake.y) - 90;

  //Check for collision with snake part
  inst = instance_place(x, y, objSnakePart);
  if (inst != noone && inst != newSnake) {
     if (inst.numTurns > 0) {
       objSnakeControl.alarm[0] = 1;
     }
  }

  turnSpeed /= 1.001;

  alarm[0] = turnSpeed;

  oldDir = turnDir;
}
