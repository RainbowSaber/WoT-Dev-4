import crafttweaker.item.IItemStack;

print("Tools Loading ...");

//MODULE
//Remove Tools

val shittyTools = [
	<prospectus:item_prospector_wood>,
	<minecraft:wooden_sword>,
	<minecraft:wooden_axe>,
	<minecraft:wooden_hoe>,
	<prospectus:item_prospector_stone>,
	<minecraft:stone_sword>,
	<minecraft:stone_hoe>,
	<prospectus:item_prospector_stone>,
	<prospectus:item_prospector_lead>,
	<prospectus:item_prospector_aluminum>,
	<prospectus:item_prospector_silver>,
	<prospectus:item_prospector_copper>
] as IItemStack[];

for item in shittyTools { 
	mods.jei.JEI.removeAndHide(item);
}

//Diamond Tools
// Replacing Sticks with Shafts

val goodBois = [
	<minecraft:diamond_sword>,
	<minecraft:diamond_shovel>,
	<minecraft:diamond_pickaxe>,
	<minecraft:diamond_axe>,
	<minecraft:diamond_hoe>,
	<prospectus:item_prospector_diamond>
]as IItemStack[];

for item in goodBois {
	recipes.remove(item);
}

val toolShaft = <betterwithmods:material:36>;
val diamondIngot = <ore:ingotDiamond>;

recipes.addShaped("betterwithmods_hcdiamond/diamond_sword", <minecraft:diamond_sword>, [
	[diamondIngot], [diamondIngot], [toolShaft]
]);

recipes.addShaped("betterwithmods_hcdiamond/diamond_shovel", <minecraft:diamond_shovel>, [
	[diamondIngot], [toolShaft], [toolShaft]
]);

recipes.addShaped("betterwithmods_hcdiamond/diamond_pickaxe", <minecraft:diamond_pickaxe>, [
	[diamondIngot, diamondIngot, diamondIngot], [null, toolShaft, null], [null, toolShaft, null]
]);

recipes.addShaped("betterwithmods_hcdiamond/diamond_axe_2", <minecraft:diamond_axe>, [
	[diamondIngot, null], [diamondIngot, toolShaft], [null, toolShaft]
]);

recipes.addShaped("betterwithmods_hcdiamond/diamond_hoe", <minecraft:diamond_hoe>, [
	[diamondIngot, diamondIngot], [null, toolShaft], [null, toolShaft]
]);

recipes.addShaped("prospectus_recipe_diamond prospecting pick", <prospectus:item_prospector_diamond>, [
	[null, toolShaft, null], [null, toolShaft, null], [diamondIngot, diamondIngot, diamondIngot]
]);

var axes = [
	<immersiveengineering:axe_steel>,
	<thaumcraft:thaumium_axe>,
	<thaumcraft:void_axe>
] as IItemStack[];

var sticks = [
	<immersiveengineering:material>,
	<minecraft:stick>,
	<minecraft:stick>
] as IItemStack[];

var ingots = [
	<immersiveengineering:metal:8>,
	<thaumcraft:ingot>,
	<thaumcraft:ingot:1>
] as IItemStack[];

for i in 0 to axes.length {
	recipes.remove(axes[i]);
	recipes.addShaped(axes[i], [
		[ingots[i], null],
		[ingots[i], sticks[i]],
		[null, sticks[i]]
	]);
}

print("Tools Loaded.");