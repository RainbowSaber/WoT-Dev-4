import crafttweaker.item.IItemStack;

print("Seeds Loading ...");

//val seedList = vanilla.seeds.seeds;
val seedList = vanilla.seeds.seeds;

// Cleans the Current Seed List

for item in seedList {
	vanilla.seeds.removeSeed(item.stack);
}

val totalWeight = 1000.0;

// 8% of drops
val saplings = [
	<dynamictrees:appleseed>,
	<dynamictrees:oakseed>,
	<dynamictrees:spruceseed>,
	<dynamictrees:birchseed>,
	<dynamictrees:jungleseed>,
	<dynamictrees:acaciaseed>,
	<dynamictrees:darkoakseed>,
	<dynamictrees:cactusseed>,
	<dynamictreestc:greatwoodseed>,
	<dynamictreestc:silverwoodseed>,
	<rustic:ironwoodseed>,
	<rustic:oliveseed>,
	<rustic:apple_seeds>
] as IItemStack[];
val saplingWeight = 1*((totalWeight*0.08)/saplings.length);
for item in saplings {
	vanilla.seeds.addSeed(item % saplingWeight);
}

// 25% of drops
val commonSeeds = [
	<minecraft:wheat_seeds>,
	<betterwithmods:hemp>
] as IItemStack[];
val commonWeight= 1*((totalWeight*0.25)/commonSeeds.length);
for item in commonSeeds {
	vanilla.seeds.addSeed(item % commonWeight);
}

// 10% of drops
val seeds = [
	<rustic:tomato_seeds>,
	<minecraft:carrot>,
	<minecraft:potato>
] as IItemStack[];
val seedWeight= 1*((totalWeight*0.10)/seeds.length);
for item in seeds {
	vanilla.seeds.addSeed(item % seedWeight);
}

// 7% of drops
val rareSeed = [
	<minecraft:pumpkin_seeds>,
	<minecraft:melon_seeds>,
	<minecraft:beetroot_seeds>,
	<rustic:chili_pepper_seeds>
] as IItemStack[];
val rareWeight = 1*((totalWeight*0.07)/rareSeed.length);
for item in rareSeed {
	vanilla.seeds.addSeed(item % rareWeight);
}

// 50% of drops
val soil = [
	<betterwithmods:dirt_pile>,
	<minecraft:flint>,
	<betterwithmods:sand_pile>,
	<betterwithmods:gravel_pile>
] as IItemStack[];
val soilWeight = 1*((totalWeight*0.5)/soil.length);
for item in soil {
	vanilla.seeds.addSeed(item % soilWeight);
}

// Returns a list of all seeds including percentiles
val seedModded = vanilla.seeds.seeds;

for item in seedModded {
    print("Item: " ~ item.stack.displayName ~ " || Chance: " ~ item.percent ~ "%");
}

// Ingame Tips/Docu
<minecraft:iron_hoe>.addTooltip("Use on untilled dirt to collect seeds");
<rustic:tomato_seeds>.addTooltip("Has to be planted on a stake");
<rustic:chili_pepper_seeds>.addTooltip("Has to be planted on a stake");

print("Seeds Loaded.");
