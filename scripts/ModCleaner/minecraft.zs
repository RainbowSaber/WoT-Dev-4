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
    <minecraft:knowledge_book>,
    <minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 1 as short, id: 0 as short}]}),
    <minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 2 as short, id: 0 as short}]}),
    <minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 3 as short, id: 0 as short}]}),
    <minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 4 as short, id: 0 as short}]}),
    <minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 1 as short, id: 1 as short}]}),
    <minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 2 as short, id: 1 as short}]}),
    <minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 3 as short, id: 1 as short}]}),
    <minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 4 as short, id: 1 as short}]}),
    <minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 1 as short, id: 2 as short}]}),
    <minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 2 as short, id: 2 as short}]}),
    <minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 3 as short, id: 2 as short}]}),
    <minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 4 as short, id: 2 as short}]}),
    <minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 1 as short, id: 3 as short}]}),
    <minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 2 as short, id: 3 as short}]}),
    <minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 3 as short, id: 3 as short}]}),
    <minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 4 as short, id: 3 as short}]}),
    <minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 1 as short, id: 4 as short}]}),
    <minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 2 as short, id: 4 as short}]}),
    <minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 3 as short, id: 4 as short}]}),
    <minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 4 as short, id: 4 as short}]}),
    <minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 1 as short, id: 5 as short}]}),
    <minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 2 as short, id: 5 as short}]}),
    <minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 3 as short, id: 5 as short}]}),
    <minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 1 as short, id: 6 as short}]}),
    <minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 1 as short, id: 7 as short}]}),
    <minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 2 as short, id: 7 as short}]}),
    <minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 3 as short, id: 7 as short}]}),
    <minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 1 as short, id: 8 as short}]}),
    <minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 2 as short, id: 8 as short}]}),
    <minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 3 as short, id: 8 as short}]}),
    <minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 1 as short, id: 9 as short}]}),
    <minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 2 as short, id: 9 as short}]}),
    <minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 1 as short, id: 10 as short}]}),
    <minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 1 as short, id: 11 as short}]}),
    <minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 1 as short, id: 16 as short}]}),
    <minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 2 as short, id: 16 as short}]}),
    <minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 3 as short, id: 16 as short}]}),
    <minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 4 as short, id: 16 as short}]}),
    <minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 5 as short, id: 16 as short}]}),
    <minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 1 as short, id: 17 as short}]}),
    <minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 2 as short, id: 17 as short}]}),
    <minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 3 as short, id: 17 as short}]}),
    <minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 4 as short, id: 17 as short}]}),
    <minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 5 as short, id: 17 as short}]}),
    <minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 1 as short, id: 18 as short}]}),
    <minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 2 as short, id: 18 as short}]}),
    <minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 3 as short, id: 18 as short}]}),
    <minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 4 as short, id: 18 as short}]}),
    <minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 5 as short, id: 18 as short}]}),
    <minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 1 as short, id: 19 as short}]}),
    <minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 2 as short, id: 19 as short}]}),
    <minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 1 as short, id: 20 as short}]}),
    <minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 2 as short, id: 20 as short}]}),
    <minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 1 as short, id: 21 as short}]}),
    <minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 2 as short, id: 21 as short}]}),
    <minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 3 as short, id: 21 as short}]}),
    <minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 1 as short, id: 22 as short}]}),
    <minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 2 as short, id: 22 as short}]}),
    <minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 3 as short, id: 22 as short}]}),
    <minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 1 as short, id: 32 as short}]}),
    <minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 2 as short, id: 32 as short}]}),
    <minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 3 as short, id: 32 as short}]}),
    <minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 4 as short, id: 32 as short}]}),
    <minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 5 as short, id: 32 as short}]}),
    <minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 1 as short, id: 33 as short}]}),
    <minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 1 as short, id: 34 as short}]}),
    <minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 2 as short, id: 34 as short}]}),
    <minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 3 as short, id: 34 as short}]}),
    <minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 1 as short, id: 35 as short}]}),
    <minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 2 as short, id: 35 as short}]}),
    <minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 3 as short, id: 35 as short}]}),
    <minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 1 as short, id: 48 as short}]}),
    <minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 2 as short, id: 48 as short}]}),
    <minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 3 as short, id: 48 as short}]}),
    <minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 4 as short, id: 48 as short}]}),
    <minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 5 as short, id: 48 as short}]}),
    <minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 1 as short, id: 49 as short}]}),
    <minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 2 as short, id: 49 as short}]}),
    <minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 1 as short, id: 50 as short}]}),
    <minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 1 as short, id: 51 as short}]}),
    <minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 1 as short, id: 61 as short}]}),
    <minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 2 as short, id: 61 as short}]}),
    <minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 3 as short, id: 61 as short}]}),
    <minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 1 as short, id: 62 as short}]}),
    <minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 2 as short, id: 62 as short}]}),
    <minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 3 as short, id: 62 as short}]}),
    <minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 1 as short, id: 70 as short}]}),
    <minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 1 as short, id: 71 as short}]}),

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