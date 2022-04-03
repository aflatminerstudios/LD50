/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();


instance_create_layer(objMetaControl.boundLeft + 100, objMetaControl.boundUp + 100, "Instances", objShooterPlayer);
scrSpawnShooterEnemy(objMetaControl);
scrSpawnShooterEnemy(objMetaControl);


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

