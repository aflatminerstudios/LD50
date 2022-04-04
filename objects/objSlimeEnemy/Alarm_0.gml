/// @description End of squished time
// Inform objSlimeControl that this spot is free again
ds_grid_set(objSlimeControl.slimeGrid, positionX, positionY, 0);

instance_destroy();

