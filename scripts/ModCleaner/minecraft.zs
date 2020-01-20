import scripts.lib;

var items = 
[
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

var hItems = 
[
    <minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 4 as short, id: 1 as short}]}),
    <minecraft:splash_potion>.withTag({Potion: "minecraft:water"}),
    <minecraft:lingering_potion>.withTag({Potion: "minecraft:water"}),
    <minecraft:nether_star>,
    <forge:bucketfilled>.withTag({FluidName: "viscous_wort", Amount: 1000})
];

lib.cleanArray(items);
lib.hideArray(hItems);