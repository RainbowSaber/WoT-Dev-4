import crafttweaker.item.IItemStack;
import mods.jei.JEI;
import scripts.library as lib;

var hItems as IItemStack[] = [
    <betterwithmods:fertile_farmland>,
    <betterwithmods:arcane_scroll>.withTag({enchant: 0}),
    <betterwithmods:infernal_enchanter>,
    <betterwithmods:material:47>,
    <minecraft:spawn_egg>.withTag({EntityTag: {id: "betterwithmods:bwm_jungle_spider"}}),
    <minecraft:spawn_egg>.withTag({EntityTag: {id: "betterwithmods:longboi"}}),
    <betterwithmods:fertile_farmland>,
    <betterwithmods:arcane_scroll>.withTag({enchant: 0}),
    <betterwithmods:infernal_enchanter>,
    <betterwithmods:material:47>,
    <minecraft:spawn_egg>.withTag({EntityTag: {id: "betterwithmods:bwm_jungle_spider"}}),
    <minecraft:spawn_egg>.withTag({EntityTag: {id: "betterwithmods:longboi"}})
];

lib.cleanArray(hItems);

mods.betterwithmods.Anvil.removeShaped(<betterwithmods:material:47>);

var recipeList as String[] = [
    "betterwithmods:items/chainmail_leggings",
    "betterwithmods:items/chainmail_helmet",
    "betterwithmods:items/chainmail_boots",
    "betterwithmods:items/chainmail_chestplate"
];

for recipe in recipeList {
    recipe.removByRecipeName(recipe);
}

val shaft = <betterwithmods:material:36>;

//Progression Tooltips
<minecraft:diamond>.displayName = "Brittle Diamond";
<minecraft:diamond>.addTooltip("Not suitable for toolcrafting, it has to be reinforced");
<betterwithmods:material:45>.addTooltip("Tools made from this pristine metal can be molten down and recrafted at no loss");
<minecraft:beacon>.addTooltip("The base of the beacon determines its effect");
<minecraft:wheat_seeds>.displayName= "Wheat Seeds";
<minecraft:wheat>.addTooltip("Can be ground to flour using a Mill Stone");
<betterwithmods:single_machine>.addTooltip("Can be powered using a Handcrank");
<betterwithmods:material:34>.addTooltip("Basic Redstone Component");

//Adds fermented spider eye to cauldron
//Fermented Spider Eyes Cauldron
val shrooms = [<minecraft:brown_mushroom>,
	<minecraft:red_mushroom>,
	<rustic:deathstalk_mushroom>,
	<rustic:mooncap_mushroom>
] as IItemStack[];

recipes.remove(<minecraft:fermented_spider_eye>);

for item in shrooms {
mods.betterwithmods.Cauldron.builder()
	.buildRecipe([<minecraft:fermented_spider_eye>],[<minecraft:sugar>, <minecraft:spider_eye>, item])
	.setHeat(1)
	.setPriority(0)
	.build();
}

//Magma cream in cauldron
	
//Magma Cream Cauldron
recipes.remove(<minecraft:magma_cream>);
mods.betterwithmods.Cauldron.builder()
	.buildRecipe([<minecraft:magma_cream>],[<minecraft:slime_ball>, <minecraft:blaze_powder>])
	.setHeat(1)
	.setPriority(2)
	.build();
	