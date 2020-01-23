var grav = <gravelores:iron_gravel_ore>;
var nug = <minecraft:iron_nugget>;

furnace.remove(nug* 4, grav);

mods.immersiveengineering.Crusher.removeRecipesForInput(grav);
mods.immersiveengineering.Crusher.addRecipe(<immersiveengineering:metal:18>, grav, 1500, <betterwithmods:gravel_pile>, 1.0);


