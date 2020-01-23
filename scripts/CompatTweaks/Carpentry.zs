import crafttweaker.item.IItemStack;

print("Carpentry Loading ...");

//Wooden Doors

val planks = [
	<minecraft:planks:1>,
	<minecraft:planks:2>,
	<minecraft:planks>,
	<minecraft:planks:4>,
	<minecraft:planks:3>,
	<minecraft:planks:5>,
	<immersiveengineering:treated_wood>,
	<rustic:planks:1>,
	<rustic:planks>,
	] as IItemStack[];
	
val sidings = [
	<betterwithmods:siding_wood>.withTag({texture: {Properties: {variant: "spruce"}, Name: "minecraft:planks"}}),
	<betterwithmods:siding_wood>.withTag({texture: {Properties: {variant: "birch"}, Name: "minecraft:planks"}}),
	<betterwithmods:siding_wood>.withTag({texture: {Properties: {variant: "oak"}, Name: "minecraft:planks"}}),
	<betterwithmods:siding_wood>.withTag({texture: {Properties: {variant: "acacia"}, Name: "minecraft:planks"}}),
	<betterwithmods:siding_wood>.withTag({texture: {Properties: {variant: "jungle"}, Name: "minecraft:planks"}}),
	<betterwithmods:siding_wood>.withTag({texture: {Properties: {variant: "dark_oak"}, Name: "minecraft:planks"}}),
	<betterwithmods:siding_wood>.withTag({texture: {Properties: {type: "horizontal"}, Name: "immersiveengineering:treated_wood"}}),
	<betterwithmods:siding_wood>.withTag({texture: {Properties: {variant: "ironwood"}, Name: "rustic:planks"}}),
	<betterwithmods:siding_wood>.withTag({texture: {Properties: {variant: "olive"}, Name: "rustic:planks"}}),
	<betterwithmods:siding_wood>.withTag({texture: {Name: "thaumcraft:plank_silverwood"}}),
	<betterwithmods:siding_wood>.withTag({texture: {Name: "thaumcraft:plank_greatwood"}})
] as IItemStack[];

val moulding = [
    <betterwithmods:moulding_wood>.withTag({texture: {Properties: {variant: "spruce"}, Name: "minecraft:planks"}}),
    <betterwithmods:moulding_wood>.withTag({texture: {Properties: {variant: "birch"}, Name: "minecraft:planks"}}),
    <betterwithmods:moulding_wood>.withTag({texture: {Properties: {variant: "oak"}, Name: "minecraft:planks"}}),
    <betterwithmods:moulding_wood>.withTag({texture: {Properties: {variant: "acacia"}, Name: "minecraft:planks"}}),
    <betterwithmods:moulding_wood>.withTag({texture: {Properties: {variant: "jungle"}, Name: "minecraft:planks"}}),
    <betterwithmods:moulding_wood>.withTag({texture: {Properties: {variant: "dark_oak"}, Name: "minecraft:planks"}}),
    <betterwithmods:moulding_wood>.withTag({texture: {Properties: {type: "horizontal"}, Name: "immersiveengineering:treated_wood"}}),
    <betterwithmods:moulding_wood>.withTag({texture: {Properties: {variant: "ironwood"}, Name: "rustic:planks"}}),
    <betterwithmods:moulding_wood>.withTag({texture: {Properties: {variant: "olive"}, Name: "rustic:planks"}}),
	<betterwithmods:moulding_wood>.withTag({texture: {Name: "thaumcraft:plank_silverwood"}}),
	<betterwithmods:moulding_wood>.withTag({texture: {Name: "thaumcraft:plank_greatwood"}})
] as IItemStack[];

var corners = [
	<betterwithmods:corner_wood>.withTag({texture: {Properties: {variant: "spruce"}, Name: "minecraft:planks"}}),
	<betterwithmods:corner_wood>.withTag({texture: {Properties: {variant: "birch"}, Name: "minecraft:planks"}}),
	<betterwithmods:corner_wood>.withTag({texture: {Properties: {variant: "oak"}, Name: "minecraft:planks"}}),
	<betterwithmods:corner_wood>.withTag({texture: {Properties: {variant: "acacia"}, Name: "minecraft:planks"}}),
	<betterwithmods:corner_wood>.withTag({texture: {Properties: {variant: "jungle"}, Name: "minecraft:planks"}}),
	<betterwithmods:corner_wood>.withTag({texture: {Properties: {variant: "dark_oak"}, Name: "minecraft:planks"}})
] as IItemStack[];

val doors = [
	<minecraft:spruce_door>,
	<minecraft:birch_door>,
	<minecraft:wooden_door>,
	<minecraft:acacia_door>,
	<minecraft:jungle_door>,
	<minecraft:dark_oak_door>,
	<engineersdoors:door_treated>,
	<rustic:ironwood_door>,
	<rustic:olive_door>
] as IItemStack[];

