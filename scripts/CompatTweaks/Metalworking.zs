import crafttweaker.item.IItemStack;

print("MEtalworking Loading...");

val ironIngot = <minecraft:iron_ingot>;
val ironRod = <immersiveengineering:material:1>;
val ironPlate = <immersiveengineering:metal:39>;
val plank = <ore:plankWood>;
val sidingWood = <ore:sidingWood>;

val shield = <minecraft:shield>;
val ironBar = <minecraft:iron_bars>;
val chain = <rustic:chain>;
val lattice = <rustic:iron_lattice>;

// Shield nerf
recipes.remove(shield);
recipes.addShaped(shield, [
	[ironIngot, plank, ironIngot], 
	[ironIngot, plank, ironIngot], 
	[null, ironIngot, null]
]);
recipes.addShaped(shield, [
	[sidingWood, sidingWood, sidingWood],
	[ironPlate, sidingWood, ironPlate],
	[null, sidingWood, null]
]);



// Iron Bars
recipes.remove(ironBar);
recipes.addShaped(ironBar*16, [
	[ironRod, ironRod, ironRod],
	[ironRod, ironRod, ironRod]
]);

// Iron Lattice
recipes.remove(lattice);
recipes.addShaped(lattice*16, [
	[null, ironRod, null],
	[ironRod, ironIngot, ironRod],
	[null, ironRod, null]
]);

// Thaumcraft Plates

var plates as IItemStack[] = [
    <thaumcraft:plate>,
    <thaumcraft:plate:1>,
    <thaumcraft:plate:2>,
    <thaumcraft:plate:3>
];

var ingots as IItemStack[] = [
    <thaumcraft:ingot:2>,
    ironIngot,
    <thaumcraft:ingot>,
    <thaumcraft:ingot:1>
];

for i in 0 to plates.length {
    var ingot = ingots[i];
    var plate = plates[i];

    recipes.remove(plate * 3);
}

print("Metalworking Loaded.");