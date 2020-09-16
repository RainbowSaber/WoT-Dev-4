import crafttweaker.item.IItemStack;

print("Carpentry Loading ...");

// Treated OreDict
val treatedCorner = <ore:cornerTreatedWood>;
val treatedMoulding = <ore:mouldingTreatedWood>;
val treatedSlab = <ore:slabTreatedWood>;

treatedCorner.addItems([
    <betterwithmods:corner_wood>.withTag({texture: {Properties: {type: "horizontal"}, Name: "immersiveengineering:treated_wood"}}),
    <betterwithmods:corner_wood>.withTag({texture: {Properties: {type: "vertical"}, Name: "immersiveengineering:treated_wood"}}),
    <betterwithmods:corner_wood>.withTag({texture: {Properties: {type: "packaged"}, Name: "immersiveengineering:treated_wood"}})
    ]);

treatedMoulding.addItems([
    <betterwithmods:moulding_wood>.withTag({texture: {Properties: {type: "horizontal"}, Name: "immersiveengineering:treated_wood"}}),
    <betterwithmods:moulding_wood>.withTag({texture: {Properties: {type: "vertical"}, Name: "immersiveengineering:treated_wood"}}),
    <betterwithmods:moulding_wood>.withTag({texture: {Properties: {type: "packaged"}, Name: "immersiveengineering:treated_wood"}})
    ]);

treatedSlab.addItems([
    <betterwithmods:siding_wood>.withTag({texture: {Properties: {type: "vertical"}, Name: "immersiveengineering:treated_wood"}}),
    <betterwithmods:siding_wood>.withTag({texture: {Properties: {type: "packaged"}, Name: "immersiveengineering:treated_wood"}}),
    <betterwithmods:siding_wood>.withTag({texture: {Properties: {type: "horizontal"}, Name: "immersiveengineering:treated_wood"}})
  ]);

// Siding OreDict
val slabWood = <ore:slabWood>;
val sidingWood = <ore:sidingWood>;

slabWood.addItems([
    <betterwithmods:siding_wood>.withTag({texture: {Properties: {variant: "vertical_jungle_planks"}, Name: "quark:vertical_planks"}}),
    <betterwithmods:siding_wood>.withTag({texture: {Properties: {variant: "vertical_acacia_planks"}, Name: "quark:vertical_planks"}}),
    <betterwithmods:siding_wood>.withTag({texture: {Properties: {variant: "vertical_dark_oak_planks"}, Name: "quark:vertical_planks"}}),
    <betterwithmods:siding_wood>.withTag({texture: {Properties: {variant: "spruce"}, Name: "minecraft:planks"}}),
    <betterwithmods:siding_wood>.withTag({texture: {Properties: {variant: "oak"}, Name: "minecraft:planks"}}),
    <betterwithmods:siding_wood>.withTag({texture: {Properties: {variant: "birch"}, Name: "minecraft:planks"}}),
    <betterwithmods:siding_wood>.withTag({texture: {Properties: {variant: "jungle"}, Name: "minecraft:planks"}}),
    <betterwithmods:siding_wood>.withTag({texture: {Properties: {variant: "acacia"}, Name: "minecraft:planks"}}),
    <betterwithmods:siding_wood>.withTag({texture: {Properties: {variant: "dark_oak"}, Name: "minecraft:planks"}}),
    <betterwithmods:siding_wood>.withTag({texture: {Properties: {variant: "olive"}, Name: "rustic:planks"}}),
    <betterwithmods:siding_wood>.withTag({texture: {Properties: {variant: "vertical_birch_planks"}, Name: "quark:vertical_planks"}}),
    <betterwithmods:siding_wood>.withTag({texture: {Properties: {variant: "ironwood"}, Name: "rustic:planks"}}),
    <betterwithmods:siding_wood>.withTag({texture: {Name: "thaumcraft:plank_greatwood"}}),
    <betterwithmods:siding_wood>.withTag({texture: {Name: "thaumcraft:plank_silverwood"}}),
    <betterwithmods:siding_wood>.withTag({texture: {Properties: {type: "horizontal"}, Name: "immersiveengineering:treated_wood"}}),
    <betterwithmods:siding_wood>.withTag({texture: {Properties: {type: "vertical"}, Name: "immersiveengineering:treated_wood"}}),
    <betterwithmods:siding_wood>.withTag({texture: {Properties: {type: "packaged"}, Name: "immersiveengineering:treated_wood"}}),
    <betterwithmods:siding_wood>.withTag({texture: {Properties: {variant: "vertical_oak_planks"}, Name: "quark:vertical_planks"}}),
    <betterwithmods:siding_wood>.withTag({texture: {Properties: {variant: "vertical_spruce_planks"}, Name: "quark:vertical_planks"}})
]);

