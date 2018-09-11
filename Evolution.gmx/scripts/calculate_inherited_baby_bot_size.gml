var first_chromosome_ = argument[0]//chromosome object
var second_chromosome_ = argument[1]//chromosme object        
var baby_bot_size
var baby_bot_size_genetic_dominance
var use_first_gene = random(2.0) < 1.0
if(use_first_gene){
    baby_bot_size = first_chromosome_.baby_bot_size
    baby_bot_size_genetic_dominance = first_chromosome_.baby_bot_size_genetic_dominance
} else {
    baby_bot_size = second_chromosome_.baby_bot_size
    baby_bot_size_genetic_dominance = second_chromosome_.baby_bot_size_genetic_dominance
}


var ret;
ret[0] = baby_bot_size;
ret[1]  = baby_bot_size_genetic_dominance

return ret;
