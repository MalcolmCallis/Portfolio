var synapses = argument[0]// 2d number array
var genetic_dominance_array = argument[1]// 1d number array

input_neuron_count_ = array_height_2d(synapses)
output_neuron_count_ = array_length_2d(synapses,0)
  
for(i = 0; i < output_neuron_count_; i++){
    if(random(1) < global.mutation_rate){    
        genetic_dominance_array[i] += random(global.mutation_amount) - global.mutation_amount / 2.0
        for(j = 0; j < input_neuron_count_; j++){
            synapses[j,i] += random(global.mutation_amount) - global.mutation_amount / 2.0
        }
    }
}

return_array = undefined
return_array[0] = synapses
return_array[1] = genetic_dominance_array
return return_array
