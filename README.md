# Portfolio

The simulation can be viewed by running the executable. The project can be opened with game maker studio. 
http://www.yoyogames.com/gamemaker?utm_source=google_adwords&utm_medium=text_ads&utm_campaign=Game_Making_US&utm_term=Make_a_game&gclid=Cj0KCQjwqPDaBRC6ARIsACAf4hDx0xiH0p_NQJwHwe7IJ61gSPQwdQDqPgyx0ld7eGh2JsN9nJvEgSgaAgYLEALw_wcB

The environment spawns with creatures and little specs of food. When the creatures eat the food they grow larger and if they are large enough can eat other creatures. I gave each bot a neural network brain with 3 layers of 7 neurons each and randomly weighted synapses between each layer to control its actions. The creatures can tell the distance to nearby objects, whether they are moving towards or away from the object, whether they can eat the object, whether they can be eaten by the object, what direction the object is from them and the relative size of the object. When a creature dies from not eating it respawns with a new randomly generated brain. When a creature eats another creature, it will spawn a copy of itself with slightly mutated synapses to replace it. This Darwinian environment ensures that the creatures will slowly get better at finding food and not getting eaten. When first running the simulation the bots are very naive and wander around aimlessly. Naturally most of them die of starvation. After a few hours they have gotten pretty good at seeking out food yet they mostly ignore each other and predation only happens incidentally when a larger bot crosses paths with a smaller one. After a few more hours there is deliberate predation while the smaller bots try to outrun the large.
