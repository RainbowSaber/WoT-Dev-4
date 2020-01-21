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