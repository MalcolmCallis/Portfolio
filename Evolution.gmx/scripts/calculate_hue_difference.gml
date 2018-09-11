var hue0 = argument[0]
var hue1 = argument[1]

var hue_count = global.hue_shade_count;

var hue_difference = hue0 - hue1;

//clock arithmatic
if(hue_difference > global.hue_shade_count / 2.0){
    hue_difference -= global.hue_shade_count
} else if (hue_difference < -global.hue_shade_count / 2.0){
    hue_difference += global.hue_shade_count;
}

return hue_difference
