randomize()

global.starting_food = 80
global.starting_bots = 80
global.min_bots = 50
global.max_bots = 150
global.hue_shade_count = 256
global.mutation_rate = 0.25
global.mutation_amount = 5.0
global.input_neuron_count = 9
global.output_neuron_count = 3
global.baby_bot_size = 1.0
global.min_reproduction_size = 2.0 * global.baby_bot_size;
global.size_to_die_of_starvation = 0.9 * global.baby_bot_size;
global.interaction_radius = 400.0;//pixels
global.base_movement_speed = 12.0;
global.longest_generation = 1;
global.max_babies_per_litter = 16.0;
global.max_genetic_dominance = 100.0;
global.energy_cost_per_step = 0.0005;
global.food_per_second = 30;
global.species_id = 0;
global.sexual_births = 0;
global.asexual_births = 0;
global.highest_difficulty = 0;

global.minutes = 60 * room_speed;

global.population_by_species = ds_map_create();

global.difficulty = 0;
set_global_constants_for_difficulty(global.difficulty);
