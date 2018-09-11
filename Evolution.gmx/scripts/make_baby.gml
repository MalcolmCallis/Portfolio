var first_chromosome = argument[0]
var second_chromosome = argument[1]
var hue = argument[1];
var generation = argument[2];

var baby = instance_create(x,y,parameters);

with(baby){
    
    self.first_chromosome = first_chromosome
    self.second_chromosome = second_chromosome
    
    self.hue = round(hue - 10 + random(20)) % global.hue_shade_count
    self.generation = generation
}


return baby
