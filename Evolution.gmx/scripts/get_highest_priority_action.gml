candidate_actions = argument[0]//list of actions [priority, move_direction]

highest_priority =0;
highest_priority_index = 0;
priority_column = 0
for(i = 0; i < ds_list_size(candidate_actions); i++){
    candidate_action = ds_list_find_value(candidate_actions,i);
    priority = candidate_action[priority_column]
    if(priority > highest_priority){
        highest_priority = priority
        highest_priority_index = i;
    }
}

if(ds_list_size(candidate_actions) > 0){
    action = ds_list_find_value(candidate_actions,highest_priority_index )

} else {
    //default action
    action = undefined
    action[0] = 0;
    action[1] = 0;
}
return action;
