var difficulty = argument[0];

if(difficulty > global.highest_difficulty){
    global.highest_difficulty = difficulty;
}


switch(difficulty){

    
    default:
    break;
    case 0:
        global.max_babies_created_asexually = 4.0;
        global.max_food = 3 * global.max_bots;
        global.food_per_second = 35;
        global.min_size_ratio_to_eat = 1.5;
        break;
}


