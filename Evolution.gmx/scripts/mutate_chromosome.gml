var chrom = argument[0];//chromomse object

    
var baby_bot_size_and_genetic_dominance = mutate_baby_bot_size(chrom.baby_bot_size,chrom.baby_bot_size_genetic_dominance);
 
chrom.baby_bot_size = baby_bot_size_and_genetic_dominance[0];
chrom.baby_bot_size_genetic_dominance = baby_bot_size_and_genetic_dominance[1];

var synapses_and_dominance_array = mutate_synapse_and_dominance_layer(chrom.first_layer_synapses,chrom.first_layer_genetic_dominance_array);

chrom.first_layer_synapses = synapses_and_dominance_array[0];
chrom.first_layer_genetic_dominance_array = synapses_and_dominance_array[1];

synapses_and_dominance_array = mutate_synapse_and_dominance_layer(chrom.second_layer_synapses,chrom.second_layer_genetic_dominance_array)

chrom.second_layer_synapses = synapses_and_dominance_array[0]
chrom.second_layer_genetic_dominance_array = synapses_and_dominance_array[1]

synapses_and_dominance_array = mutate_synapse_and_dominance_layer(chrom.output_layer_synapses,chrom.output_layer_genetic_dominance_array)

chrom.output_layer_synapses = synapses_and_dominance_array[0]
chrom.output_layer_genetic_dominance_array = synapses_and_dominance_array[1]
    
return chrom
