var first_chromosome_ = argument[0]
var second_chromosome_ = argument[1]

var haploid_chromosome

with(instance_create(0,0,parameters)){
    haploid_chromosome = self
    
    var baby_bot_size_and_genetic_dominance = calculate_inherited_baby_bot_size(first_chromosome_,second_chromosome_)
     
    self.baby_bot_size = baby_bot_size_and_genetic_dominance[0]
    self.baby_bot_size_genetic_dominance = baby_bot_size_and_genetic_dominance[1]
    
    var synapses_and_dominance_array = create_haploid_genes_for_layer(first_chromosome_.first_layer_synapses,first_chromosome_.first_layer_genetic_dominance_array,second_chromosome_.first_layer_synapses,second_chromosome_.first_layer_genetic_dominance_array)
    
    self.first_layer_synapses = synapses_and_dominance_array[0]
    self.first_layer_genetic_dominance_array = synapses_and_dominance_array[1]
    
    synapses_and_dominance_array = create_haploid_genes_for_layer(first_chromosome_.second_layer_synapses,first_chromosome_.second_layer_genetic_dominance_array,second_chromosome_.second_layer_synapses,second_chromosome_.second_layer_genetic_dominance_array)
    
    self.second_layer_synapses = synapses_and_dominance_array[0]
    self.second_layer_genetic_dominance_array = synapses_and_dominance_array[1]
    
    synapses_and_dominance_array = create_haploid_genes_for_layer(first_chromosome_.output_layer_synapses,first_chromosome_.output_layer_genetic_dominance_array,second_chromosome_.output_layer_synapses,second_chromosome_.output_layer_genetic_dominance_array)
    
    self.output_layer_synapses = synapses_and_dominance_array[0]
    self.output_layer_genetic_dominance_array = synapses_and_dominance_array[1]
    instance_change(chromosome,true)       
}
    
return haploid_chromosome
