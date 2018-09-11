var candidate_actions = argument[0]//list<double[] actions> 

var highest_priority =0;
var highest_priority_index = 0;
var priority_column = 0
for(var i = 0; i < ds_list_size(candidate_actions); i++){
    var candidate_action = ds_list_find_value(candidate_actions,i);//double[]
    var priority = candidate_action[priority_column]
    if(priority > highest_priority){
        highest_priority = priority
        highest_priority_index = i;
    }
}

var action;//double[]
if(ds_list_size(candidate_actions) > 0){
    action = ds_list_find_value(candidate_actions,highest_priority_index )
} else {
    //default action
    for(var i = 0; i < global.output_neuron_count; i++){
        action[i] = 0.0;
   }
}
return action;
