var value = argument[0]
var max_value = argument[1]
var radius = argument[2]

var portion_of_circle = value / max_value;
var radians = 2.0 * pi * portion_of_circle;
var x_coord = cos(radians) * radius;
var y_coord = sin(radians) * radius;
var x_and_y;
x_and_y[0] = x_coord;
x_and_y[1] = y_coord;

return x_and_y;
