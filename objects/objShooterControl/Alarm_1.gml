/// @description Potentially spawn if under max
// You can write your code in this editor

var numEnemies = instance_number(objShooterEnemy);

if (random(1) < spawnChance) {
  if (numEnemies < maxEnemies) {
    scrSpawnShooterEnemy(objMetaControl);
  }
}
alarm[1] = spawnTime;
