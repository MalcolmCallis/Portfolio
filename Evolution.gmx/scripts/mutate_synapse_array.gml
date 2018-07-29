input_neuron_count_ = argument[0]
output_neuron_count_ = argument[1]
parent_synapse_array = argument[2]

synapses = undefined

for(i = 0; i < input_neuron_count_; i++){
    for(j = 0; j < output_neuron_count_; j++){
        synapses[i,j] = (random(2) - 1.0) * global.mutation_rate
            synapses[i,j] += parent_synapse_array[i,j]
    }
}

return synapses
