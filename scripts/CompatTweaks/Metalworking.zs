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

// Steel rebalance
recipes.remove(<betterwithmods:steel_anvil>);
recipes.addShaped("wot_<betterwithmods_steel_anvil>", <betterwithmods:steel_anvil>, [
    [<immersiveengineering:sheetmetal_slab:8>, <immersiveengineering:storage:8>, <immersiveengineering:sheetmetal_slab:8>],
    [null, <immersiveengineering:sheetmetal:8>, null],
    [<immersiveengineering:stone_decoration_slab:7>, <immersiveengineering:sheetmetal:8>, <immersiveengineering:stone_decoration_slab:7>]
]);

// Hoppers
var hopper = <minecraft:hopper>;
var baseHop = <betterwithmods:single_machine:2>;
var advHop = <engineersdecor:factory_hopper>;
var steelPlate = <immersiveengineering:metal:38>;
var mech = <immersiveengineering:material:8>;
var wood = <ore:plankTreatedWood>;
var slab = <ore:slabTreatedWood>;
var crate = <immersiveengineering:wooden_device0>;
var advCrate = <engineersdecor:labeled_crate>;
var label = <thaumcraft:label>;
var advCraft = <engineersdecor:treated_wood_crafting_table>;
var mould = <ore:mouldingTreatedWood>;
var furn = <minecraft:furnace>;
var advFurn = <engineersdecor:small_lab_furnace>;
var highFurn = <engineersdecor:small_electrical_furnace>;
var scaff = <immersiveengineering:metal_decoration1:1>;
var engLight = <immersiveengineering:metal_decoration0:4>;
var belt = <immersiveengineering:conveyor>.withTag({conveyorType: "immersiveengineering:uncontrolled"});
var advDrop = <engineersdecor:factory_dropper>;
var drop = <minecraft:dropper>;
var latch = <betterwithmods:material:34>;

recipes.remove(hopper);
recipes.addShaped("wot_hopper", hopper, [
    [ironPlate, mech, ironPlate],
    [null, ironPlate, null]
]);

recipes.addShaped("wot_alt_hopper", hopper, [
    [ironPlate, mech, ironPlate],
    [null, baseHop, null]
]);

recipes.remove(advHop);
recipes.addShaped("wot_advHop", advHop, [
    [steelPlate, mech, steelPlate],
    [null, steelPlate, null]
]);

recipes.addShaped("wot_alt_advHop", advHop, [
    [null, hopper, null],
    [null, steelPlate, null]
]);

recipes.remove(advCrate);
recipes.addShapeless("wot_advCrate", advCrate, [crate, steelPlate, label]);

recipes.remove(advCraft);
recipes.addShaped("wot_advCraft", advCraft, [
    [slab, slab, slab],
    [mould, steelPlate, mould]
]);

recipes.addShaped("wot_alt_advCraft", advCraft, [
    [null, slab, null],
    [null, <minecraft:crafting_table>, null],
    [null, steelPlate, null]
]);

recipes.remove(advFurn);
recipes.addShaped("wot_advFurn", advFurn, [
    [null, hopper, null],
    [steelPlate, null, steelPlate],
    [steelPlate, furn, steelPlate]
]);

recipes.remove(highFurn);
recipes.addShaped("wot_highFurn", highFurn, [
    [null, engLight, null],
    [belt, advFurn, belt],
    [null, scaff, null]
]);

recipes.remove(advDrop);
recipes.addShaped("wot_advDrop", advDrop, [
    [wood, steelPlate, wood],
    [wood, null, wood],
    [wood, latch, wood]
]);

recipes.addShaped("wot_alt_advDrop", advDrop, [
    [null, steelPlate, null],
    [wood, drop, wood]
]);
print("Metalworking Loaded.");