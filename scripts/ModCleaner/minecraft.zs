import crafttweaker.item.IItemStack;
import mods.jei.JEI;
import scripts.library as lib;

var hItems as IItemStack[] = 
[
    <minecraft:enchanted_book>,
    <minecraft:splash_potion>,
    <minecraft:lingering_potion>,
    <minecraft:nether_star>,
    <forge:bucketfilled>,
    <minecraft:bedrock>,
    <minecraft:spawn_egg>,
    <minecraft:barrier>,
    <minecraft:dragon_egg>,
    <minecraft:mob_spawner>,
    <minecraft:structure_void>,
    <minecraft:repeating_command_block>,
    <minecraft:chain_command_block>,
    <minecraft:structure_block>,
    <minecraft:filled_map>,
    <minecraft:written_book>,
    <minecraft:fireworks>,
    <minecraft:knowledge_book>
];

lib.hideArray(hItems);

recipes.addShapeless(<minecraft:grass>*2,
		[<minecraft:dirt>, <minecraft:dirt>, <ore:seed>]
);

recipes.addShapeless(<minecraft:web>,
		[<minecraft:string>, <minecraft:string>, <ore:slimeball>]
);


//Horse Armor
val tannedLeather = <betterwithmods:material:6>;

recipes.addShaped(<minecraft:diamond_horse_armor>, [
	[null, null, <minecraft:diamond_block>], 
	[tannedLeather, <minecraft:saddle>, tannedLeather], 
	[<rustic:chain>, null, <rustic:chain>]]
);
recipes.addShaped(<minecraft:golden_horse_armor>, [
	[null, null, <minecraft:gold_block>], 
	[tannedLeather, <minecraft:saddle>, tannedLeather], 
	[<rustic:chain>, null, <rustic:chain>]]
);
recipes.addShaped(<minecraft:iron_horse_armor>, [
	[null, null, <ore:blockIron>], 
	[tannedLeather, <minecraft:saddle>, tannedLeather], 
	[<rustic:chain>, null, <rustic:chain>]]);

//Name Tag recipe
recipes.addShapeless(<minecraft:name_tag>, 
	[<thaumcraft:label>, <ore:string>, <ore:slimeball>]
);