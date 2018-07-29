
clossness = argument[0]
toward_or_away = argument[1]
can_eat = argument[2]
cab_be_eaten = argument[3]
direction_difference = argument[4]
yumminess = argument[5]
constant = 1

me.input_neurons[0] = clossness;
me.input_neurons[1] = toward_or_away;
me.input_neurons[2] = can_eat;
me.input_neurons[3] = can_be_eaten;
me.input_neurons[4] = direction_difference
me.input_neurons[5] = yumminess;
me.input_neurons[6] = constant;

me.first_layer_neurons = evaluate_neuron_layer(me.input_neurons,me.first_layer_neurons,me.first_layer_synapses,false)

me.second_layer_neurons = evaluate_neuron_layer(me.first_layer_neurons,me.second_layer_neurons,me.second_layer_synapses,false)

me.output_layer_neurons = evaluate_neuron_layer(me.second_layer_neurons,me.output_layer_neurons,me.output_layer_synapses,true)

priority = me.output_layer_neurons[0]
move_direction = me.output_layer_neurons[1]

if(move_direction > 45){
    move_direction = 45
}
if(move_direction < -45){
    move_direction = -45
}    

candidate_action = undefined
candidate_action[0] = priority;
candidate_action[1] = move_direction;

return candidate_action
