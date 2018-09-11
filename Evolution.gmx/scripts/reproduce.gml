var mom = argument[0];
var dad = argument[1];  
var asexually = argument[2];
var number_of_babies_to_have = argument[3]

if(number_of_babies_to_have > 0){
    mom.pregnant = true
    mom.alarm[2] = room_speed * 10
    var babys_generation = max(mom.generation,dad.generation) + 1;
        
    var hue_difference = calculate_hue_difference(hue, dad.hue);
    
    var babys_hue = hue - (hue_difference / 2.0);
    
    
    for(var babies = 0; babies < number_of_babies_to_have; babies++){
    
        var chromosomes;
        
        if(asexually){
            chromosomes = copy_and_mutate_moms_chromosomes(mom);
        } else {
            mom.father_of_children = dad; 
            chromosomes = calculate_haploid_chromosomes(mom,dad);
        }
        
        var first_chromosome = chromosomes[0];
        
        var second_chromosome = chromosomes[1];        
            
        var babys_hue = round(babys_hue - 10 + random(20)) % global.hue_shade_count
        
        var baby = make_baby(first_chromosome,second_chromosome,babys_hue,babys_generation);
    
        
        
        
        ds_list_add(mom.unborn_children,baby)
        
    }

}    
