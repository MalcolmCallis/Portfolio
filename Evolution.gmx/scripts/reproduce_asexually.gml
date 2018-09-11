var number_of_babies_to_have = argument[0]
var parents_position = argument[1]//boolean

if(global.max_babies_created_asexually > 0){

 reproduce(self,self,true,number_of_babies_to_have)
    give_birth(self,parents_position)
}
