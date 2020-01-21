import crafttweaker.item.IItemStack;

print("Explosives Loading ...");

val sulfur = <ore:dustSulfur>;
val niter = <ore:dustSaltpeter>;
val coal = <ore:dustCoal>;
val gunpowder = <minecraft:gunpowder>;
val woodDust = <ore:dustWood>;
val blastingOil = <betterwithmods:material:29>;
val fireCharge = <minecraft:fire_charge>;
val blazeDust = <minecraft:blaze_powder>;
val paper = <ore:paper>;
val rope = <betterwithmods:rope>;
val fuse = <betterwithmods:material:28>;
val dynamite = <betterwithmods:dynamite>;
val tnt = <minecraft:tnt>;

//Gunpowder
recipes.remove(gunpowder);
mods.betterwithmods.Cauldron.remove([gunpowder]);
mods.betterwithmods.Cauldron.builder()
	.buildRecipe([niter, sulfur, coal], [gunpowder*3])
	.setHeat(1)
	.setPriority(1)
	.build();
	
//Fire Charge
recipes.remove(fireCharge);
mods.betterwithmods.Cauldron.builder()
	.buildRecipe([blazeDust, gunpowder, coal ], [fireCharge*4])
	.setHeat(1)
	.setPriority(1)
	.build();

//Dynamite recipe
recipes.remove(dynamite);
recipes.addShaped(dynamite * 3, [
	[paper, paper, paper],
	[fuse, blastingOil, woodDust],
	[paper, paper, paper]
]);

//TNT recipe
recipes.remove(tnt);
recipes.addShaped(tnt, [
	[null, dynamite, null],
	[paper, dynamite, rope],
	[null, dynamite, null]
]);

recipes.remove(<immersiveengineering:wooden_device0:4>);
recipes.addShaped("wot_ex:gunpowederbarrel", <immersiveengineering:wooden_device0:4>, [
    [null, rope, null],
    [dynamite, dynamite, dynamite],
    [null, <immersiveengineering:wooden_device0:1>, null]
]);

recipes.remove(<quark:arrow_explosive>);
recipes.addShapeless(<quark:arrow_explosive>, [
    <minecraft:arrow>, dynamite
]);

print("Explosives Loaded.");