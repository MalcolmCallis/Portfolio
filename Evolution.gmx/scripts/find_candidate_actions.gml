self.candidate_actions = ds_list_create()

var interaction_radius = global.interaction_radius;
var hue_shade_count = global.hue_shade_count;

with(interactive_object){

        //inside a with clause, perspective switches to the interactive object as self
    var me = other;
    var interaction_object = self;
    
    if(self == other || !instance_exists(self) || !instance_exists(other)){
        continue;
    }
    
    if(ds_list_size(me.candidate_actions) >= 8 && interaction_object.object_index != bot){
        continue;
    }
    


        
    var myRadius = me.sprite_width / 2.0
    var otherRadius = interaction_object.sprite_width/ 2.0
    
    var distance = max(0,point_distance(me.x,me.y,interaction_object.x,interaction_object.y) - myRadius - otherRadius)
    

    if (distance < interaction_radius){
    
        var direction_to_other = point_direction(me.x,me.y,interaction_object.x,interaction_object.y)
    
        var direction_difference = clock_arithmetic(me.direction - direction_to_other,360);
        
        direction_difference /= 180;//scale from -1 to 1
    
        var next_distance = max(0,point_distance(me.x + me.hspeed,me.y + me.vspeed,interaction_object.x + interaction_object.hspeed,interaction_object.y + interaction_object.vspeed) - myRadius - otherRadius)
        
        var delta_distance = (next_distance - distance)
        
        var can_eat = calculate_can_eat(me,interaction_object)
        
        var can_be_eaten = calculate_can_eat(interaction_object,me)
        
        var can_mate = calculate_can_mate(me,interaction_object)
        
        var size_ratio = interaction_object.size / me.size;
        
        var my_size = me.size;
        
        
        var max_delta_distance = me.speed + interaction_object.speed;
        
        var toward_or_away = delta_distance / max_delta_distance;//scaled from -1(maximun towards) to 1(maximum away)
        
        var clossness = 1.0 - (distance / interaction_radius);//scaled from 0(far) to 1(close)
        
        var neural_input;
        neural_input[0] = clossness
        neural_input[1] = toward_or_away;
        neural_input[2] = can_eat;
        neural_input[3] = can_be_eaten;
        neural_input[4] = direction_difference;
        neural_input[5] = size_ratio;
        neural_input[6] = can_mate;
        neural_input[7] = me.female;
        neural_input[8] = my_size;
        
        
        
        var candidate_action = process_neural_input(me,neural_input)
        
        ds_list_add(me.candidate_actions,candidate_action)
    }
    
}
return candidate_actions;
