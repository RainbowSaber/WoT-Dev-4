import crafttweaker.item.IItemStack;

print("Hemp Loading ...");
val hemp = <betterwithmods:material:2>;
val hempFiberIE = <immersiveengineering:material:4>;
val hempFiberBWM = <betterwithmods:material:3>;
val hempClothIE = <immersiveengineering:material:5>;
val hempClothBWM = <betterwithmods:material:4>;
val windSail = <immersiveengineering:material:12>;
val windBlade = <immersiveengineering:material:11>;
val basicMill = <betterwithmods:axle_generator>;
val advMill = <immersiveengineering:wooden_device1:1>;
val vertMill = <betterwithmods:axle_generator:2>;
val waterBlade = <immersiveengineering:material:10>;
val waterMill = <immersiveengineering:wooden_device1>;
val treatSiding = <betterwithmods:siding_wood>.withTag({texture: {Properties: {type: "horizontal"}, Name: "immersiveengineering:treated_wood"}});
val treatStick = <immersiveengineering:material>;
val glue = <betterwithmods:material:12>;
val wdnAxle = <betterwithmods:wooden_axle>;


recipes.replaceAllOccurences(hempFiberBWM, hempFiberIE);
recipes.replaceAllOccurences(hempClothBWM, hempClothIE);

// Fix Mill producing BWM hemp

mods.betterwithmods.Mill.remove([hempFiberBWM]);
mods.betterwithmods.Mill.builder()
	.buildRecipe([hemp], [hempFiberIE * 3])
	.build();

//Windmill Recipe Tweaks
recipes.remove(windBlade);
recipes.addShaped(windBlade, [
	[treatSiding, treatSiding, treatSiding],
	[treatStick, glue, null],
	[treatStick, treatStick, null]
]);

basicMill.displayName = "Basic Windmill";
recipes.remove(basicMill);
recipes.addShaped(basicMill, [
	[null, windSail, null],
	[windSail, wdnAxle, windSail], 
	[null, windSail, null]
]);

advMill.displayName = "Advanced Windmill";
advMill.addTooltip("Sails not included");
recipes.remove(advMill);
recipes.addShaped(advMill, [
	[windBlade, windBlade, windBlade],
	[windBlade, wdnAxle, windBlade], 
	[windBlade, windBlade, windBlade]
]);

recipes.remove(vertMill);
recipes.addShaped(vertMill, [
	[windSail, windSail, windSail],
	[windBlade, windSail, windBlade], 
	[windBlade, wdnAxle, windBlade]
]);

// Water Wheel Tweaks
recipes.remove(waterBlade);
recipes.addShaped(waterBlade, [
	[treatStick, treatSiding, treatStick],
	[null, glue, null],
	[treatSiding, treatSiding, treatSiding]
]);

recipes.remove(waterMill);
recipes.addShaped(waterMill, [
	[waterBlade, waterBlade, waterBlade],
	[waterBlade, wdnAxle, waterBlade],
	[waterBlade, waterBlade, waterBlade]
]);

//Rustic Ropes
recipes.remove(<rustic:rope>);
recipes.addShaped(<rustic:rope>*8, [
	[hempFiberIE, null, null],
	[hempFiberIE, null, null]
]);

//Removes Unnecessary Hemp Duplicates
val shitList = [
	<betterwithmods:material:3>,
	<immersiveengineering:seed>,
	<betterwithmods:material:4>,
	<betterwithmods:material:11>,
	<betterwithmods:axle_generator:1>,
	<betterwithmods:material:10>
] as IItemStack[];

for item in shitList {
	mods.jei.JEI.removeAndHide(item);
}

print("Hemp Loaded.");