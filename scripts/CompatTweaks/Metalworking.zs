print("MEtalworking Loading...");

val ironIngot = <minecraft:iron_ingot>;
val ironRod = <immersiveengineering:material:1>;
val ironPlate = <immersiveengineering:metal:39>;
val plank = <ore:plankWood>;
val siding = <betterwithmods:siding_wood>;

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
	[siding, siding, siding],
	[ironPlate, siding, ironPlate],
	[null, siding, null]
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

print("Metalworking Loaded.");