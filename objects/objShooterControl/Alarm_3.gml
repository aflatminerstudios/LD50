/// @description Insert description here
// You can write your code in this editor


minEnemies += 0.5;
maxEnemies += 0.6;

spawnChance *= 1.2;
clamp(spawnChance, 0, 1.0);

spawnTime *= 0.95;
clamp(spawnTime, minSpawnTime + 1, baseSpawnTime);

scoreIncrease += 1;

alarm[3] = improveTime;
