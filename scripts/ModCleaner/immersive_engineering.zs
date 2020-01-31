import crafttweaker.item.IItemStack;
import mods.jei.JEI;
import scripts.library as lib;

var hItems as IItemStack[] = 
[
	<immersiveengineering:shader>.withTag({shader_name: "Rosequartz"}),
	<immersiveengineering:shader>.withTag({shader_name: "Argo"}),
	<immersiveengineering:shader>.withTag({shader_name: "Sunstrike"}),
	<immersiveengineering:shader>.withTag({shader_name: "Locus"}),
	<immersiveengineering:shader>.withTag({shader_name: "Felix"}),
	<immersiveengineering:shader>.withTag({shader_name: "Sharkface"}),
	<immersiveengineering:shader>.withTag({shader_name: "Dragon's Breath"}),
	<immersiveengineering:shader>.withTag({shader_name: "Hawk"}),
	<immersiveengineering:shader>.withTag({shader_name: "Eyas"}),
	<immersiveengineering:shader>.withTag({shader_name: "Magnum"}),
	<immersiveengineering:shader>.withTag({shader_name: "Fox"}),
	<immersiveengineering:shader>.withTag({shader_name: "Vault-Tec"}),
	<immersiveengineering:shader>.withTag({shader_name: "Sponsor"}),
	<immersiveengineering:shader>.withTag({shader_name: "Mass Fusion"}),
	<immersiveengineering:shader>.withTag({shader_name: "StormFlower"}),
	<immersiveengineering:shader>.withTag({shader_name: "Miló"}),
	<immersiveengineering:shader>.withTag({shader_name: "Trident"}),
	<immersiveengineering:shader>.withTag({shader_name: "Chloris"}),
	<immersiveengineering:shader>.withTag({shader_name: "Crescent Rose"}),
	<immersiveengineering:shader>.withTag({shader_name: "Qrow"}),
	<immersiveengineering:shader>.withTag({shader_name: "Lusus Naturae"}),
	<immersiveengineering:shader>.withTag({shader_name: "Vanguard"}),
	<immersiveengineering:shader>.withTag({shader_name: "Regal"}),
	<immersiveengineering:shader>.withTag({shader_name: "Harrowed"}),
	<immersiveengineering:shader>.withTag({shader_name: "Taken"}),
	<immersiveengineering:shader>.withTag({shader_name: "IKELOS"}),
	<immersiveengineering:shader>.withTag({shader_name: "Angel's Thesis"}),
	<immersiveengineering:shader>.withTag({shader_name: "Sutherland"}),
	<immersiveengineering:shader>.withTag({shader_name: "Exia"}),
	<immersiveengineering:shader>.withTag({shader_name: "Crimson Lotus"}),
	<immersiveengineering:shader>.withTag({shader_name: "Dominator"}),
	<immersiveengineering:shader>.withTag({shader_name: "Warbird"}),
	<immersiveengineering:shader>.withTag({shader_name: "Matrix"}),
	<immersiveengineering:shader>.withTag({shader_name: "Twili"}),
	<immersiveengineering:shader>.withTag({shader_name: "Usurper"}),
	<immersiveengineering:shader>.withTag({shader_name: "Ancient"}),
	<immersiveengineering:shader>.withTag({shader_name: "Glacis"}),
	<immersiveengineering:shader>.withTag({shader_name: "Phoenix"}),
	<immersiveengineering:shader>.withTag({shader_name: "Radiant"}),
	<immersiveengineering:shader>.withTag({shader_name: "Hollow"}),
	<immersiveengineering:shader>.withTag({shader_name: "Microshark"}),
	<immersiveengineering:shader>.withTag({shader_name: "N7"}),
	<immersiveengineering:shader>.withTag({shader_name: "Normandy"}),
	<immersiveengineering:shader>.withTag({shader_name: "OmniTool"}),
	<immersiveengineering:shader>.withTag({shader_name: "The Kindled"}),
	<immersiveengineering:shader>.withTag({shader_name: "Dark Fire"}),
	<immersiveengineering:shader>.withTag({shader_name: "Erruption"}),
	<immersiveengineering:shader>.withTag({shader_name: "WAAAGH!"}),
	<immersiveengineering:shader_bag>.withTag({rarity: "COMMON"}),
	<immersiveengineering:shader_bag>.withTag({rarity: "UNCOMMON"}),
	<immersiveengineering:shader_bag>.withTag({rarity: "RARE"}),
	<immersiveengineering:shader_bag>.withTag({rarity: "EPIC"}),
	<immersiveengineering:shader_bag>.withTag({rarity: "IE:MASTERWORK"}),
	<immersivepetroleum:schematic>.withTag({multiblock: "IE:CokeOven"}),
	<immersivepetroleum:schematic>.withTag({multiblock: "IE:AlloySmelter"}),
	<immersivepetroleum:schematic>.withTag({multiblock: "IE:BlastFurnace"}),
	<immersivepetroleum:schematic>.withTag({multiblock: "IE:BlastFurnaceAdvanced"}),
	<immersivepetroleum:schematic>.withTag({multiblock: "IE:MetalPress"}),
	<immersivepetroleum:schematic>.withTag({multiblock: "IE:Crusher"}),
	<immersivepetroleum:schematic>.withTag({multiblock: "IE:SheetmetalTank"}),
	<immersivepetroleum:schematic>.withTag({multiblock: "IE:Silo"}),
	<immersivepetroleum:schematic>.withTag({multiblock: "IE:Assembler"}),
	<immersivepetroleum:schematic>.withTag({multiblock: "IE:AutoWorkbench"}),
	<immersivepetroleum:schematic>.withTag({multiblock: "IE:BottlingMachine"}),
	<immersivepetroleum:schematic>.withTag({multiblock: "IE:Squeezer"}),
	<immersivepetroleum:schematic>.withTag({multiblock: "IE:Fermenter"}),
	<immersivepetroleum:schematic>.withTag({multiblock: "IE:Refinery"}),
	<immersivepetroleum:schematic>.withTag({multiblock: "IE:DieselGenerator"}),
	<immersivepetroleum:schematic>.withTag({multiblock: "IE:ArcFurnace"}),
	<immersivepetroleum:schematic>.withTag({multiblock: "IE:Lightningrod"}),
	<immersivepetroleum:schematic>.withTag({multiblock: "IE:Mixer"}),
	<immersivepetroleum:schematic>.withTag({multiblock: "IE:Feedthrough"}),
	<immersivepetroleum:schematic>.withTag({multiblock: "IP:DistillationTower"}),
	<immersivepetroleum:schematic>.withTag({multiblock: "IP:Pumpjack"}),
	<immersivepetroleum:schematic>.withTag({multiblock: "IE:ExcavatorDemo", flip: 1 as byte}),
	<immersiveengineering:coresample>
];

