obj0 = argument[0]
obj1 = argument[1]

if(instance_exists(obj0) && instance_exists(obj1)){
    var can_eat = object_is_ancestor(obj0.object_index,body_parent)
    var is_same_species = false;
    var is_parent_or_child = false;
    
    if(obj0.object_index == bot && obj1.object_index == bot){
        var bot0 = obj0;
        var bot1 = obj1;
        var is_same_species = calculate_is_same_species(bot0,bot1);
        
        var is_parent_or_child = calculate_is_parent_or_child(bot0,bot1)
    }
    
    return obj0.size > obj1.size * global.min_size_ratio_to_eat && !is_same_species && !is_parent_or_child;
}
else{
    return false;
}
