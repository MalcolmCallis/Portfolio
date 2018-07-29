
 interaction_radius = 200
 
 candidate_actions = ds_list_create()

with(interactive_object){
    
    if(self == other || !instance_exists(self) || !instance_exists(other)){
        continue;
        }
    
        //inside a with clause, perspective switches to the interactive object as self
    me = other
    interaction_object = self
        
    myRadius = me.sprite_width / 2.0
    otherRadius = interaction_object.sprite_width/ 2.0
    
    distance = max(0,point_distance(me.x,me.y,interaction_object.x,interaction_object.y) - myRadius - otherRadius)
    
    if (distance < me.interaction_radius){
    
        next_distance = max(0,point_distance(me.x + me.hspeed,me.y + me.vspeed,interaction_object.x + interaction_object.hspeed,interaction_object.y + interaction_object.vspeed) - myRadius - otherRadius)
        
        delta_distance = (next_distance - distance)
        
        can_eat = me.size > interaction_object.size * 1.5
        
        if(can_eat){
        can_eat = 1;}
        else{
        can_eat = 0
        }
        
        can_be_eaten = interaction_object.size > me.size * 1.5
        
        if(can_be_eaten){
        can_be_eaten = 1} else {
        can_be_eaten = 0}
        
        yumminess = can_eat * interaction_object.size / me.size;
        
        direction_to_other = point_direction(me.x,me.y,interaction_object.x,interaction_object.y)
        
        direction_difference = me.direction - direction_to_other
        
        if(direction_difference > 180){
            direction_difference -= 360
        }
        if(direction_difference < -180){
            direction_difference += 360
        }
        direction_difference /= 180;//scale from -1 to 1
        
        
        toward_or_away = delta_distance / (2 * me.base_movement_speed)//scaled from -1 to 1
        
        
        clossness = 1 - distance / me.interaction_radius//scaled from 0 to 1
        
        candidate_action = process_neural_input(clossness,toward_or_away,can_eat,can_be_eaten,direction_difference,yumminess)
        
        ds_list_add(me.candidate_actions,candidate_action)
    }
    
}
return candidate_actions;
