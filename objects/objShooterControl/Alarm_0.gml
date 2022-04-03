/// @description Spawn enemy if under min
// You can write your code in this editor

var numEnemies = instance_number(objShooterEnemy);

if (numEnemies < minEnemies) {
  scrSpawnShooterEnemy(objMetaControl);
}

alarm[0] = minSpawnTime;
