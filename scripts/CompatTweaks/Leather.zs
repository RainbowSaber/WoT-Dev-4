import crafttweaker.item.IItemStack;
import mods.thaumcraft.ArcaneWorkbench;

print("Leatherworking Loading ...");

val leather = <minecraft:leather>;
val cutLeather = <betterwithmods:material:31>;
val treatedLeather = <betterwithmods:material:6>;
val cutTreatedLeather = <betterwithmods:material:32>;
val treatedStrap = <betterwithmods:material:8>;
val treatedBelt = <betterwithmods:material:9>;

//MODULE
//IE Tools

recipes.remove(<immersiveengineering:powerpack>);
recipes.addShaped("immersiveengineering_armor/powerpack", <immersiveengineering:powerpack>, [
	[treatedStrap, <immersiveengineering:metal_device0>, treatedStrap], 
	[<immersiveengineering:wirecoil>, <immersiveengineering:connector>, <immersiveengineering:wirecoil>],
	[null, treatedBelt, null]
]);

recipes.remove(<immersiveengineering:toolupgrade:12>);
recipes.addShaped("immersiveengineering_toolupgrades/shield_magnet", <immersiveengineering:toolupgrade:12>, [
	[null, null, cutTreatedLeather], 
	[treatedStrap, <immersiveengineering:metal_decoration0>, null], 
	[cutTreatedLeather, <ore:ingotIron>, treatedStrap]
]);

//TC Belts

recipes.remove(<thaumcraft:baubles:6>);
recipes.addShaped("thaumcraft_babulegirdlefancy", <thaumcraft:baubles:6>, [
	[null, treatedBelt, null], 
	[null, <ore:gemDiamond>, null], 
	[null, <ore:ingotGold>, null]]);

recipes.remove(<thaumcraft:baubles:2>);
recipes.addShaped("thaumcraft_babulegirdle", <thaumcraft:baubles:2>, [
	[null, treatedBelt, null], 
	[null, <ore:ingotBrass>, null]]);
	
// Wearable Backpack

val goldIngot = <immersiveengineering:metal:1>;

recipes.addShaped(<quark:backpack>, [
	[null, goldIngot, null],
	[treatedBelt, <betterwithmods:leather_tanned_chest:*>, treatedBelt], 
	[goldIngot, <rustic:barrel>, goldIngot]
]);

var rcGoggle = <railcraft:armor_goggles>;
var tcGoggle = <thaumcraft:goggles>;
var pane = <ore:paneGlass>;
var paneMagic = <thaumcraft:thaumometer>;


recipes.remove(rcGoggle);
mods.thaumcraft.ArcaneWorkbench.removeRecipe(<thaumcraft:goggles>);

recipes.addShaped("wot_leather_rc", rcGoggle, [
	[pane, <ore:ingotSteel>, pane],
	[null, treatedBelt, null]
]);

recipes.addShaped("wot_leather_tc", tcGoggle, [
	[paneMagic, <ore:ingotBrass>, paneMagic],
	[null, treatedBelt, null]
]);

mods.thaumcraft.ArcaneWorkbench.registerShapedRecipe("tc_goggle", "", 50, [], tcGoggle, [
    [paneMagic, <ore:ingotBrass>, paneMagic],
    [null, treatedBelt, null]
]);
	
print("Leatherworking Loaded.");