sidingWood.addItems([
    <betterwithmods:siding_wood>.withTag({texture: {Properties: {variant: "vertical_jungle_planks"}, Name: "quark:vertical_planks"}}),
    <betterwithmods:siding_wood>.withTag({texture: {Properties: {variant: "vertical_acacia_planks"}, Name: "quark:vertical_planks"}}),
    <betterwithmods:siding_wood>.withTag({texture: {Properties: {variant: "vertical_dark_oak_planks"}, Name: "quark:vertical_planks"}}),
    <betterwithmods:siding_wood>.withTag({texture: {Properties: {variant: "spruce"}, Name: "minecraft:planks"}}),
    <betterwithmods:siding_wood>.withTag({texture: {Properties: {variant: "oak"}, Name: "minecraft:planks"}}),
    <betterwithmods:siding_wood>.withTag({texture: {Properties: {variant: "birch"}, Name: "minecraft:planks"}}),
    <betterwithmods:siding_wood>.withTag({texture: {Properties: {variant: "jungle"}, Name: "minecraft:planks"}}),
    <betterwithmods:siding_wood>.withTag({texture: {Properties: {variant: "acacia"}, Name: "minecraft:planks"}}),
    <betterwithmods:siding_wood>.withTag({texture: {Properties: {variant: "dark_oak"}, Name: "minecraft:planks"}}),
    <betterwithmods:siding_wood>.withTag({texture: {Properties: {variant: "olive"}, Name: "rustic:planks"}}),
    <betterwithmods:siding_wood>.withTag({texture: {Properties: {variant: "vertical_birch_planks"}, Name: "quark:vertical_planks"}}),
    <betterwithmods:siding_wood>.withTag({texture: {Properties: {variant: "ironwood"}, Name: "rustic:planks"}}),
    <betterwithmods:siding_wood>.withTag({texture: {Name: "thaumcraft:plank_greatwood"}}),
    <betterwithmods:siding_wood>.withTag({texture: {Name: "thaumcraft:plank_silverwood"}}),
    <betterwithmods:siding_wood>.withTag({texture: {Properties: {type: "horizontal"}, Name: "immersiveengineering:treated_wood"}}),
    <betterwithmods:siding_wood>.withTag({texture: {Properties: {type: "vertical"}, Name: "immersiveengineering:treated_wood"}}),
    <betterwithmods:siding_wood>.withTag({texture: {Properties: {type: "packaged"}, Name: "immersiveengineering:treated_wood"}}),
    <betterwithmods:siding_wood>.withTag({texture: {Properties: {variant: "vertical_oak_planks"}, Name: "quark:vertical_planks"}}),
    <betterwithmods:siding_wood>.withTag({texture: {Properties: {variant: "vertical_spruce_planks"}, Name: "quark:vertical_planks"}})
]);


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
    <quark:spruce_trapdoor>,
    <quark:birch_trapdoor>,
    <minecraft:trapdoor>,
    <quark:acacia_trapdoor>,
    <quark:jungle_trapdoor>,
    <quark:dark_oak_trapdoor>,
    <engineersdoors:trapdoor_treated>
] as IItemStack[];

