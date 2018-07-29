
input_layer = argument[0];//number array
output_layer  = argument[1];//number array
synapses = argument[2];//2d number array
final_layer = argument[3];//boolean

//reset neurons to zero
for(j = 0; j < array_length_1d(output_layer); j++){
    output_layer[j] = 0.0;                
}



//calculate sum of inputs * synapse weights
for(i = 0; i < array_length_2d(synapses,0); i++){
    for(j = 0; j < array_length_2d(synapses,1); j++){
            output_layer[j] += input_layer[i] * synapses[i,j]
        }
    }




if(!final_layer){
    //send summation through activation function
    for(j = 0; j < array_length_1d(output_layer); j++){
        output_layer[j] = neuron_activation_function(output_layer[j]);                
    }

    //constant neuron
    output_layer[array_length_1d(output_layer) - 1] = 1.0
}
    
return output_layer;
