var mom = argument[0];

var first_chromosome = copy_chromosome(mom.first_chromosome)
first_chromosome = mutate_chromosome(first_chromosome)
var second_chromosome = copy_chromosome(mom.second_chromosome)
second_chromosome = mutate_chromosome(second_chromosome);

var return_array;

return_array[0] = first_chromosome;
return_array[1] = second_chromosome;

return return_array;
