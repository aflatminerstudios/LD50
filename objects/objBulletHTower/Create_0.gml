/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

minHP = 1;
maxHP = 5;
hp = irandom_range(minHP, maxHP);
damaged = false;

bulletX = 0;
bulletY = 0;

shootMin = room_speed / 4;
shootMax = room_speed * 0.8;

minRepairTime = room_speed;
maxRepairTime = room_speed * 3;


alarm[0] = irandom_range(room_speed * 0.9, room_speed * 1.1)  + irandom_range(shootMin, shootMax);

