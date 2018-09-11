var chrom = argument[0]//chromosome object

var new_chrom;

with(instance_create(0,0,parameters)){
    new_chrom = self
     
    self.baby_bot_size = chrom.baby_bot_size;
    self.baby_bot_size_genetic_dominance = chrom.baby_bot_size_genetic_dominance

    self.first_layer_synapses = copy_array(chrom.first_layer_synapses)
    self.first_layer_genetic_dominance_array = copy_array(chrom.first_layer_genetic_dominance_array)

    self.second_layer_synapses = copy_array(chrom.second_layer_synapses)
    self.second_layer_genetic_dominance_array = copy_array(chrom.second_layer_genetic_dominance_array)
    
    self.output_layer_synapses = copy_array(chrom.output_layer_synapses)
    self.output_layer_genetic_dominance_array = copy_array(chrom.output_layer_genetic_dominance_array)
    instance_change(chromosome,true)       
}

return new_chrom