lib.hideArray(hItems);

var dItems as IItemStack[] = [
	<engineersdecor:treated_wood_broad_windowsill>
];
lib.cleanArray(dItems);


mods.immersiveengineering.Crusher.addRecipe(
	<minecraft:magma_cream> * 2,
	<minecraft:magma>,
	2048
);

var shaft = <betterwithmods:material:36>;
//BWM Progression locked behind the Shaft
recipes.remove(<immersiveengineering:tool>);
recipes.addShaped("immersiveengineering_tool/hammer", <immersiveengineering:tool>, [
	[null, <ore:ingotIron>, null],
	[null, shaft, <ore:ingotIron>], 
	[shaft, null, null]
]);

recipes.remove(<immersiveengineering:tool:1>);
recipes.addShaped("wot_<immersiveengineering_toolWire>", <immersiveengineering:tool:1>, [
    [<ore:ingotIron>, shaft, null],
    [shaft, null, null]
]);

//Kinetic Dynamo
recipes.remove(<immersiveengineering:metal_device1:2>);
recipes.addShaped("wot_ie_dynamo", <immersiveengineering:metal_device1:2>, [
	[null, <betterwithmods:wooden_axle>, null],
	[<minecraft:redstone>, <immersiveengineering:metal_decoration0>, <minecraft:redstone>],
	[<minecraft:iron_ingot>, <minecraft:iron_ingot>, <minecraft:iron_ingot>]
]);

var ironComp = <immersiveengineering:material:8>;
var steelComp = <immersiveengineering:material:9>;

mods.immersiveengineering.Blueprint.removeRecipe(ironComp);
mods.immersiveengineering.Blueprint.removeRecipe(steelComp);
recipes.remove(ironComp);
recipes.remove(steelComp);
var ironPlate = <ore:plateIron>;
var steelPlate = <ore:plateSteel>;
var copper = <ore:ingotCopper>;
var iron = <ore:ingotIron>;

recipes.addShaped("wot_ie_ironComp", ironComp * 2, [
	[ironPlate, null, ironPlate],
	[null, copper, null],
	[ironPlate, null, ironPlate]
]);

recipes.addShaped("wot_ie_steelComp", steelComp * 2, [
	[steelPlate, null, steelPlate],
	[null, copper, null],
	[steelPlate, null, steelPlate]
]);

mods.immersiveengineering.Blueprint.addRecipe("components", ironComp * 2, [ironPlate * 2, copper]);
mods.immersiveengineering.Blueprint.addRecipe("components", steelComp * 2, [steelPlate * 2, copper]);

var sand = <betterwithmods:sand_pile>;
var clay = <minecraft:clay_ball>;
var wBucket = <minecraft:water_bucket>;
var brick = <immersiveengineering:stone_decoration>;
var bucket = <minecraft:bucket>;

recipes.removeByRecipeName("immersiveengineering:stone_decoration/cokebrick");

mods.betterwithmods.Cauldron.builder()
.buildRecipe([sand * 12, clay * 6], [brick*3])
.setHeat(1)
.setPriority(5)
.build();


var seeds as IItemStack[] = [
	<betterwithmods:hemp>,
	<rustic:chili_pepper_seeds>,
	<rustic:tomato_seeds>,
	<rustic:grape_stem>
];

var yield as int[] = [
	120,
	80,
	60,
	60
];

for i in 0 to seeds.length {
	mods.immersiveengineering.Squeezer.addRecipe(null, <liquid:plantoil> * yield[i], seeds[i], 2048);
}

mods.immersiveengineering.Squeezer.addRecipe(<betterwithmods:dirt_pile>, null, <ore:treeSapling>, 1024);
