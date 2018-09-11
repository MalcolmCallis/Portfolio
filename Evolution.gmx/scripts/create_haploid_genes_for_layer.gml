var parent_first_chromosome_synapses = argument[0]
var parent_first_chromosome_genetic_dominance_array = argument[1]
var parent_second_chromosome_synapses = argument[2]
var parent_second_chromosome_genetic_dominance_array = argument[3]

var input_neuron_count_ = array_height_2d(parent_first_chromosome_synapses)
var output_neuron_count_ = array_length_2d(parent_first_chromosome_synapses,0)

var haploid_synapse_array = undefined;   
haploid_synapse_array[input_neuron_count_ - 1,output_neuron_count_ - 1] = 0;        
var haploid_genetic_dominance_array = undefined;
haploid_genetic_dominance_array[output_neuron_count_ - 1] = 0  


var gene_to_use;  
for(var i = 0; i < output_neuron_count_; i++){
    
    use_first_gene = random(2) < 1;
    if(use_first_gene){
        gene_to_use = parent_first_chromosome_synapses
        genetic_dominance_array_to_use = parent_first_chromosome_genetic_dominance_array
    } else {
        gene_to_use = parent_second_chromosome_synapses
        genetic_dominance_array_to_use = parent_second_chromosome_genetic_dominance_array
    }

    haploid_genetic_dominance_array[i] = genetic_dominance_array_to_use[i]
    for(var j = 0; j < input_neuron_count_; j++){
        haploid_synapse_array[j,i] = gene_to_use[j,i]
    }
}
return_array = undefined
return_array[0] = haploid_synapse_array
return_array[1] = haploid_genetic_dominance_array
return return_array
