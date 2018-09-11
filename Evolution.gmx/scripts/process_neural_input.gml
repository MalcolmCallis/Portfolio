me = argument[0]
neural_input = argument[1]

for(var i = 0; i < array_length_1d(neural_input);i++){
    me.input_layer_neurons[i] = neural_input[i];
}
var constant = 1.0;
me.input_layer_neurons[global.input_neuron_count - 1] = constant;

me.first_layer_neurons = evaluate_neuron_layer(me.input_layer_neurons,me.first_layer_neurons,me.first_layer_synapses,false)

me.second_layer_neurons = evaluate_neuron_layer(me.first_layer_neurons,me.second_layer_neurons,me.second_layer_synapses,false)

me.output_layer_neurons = evaluate_neuron_layer(me.second_layer_neurons,me.output_layer_neurons,me.output_layer_synapses,true)
  
var candidate_action;

for(var i = 0; i < array_length_1d(me.output_layer_neurons);i++){
    candidate_action[i] = me.output_layer_neurons[i];
}

return candidate_action
