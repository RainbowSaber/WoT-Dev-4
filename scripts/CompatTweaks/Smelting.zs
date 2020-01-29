var grav = <gravelores:iron_gravel_ore>;
var nug = <minecraft:iron_nugget>;
var ironOre = <ore:oreIron>;

ironOre.remove(grav);

furnace.remove(nug * 3, grav);

mods.immersiveengineering.Crusher.removeRecipesForInput(grav);
mods.immersiveengineering.Crusher.addRecipe(<immersiveengineering:metal:18>, grav, 1500, <betterwithmods:gravel_pile>, 1.0);

furnace.addRecipe(<minecraft:iron_nugget>, <gravelores:iron_gravel_ore>);