/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();


instance_create_layer(250, 250, "Instances", objShooterPlayer);
instance_create_layer(1000, 500, "Instances", objShooterEnemy);
instance_create_layer(700, 60, "Instances", objShooterEnemy);


maxEnemies = 8;
minEnemies = 1;


baseSpawnChance = 0.4;
spawnChance = baseSpawnChance;
minSpawnTime = room_speed / 10;
baseSpawnTime = room_speed / 2;
spawnTime = baseSpawnTime;

improveTime = room_speed * 2;


alarm[0] = minSpawnTime;

alarm[1] = spawnTime;

alarm[2] = improveTime;
