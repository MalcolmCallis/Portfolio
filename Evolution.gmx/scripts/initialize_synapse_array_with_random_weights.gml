var input_neuron_count = argument[0]
var output_neuron_count = argument[1]

var synapses = undefined

for(var i = 0; i < input_neuron_count; i++){
    for(var j = 0; j < output_neuron_count; j++){
    
        synapses[i,j] = random(20) - 10.0
    }
}

return synapses
