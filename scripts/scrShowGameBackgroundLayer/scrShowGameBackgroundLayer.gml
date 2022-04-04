/// @description 

function scrShowGameBackgroundLayer(layerName) {
	
	
	var backgrounds = ["BulletHBackground", "ShooterBackground", "SlimeBackground", "SnakeBackground"];


	for (var i = 0; i < array_length(backgrounds); i++) {
		var layerID = layer_get_id(backgrounds[i]);
		var bgLayerID = layer_background_get_id(layerID);
		if (layerName == backgrounds[i]) {
			layer_background_visible(bgLayerID, true);
		} else {
			layer_background_visible(bgLayerID, false);
		}
	}
}