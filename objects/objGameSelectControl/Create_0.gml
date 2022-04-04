/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

view_visible[1] = false;

instance_create_depth(400, 320, depth + 1, objGameSelectBG);

carts[0] = instance_create_layer(300, 220, "Instances", objGameCart);
carts[0].cartNum = 0;
carts[0].gameName = "Snake";
carts[0].selectedSprite = sprSnakeCartSelected;
carts[0].unselectedSprite = sprSnakeCart;
carts[0].sprite_index = carts[0].selectedSprite;

carts[1] = instance_create_layer(500, 220, "Instances", objGameCart);
carts[1].cartNum = 1;
carts[1].gameName = "Shooter";
carts[1].selectedSprite = sprShooterCartSelected;
carts[1].unselectedSprite = sprShooterCart;
carts[1].sprite_index = carts[1].unselectedSprite;

carts[2] = instance_create_layer(300, 420, "Instances", objGameCart);
carts[2].cartNum = 2;
carts[2].gameName = "Slime";
carts[2].selectedSprite = sprSlimeCartSelected;
carts[2].unselectedSprite = sprSlimeCart;
carts[2].sprite_index = carts[2].unselectedSprite;

numCarts = array_length(carts);

whichCart = 0;
