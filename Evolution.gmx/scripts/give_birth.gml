var mom = argument[0]
var parents_position = argument[1]

for(var i = 0; i < ds_list_size(mom.unborn_children);i++){

    var unborn_child = ds_list_find_value(mom.unborn_children,i);
    if(mom.size > mom.baby_bot_size){
        mom.size -= mom.baby_bot_size;
        with(unborn_child){
            mom.baby = self;
            self.size = mom.baby_bot_size;
            if(parents_position){
                self.x = mom.x;
                self.y = mom.y;
            } else {
                self.x = random(room_width);
                self.y = random(room_height);
            }
            self.species = mom.species;
            if(self.generation > global.longest_generation){
                global.longest_generation = self.generation;
            }
            instance_change(bot,true);
        }
        ds_list_add(mom.children,baby);
        if(variable_instance_exists(mom,"father_of_children") && instance_exists(mom.father_of_children)){
            ds_list_add(mom.father_of_children.children,baby);
            global.sexual_births++;
        } else {
            global.asexual_births++;
        }
    } else {
        instance_destroy(unborn_child.first_chromosome,true);
        instance_destroy(unborn_child.second_chromosome,true);
        instance_destroy(unborn_child,true);
    }
}
mom.pregnant = false;

ds_list_clear(mom.unborn_children);
