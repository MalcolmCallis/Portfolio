var baby_bot_size = argument[0]
var baby_bot_size_genetic_dominance = argument[1]
    
if(random(1.0) < global.mutation_rate){
    baby_bot_size = max(global.baby_bot_size,baby_bot_size - global.mutation_amount / 10.0 + random(global.mutation_amount / 5.0))
    baby_bot_size_genetic_dominance += random(global.mutation_amount) - global.mutation_amount / 2.0
}

var ret;
ret[0] = baby_bot_size;
ret[1]  = baby_bot_size_genetic_dominance

return ret;
