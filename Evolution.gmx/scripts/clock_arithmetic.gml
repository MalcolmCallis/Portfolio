var value = argument[0]
var max_value = argument[1]

if(value > max_value / 2.0){
    value -= max_value;
} else if (value < -max_value / 2.0){
    value += max_value
}

return value;