val trapdoors = [

	<minecraft:trapdoor>,

	<engineersdoors:trapdoor_treated>
] as IItemStack[];

for i in 0 to doors.length {
	//Door
	recipes.remove(doors[i]);
    /*
	recipes.addShaped(doors[i], [
		[planks[i], planks[i], null],
		[planks[i], planks[i], null],
		[planks[i], planks[i], null]
	]);*/
	recipes.addShaped(doors[i], [
		[sidings[i], sidings[i]],
		[sidings[i], sidings[i]],
		[sidings[i], sidings[i]]
	]);
}
for j in 0 to trapdoors.length {
	//Trapdoor 
	recipes.remove(trapdoors[j]);
	recipes.addShaped(trapdoors[j], [
		[null, null, null],
		[planks[j], planks[j], null],
		[planks[j], planks[j], null]
	]);
	recipes.addShaped(trapdoors[j]*2, [
		[null, null, null],
		[sidings[j], sidings[j], null],
		[sidings[j], sidings[j], null]
	]);
}

val fences = [
    <immersiveengineering:wooden_decoration>,
    <rustic:fence_ironwood>,
    <rustic:fence_olive>
] as IItemStack[];

var i = 6;
for fence in fences {
    recipes.remove(fence);
    recipes.addShaped(fence * 2, [
        [moulding[i], moulding[i], moulding[i]]
    ]);
    i = i+1;
}


val gates = [
    <engineersdoors:fencegate_treated>,
    <rustic:fence_gate_ironwood>,
    <rustic:fence_gate_olive>
] as IItemStack[];

i = 6;
for gate in gates {
    recipes.remove(gate);
    recipes.addShaped(gate * 2, [
        [moulding[i], sidings[i], moulding[i]]
    ]);
    i = i+1;

}

var stake = <rustic:crop_stake>;
var stick = <ore:stickWood>;
recipes.remove(stake);
recipes.addShaped(stake * 2, [
	[stick],
	[stick],
	[stick]
]);

//Bookshelves
var shelves as IItemStack[] = [
	<quark:custom_bookshelf>,
	<quark:custom_bookshelf:1>,	
	<minecraft:bookshelf>,
	<quark:custom_bookshelf:3>,
	<quark:custom_bookshelf:2>,
	<quark:custom_bookshelf:4>
];

//PressurePlates
var plates as IItemStack[] = [
	<quark:spruce_pressure_plate>,
	<quark:birch_pressure_plate>,
	<minecraft:wooden_pressure_plate>,
	<quark:acacia_pressure_plate>,
	<quark:jungle_pressure_plate>,
	<quark:dark_oak_pressure_plate>
];

//Buttons
var buttons as IItemStack[] = [
	<quark:spruce_button>,
	<quark:birch_button>,
	<minecraft:wooden_button>,	
	<quark:acacia_button>,
	<quark:jungle_button>,
	<quark:dark_oak_button>
];

var book = <ore:book>;
var rDust = <minecraft:redstone>;

for i in 0 to shelves.length {
	var plank = planks[i];
	var side = sidings[i];
	var corn = corners[i];


	recipes.remove(shelves[i]);
	recipes.addShaped(shelves[i], [
		[side, side, side],
		[book, book, book],
		[side, side, side]
	]);

	recipes.remove(buttons[i]);
	recipes.addShaped(buttons[i], [
		[corn],
		[rDust]		
	]);

	recipes.remove(plates[i]);
	recipes.addShaped(plates[i], [
		[side],
		[rDust]	
	]);
}

var obsPlate = <quark:obsidian_pressure_plate>;
var obs = <minecraft:obsidian>;

recipes.remove(obsPlate);
recipes.addShaped("wot_carp_obsPlate", obsPlate, [
	[obs],
	[rDust]
]);

//Chairs

var chairs as IItemStack[] = [
	<rustic:chair_spruce>,
	<rustic:chair_birch>,
	<rustic:chair_oak>,
	<rustic:chair_acacia>,
	<rustic:chair_jungle>,
	<rustic:chair_big_oak>,
	<rustic:chair_ironwood>,
	<rustic:chair_olive>,
	<rusticthaumaturgy:chair_silverwood>,
	<rusticthaumaturgy:chair_greatwood>
];

for i in 0 to 5 {
	var chair = chairs[i];
	var side = sidings[i];
	var mold = moulding[i];
	recipes.remove(chair);
	recipes.addShaped(chair * 4, [
		[mold, null, null],
		[mold, side, side],
		[mold, null, mold]
	]);
}

for i in 6 to chairs.length {
	var chair = chairs[i];
	var side = sidings[i+1];
	var mold = moulding[i+1];
	recipes.remove(chair);
	recipes.addShaped(chair * 4, [
		[mold, null, null],
		[mold, side, side],
		[mold, null, mold]
	]);
}

print("Carpentry Loaded.");