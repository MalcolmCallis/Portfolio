var bot0 = argument[0]
var bot1= argument[1]

return ds_list_find_index(bot0.children,bot1) != -1 || ds_list_find_index(bot1.children,bot0) != -1
