var first_baby_bot_size = argument[0]//number
var first_baby_bot_size_genetic_dominance = argument[1]// number
var second_baby_bot_size = argument[2]// number
var second_baby_bot_size_dominance = argument[3]//number

var expressed_baby_size

var dominance_difference = first_baby_bot_size_genetic_dominance - second_baby_bot_size_dominance

dominance_difference = clock_arithmetic(dominance_difference,global.max_genetic_dominance)
    
var first_gene_dominant = dominance_difference > 0
var dominant_gene;
if(first_gene_dominant){
    expressed_baby_size = first_baby_bot_size
} else {
    expressed_baby_size = second_baby_bot_size
}

return expressed_baby_size
