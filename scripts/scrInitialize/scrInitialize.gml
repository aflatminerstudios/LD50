// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
// if (live_call()) return live_result;
// if (live_call(argument0, argument1)) return live_result; // For 2 arg scripts



function scrInitialize() {
	
	global.dev_mode = false;
	

  
  randomize();
}

function scrSetupScribbleFonts() {

	scribble_font_add("fntMermaid20");
	scribble_font_add("fntMermaid28");
	scribble_font_add("fntMermaid36");

	//The default font will be fnt_dialogue as it was added first
	scribble_font_set_default("fntMermaid28");
}
