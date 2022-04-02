// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
// if (live_call()) return live_result;
// if (live_call(argument0, argument1)) return live_result; // For 2 arg scripts

function log(logText) {
	show_debug_message(logText);	
}

function debug_log(logText) {
	if (global.dev_mode)
		log(logText);	
}
