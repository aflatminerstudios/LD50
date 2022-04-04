/// @description Escape!


objSlimeControl.escapesCount++;
audio_play_sound(sndSlimeEscape, 1, false); // Woosh or buzzer sound?

// Inform objSlimeControl that this spot is free again
ds_grid_set(objSlimeControl.slimeGrid, positionX, positionY, 0);

instance_destroy();


