mods.immersiveengineering.Crusher.addRecipe(
	<minecraft:magma_cream> * 2,
	<minecraft:magma>,
	2048
);

var shaft = <betterwithmods:material:36>;
//BWM Progression locked behind the Shaft
recipes.remove(<immersiveengineering:tool>);
recipes.addShaped("immersiveengineering_tool/hammer", <immersiveengineering:tool>, [
	[null, <ore:ingotIron>, <ore:slimeball>], 
	[null, shaft, <ore:ingotIron>], 
	[shaft, null, null]
]);

//Kinetic Dynamo
recipes.remove(<immersiveengineering:metal_device1:2>);
recipes.addShaped("wot_ie_dynamo", <immersiveengineering:metal_device1:2>, [
	[null, <betterwithmods:wooden_axle>, null],
	[<minecraft:redstone>, <immersiveengineering:metal_decoration0>, <minecraft:redstone>],
	[<minecraft:iron_ingot>, <minecraft:iron_ingot>, <minecraft:iron_ingot>]
]);