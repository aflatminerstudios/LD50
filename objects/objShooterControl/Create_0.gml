/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();


instance_create_layer(objMetaControl.boundLeft + 100, objMetaControl.boundUp + 100, "Instances", objShooterPlayer);
scrSpawnShooterEnemy(objMetaControl);
scrSpawnShooterEnemy(objMetaControl);


maxEnemies = 8;
minEnemies = 2;


baseSpawnChance = 0.4;
spawnChance = baseSpawnChance;
minSpawnTime = room_speed / 12;
baseSpawnTime = room_speed / 2;
spawnTime = baseSpawnTime;

improveTime = room_speed;


alarm[0] = minSpawnTime;

alarm[1] = spawnTime;

alarm[2] = improveTime;

