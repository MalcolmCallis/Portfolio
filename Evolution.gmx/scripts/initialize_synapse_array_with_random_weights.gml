input_neuron_count_ = argument[0]
output_neuron_count_ = argument[1]

synapses = undefined

for(i = 0; i < input_neuron_count_; i++){
    for(j = 0; j < output_neuron_count_; j++){
    
        synapses[i,j] = random(20) - 10.0
    }
}

return synapses