for i in 0 to doors.length {
	//Door
	recipes.remove(doors[i]);

	recipes.addShaped(doors[i], [
		[sidings[i], sidings[i]],
		[sidings[i], sidings[i]],
		[sidings[i], sidings[i]]
	]);
}
for j in 0 to trapdoors.length {
	//Trapdoor 
	recipes.remove(trapdoors[j]);

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

//Bark Recipes

var barks as IItemStack[] = [
    <betterwithmods:bark>,
    <betterwithmods:bark:1>,
    <betterwithmods:bark:2>,
    <betterwithmods:bark:3>,
    <betterwithmods:bark:4>,
    <betterwithmods:bark:5>
];

var bBlocks as IItemStack[] = [
    <quark:bark>,
    <quark:bark:1>,
    <quark:bark:2>,
    <quark:bark:3>,
    <quark:bark:4>,
    <quark:bark:5>
];

for i in 0 to barks.length {
    var bark = barks[i];
    var bBlock = bBlocks[i];
    recipes.remove(bBlock * 9);

    recipes.addShaped(bBlock * 4, [
        [bark, bark],
        [bark, bark]
    ]);
}


// Changes Thaumcraft table to fall in line

recipes.remove(<thaumcraft:table_wood>);
recipes.addShaped("wot_<thaumcraft_tableWood>", <thaumcraft:table_wood> * 4, [
    [sidings[10], sidings[10], sidings[10]],
    [moulding[10], null, moulding[10]]
]);

var stoneSid = <betterwithmods:siding_rock>.withTag({texture: {Properties: {variant: "stone"}, Name: "minecraft:stone"}});
var stoneMold = <betterwithmods:moulding_rock>.withTag({texture: {Properties: {variant: "stone"}, Name: "minecraft:stone"}});

recipes.remove(<thaumcraft:table_stone>);
recipes.addShaped("wot_<thaumcraft_tableStone>", <thaumcraft:table_stone> * 4, [
    [stoneSid, stoneSid, stoneSid],
    [stoneMold, null, stoneMold]
]);

// IE tables
recipes.remove(<engineersdecor:treated_wood_table>);
recipes.addShaped("wot_<engineersdecor_treated_wood_table>", <engineersdecor:treated_wood_table> * 4, [
    [treatedSlab, treatedSlab, treatedSlab],
    [treatedMoulding, null, treatedMoulding]
]);

recipes.remove(<engineersdecor:treated_wood_side_table>);
recipes.addShaped("wot_<engineersdecor_treated_wood_side_table>", <engineersdecor:treated_wood_side_table> * 4, [
    [treatedSlab, treatedSlab, treatedSlab],
    [null, treatedMoulding, null],
    [null, treatedMoulding, null]
]);

recipes.remove(<engineersdecor:treated_wood_stool>);
recipes.addShaped("wot_<engineersdecor_treated_wood_stool>", <engineersdecor:treated_wood_stool> * 2, [
    [treatedSlab, treatedSlab, treatedSlab],
    [null, treatedMoulding, null],
    [null, treatedMoulding, null]
]);

//Wooden Poles

recipes.remove(<engineersdecor:treated_wood_pole>);
recipes.addShaped("wot_<engineersdecor_treated_wood_pole>", <engineersdecor:treated_wood_pole> * 3, [
    [null, treatedMoulding, null],
    [null, treatedMoulding, null],
    [null, treatedMoulding, null]
]);

recipes.remove(<engineersdecor:treated_wood_pole_support>);
recipes.addShapeless("wot_<engineersdecor_treated_wood_pole_support>", <engineersdecor:treated_wood_pole_support>,
    [<engineersdecor:treated_wood_pole>, treatedCorner]
);

recipes.remove(<engineersdecor:treated_wood_pole_head>);
recipes.addShapeless("wot_<engineersdecor_treated_wood_pole_head>", <engineersdecor:treated_wood_pole_head>,
    [<engineersdecor:treated_wood_pole>, treatedSlab]
);

// Treated Decor

recipes.remove(<engineersdecor:treated_wood_windowsill>);
recipes.addShaped("wot_<engineersdecor_treated_wood_windowsill>", <engineersdecor:treated_wood_windowsill> * 4, [
    [treatedMoulding, treatedMoulding, treatedMoulding],
    [treatedCorner, null, treatedCorner]
]);

recipes.remove(<engineersdecor:treated_wood_broad_windowsill>);
recipes.addShaped("wot_<engineersdecor_treated_wood_broad_windowsill>", <engineersdecor:treated_wood_broad_windowsill> * 4 , [
    [treatedSlab, treatedSlab, treatedSlab],
    [treatedCorner, null, treatedCorner]
]);



print("Carpentry Loaded.");