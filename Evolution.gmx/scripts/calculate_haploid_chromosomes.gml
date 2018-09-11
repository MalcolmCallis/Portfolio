var mom = argument[0];
var dad = argument[1];  

var first_chromosome = create_haploid_chromosome(mom.first_chromosome,mom.second_chromosome)
first_chromosome = mutate_chromosome(first_chromosome)
var second_chromosome = create_haploid_chromosome(dad.first_chromosome,dad.second_chromosome)
second_chromosome = mutate_chromosome(second_chromosome);

var return_array;

return_array[0] = first_chromosome;
return_array[1] = second_chromosome;

return return_array;
