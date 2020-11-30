import mods.betterwithmods.Kiln;
import mods.immersiveengineering.Crusher;

var grav = <gravelores:iron_gravel_ore>;
var nug = <minecraft:iron_nugget>;
var ironOre = <ore:oreIron>;

ironOre.remove(grav);

furnace.remove(nug * 3, grav);

mods.immersiveengineering.Crusher.removeRecipesForInput(grav);
mods.immersiveengineering.Crusher.addRecipe(<immersiveengineering:metal:18>, grav, 1500, <betterwithmods:gravel_pile>, 1.0);

furnace.addRecipe(<minecraft:iron_nugget>, <gravelores:iron_gravel_ore>);

//Quicksilver
var qs_ore = <thaumcraft:ore_cinnabar>;
var qs = <thaumcraft:quicksilver>;
var qs_nug = <thaumcraft:nugget:5>;

mods.betterwithmods.Kiln.remove(qs_ore);
mods.betterwithmods.Kiln.add(qs_ore,[qs_nug*12]);

mods.immersiveengineering.Crusher.addRecipe(qs, qs_ore, 2048, qs_nug*5, 1);

var amber = <thaumcraft:amber>;
var amber_ore = <thaumcraft:ore_amber>;

mods.betterwithmods.Kiln.remove(amber_ore);
mods.betterwithmods.Kiln.add(amber_ore, [amber]);

mods.immersiveengineering.Crusher.removeRecipe(amber);
mods.immersiveengineering.Crusher.addRecipe(amber, amber_ore, 2048);

