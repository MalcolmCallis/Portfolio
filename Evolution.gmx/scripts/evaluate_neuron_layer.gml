
var input_layer = argument[0];//number array
var output_layer  = argument[1];//number array
var synapses = argument[2];//2d number array
var is_final_layer = argument[3];//boolean

var output_layer;
//reset neurons to zero
for(var j = 0; j < array_length_1d(output_layer); j++){
    output_layer[j] = 0.0;                
}



//calculate sum of inputs * synapse weights
for(var i = 0; i < array_length_1d(synapses); i++){
    for(var j = 0; j < array_length_2d(synapses,0); j++){
        output_layer[j] += input_layer[i] * synapses[i,j]
    }
}




if(!is_final_layer){
    //send summation through activation function
    for(var j = 0; j < array_length_1d(output_layer); j++){
        output_layer[j] = neuron_activation_function(output_layer[j]);                
    }

    var constant = 1.0;
    output_layer[array_length_1d(output_layer) - 1] = constant;
}
    
return output_layer;
