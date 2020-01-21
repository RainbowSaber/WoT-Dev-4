mods.immersiveengineering.Crusher.addRecipe(
	<minecraft:magma_cream> * 2,
	<minecraft:magma>,
	2048
);

//BWM Progression locked behind the Shaft
recipes.remove(<immersiveengineering:tool>);
recipes.addShaped("immersiveengineering_tool/hammer", <immersiveengineering:tool>, [
	[null, <ore:ingotIron>, <ore:slimeball>], 
	[null, shaft, <ore:ingotIron>], 
	[shaft, null, null]
]);
