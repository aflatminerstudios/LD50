/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

minHP = 3;
maxHP = 6;
hp = irandom_range(minHP, maxHP);
damaged = false;

bulletX = 0;
bulletY = 0;

shootMin = room_speed / 6;
shootMax = room_speed / 2;

minRepairTime = room_speed;
maxRepairTime = room_speed * 2;


alarm[0] = irandom_range(room_speed * 0.9, room_speed * 1.1)  + irandom_range(shootMin, shootMax);

