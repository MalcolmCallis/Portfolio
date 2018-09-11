var obj0 = argument[0]
var obj1 = argument[1]


if(instance_exists(obj0) && instance_exists(obj1) && obj0.object_index == bot && obj1.object_index == bot){
    
    var is_parent_or_child = ds_list_find_index(obj0.children,obj1) != -1 || ds_list_find_index(obj1.children,obj0) != -1
    var heterosexual = obj0.female != obj1.female

    var is_same_species = calculate_is_same_species(obj0,obj1);
    
    return heterosexual && !obj0.pregnant && !obj1.pregnant && obj0.size > obj0.baby_bot_size * 2.0 && obj1.size > obj1.baby_bot_size * 2.0 && is_same_species && !is_parent_or_child

} else { 
    return false
}


