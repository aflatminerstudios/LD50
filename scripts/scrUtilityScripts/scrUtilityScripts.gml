/// @description Insert description here
// if (live_call()) return live_result;
// if (live_call(argument0, argument1)) return live_result; // For 2 arg scripts
function scrUtilityScripts(){

}

/// @description Inserts thousand separatesrs (',')

function scrAddThousandSep(num) {
  var asString = string(num);
  for (var i = string_length(asString) - 2; i > 1; i -= 3) {
     asString = string_insert(",", asString, i);
  }
  return asString;
}
