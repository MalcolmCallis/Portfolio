var array = argument[0]//2d array

var height = array_height_2d(array)
var length = array_length_2d(array,0)

var new_array;
new_array[height - 1,length - 1] = 0;

for(var i = 0; i < height; i++){
    for(var j = 0; j < length; j++){
        new_array[i,j] = array[i,j];
    }
}

return new_array;
