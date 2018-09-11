var difficulty = argument[0];

switch(difficulty){

    
    default:
    case 0:
        global.max_babies_created_asexually = 8.0;
        global.max_food = 10 * global.max_bots;
        global.min_size_ratio_to_eat = 64.0;
        break;
    case 1:
        global.max_food = 7 * global.max_bots;
        global.min_size_ratio_to_eat = 32.0;
    case 2:
        global.max_food = 5 * global.max_bots;
        global.min_size_ratio_to_eat = 16.0;
        break;
    case 3:
        global.max_food = 4 * global.max_bots
        global.min_size_ratio_to_eat = 8.0;
        global.max_babies_created_asexually = 6;
        break;
    case 4:
        global.max_food = 3 * global.max_bots
        global.min_size_ratio_to_eat = 6.0
        global.max_babies_created_asexually = 4;
        break;
    case 5:
        global.min_size_ratio_to_eat = 4.0
    
        global.max_babies_created_asexually = 3;
        break;
    case 6:
        global.min_size_ratio_to_eat = 3.0
    
        global.max_babies_created_asexually =2;
        break;
    case 7:
        global.min_size_ratio_to_eat = 2.0;
    
        global.max_babies_created_asexually = 1;
        break;
    case 8:    
        global.max_babies_created_asexually = 0;
        break;
    case 9:    
        global.min_size_ratio_to_eat = 1.5
    break;
    



}


