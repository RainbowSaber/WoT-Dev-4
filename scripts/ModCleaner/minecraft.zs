import crafttweaker.item.IItemStack;
import mods.jei.JEI;
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
    <minecraft:enchanted_book>,
    <minecraft:splash_potion>,
    <minecraft:lingering_potion>,
    <minecraft:nether_star>,
    <forge:bucketfilled>
];

function cleanArray(items as IItemStack[]) {
    for item in items {
	    mods.jei.JEI.removeAndHide(item);
        recipes.remove(item);
    }
}

function hideArray(items as IItemStack[]) {
    for item in items {
        mods.jei.JEI.removeAndHide(item);
    }
}

cleanArray(items);
hideArray(hItems);