var first_chromosome_synapses = argument[0]//2d number array
var first_chromosome_genetic_dominance = argument[1]// 1d number array
var second_chromosome_synapses = argument[2]//2d number array
var second_chromosome_genetic_dominance = argument[3]//1d number array

var input_neuron_count = array_height_2d(first_chromosome_synapses)
var output_neuron_count = array_length_2d(first_chromosome_synapses,0)

var expressed_synapses

for(var i = 0; i < output_neuron_count;i++){
    
    var dominance_difference = first_chromosome_genetic_dominance[i] - second_chromosome_genetic_dominance[i]
    //use clock arithmatic to allow non-transitive dominance
    dominance_difference = clock_arithmetic(dominance_difference,global.max_genetic_dominance)
   
    
    var first_gene_dominant = dominance_difference > 0
    var dominant_gene;
    if(first_gene_dominant){
        dominant_gene = first_chromosome_synapses
    } else {
        dominant_gene = second_chromosome_synapses
    }
    
    for(var j = 0; j < input_neuron_count;j++){
        expressed_synapses[j,i] = dominant_gene[j,i]    
    }

}

return expressed_synapses
