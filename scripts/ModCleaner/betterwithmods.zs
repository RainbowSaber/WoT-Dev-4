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
    <minecraft:farmland>,
    <betterwithmods:planter:2>,
    <betterwithmods:planter:3>,
    <betterwithmods:planter:1>,
    <betterwithmods:planter:4>,
    <betterwithmods:planter:5>,
    <betterwithmods:planter:6>,
    <betterwithmods:planter:7>,
    <betterwithmods:planter:8>,
    <betterwithmods:planter:9>,
    <betterwithmods:stump_remover>,
    <betterwithmods:candle:*>,
    <betterwithmods:candle_holder>,
    <betterwithmods:booster>
];

lib.cleanArray(hItems);

var hideItems as IItemStack[] = [
    <betterwithmods:wooden_broken_gearbox>,
    <betterwithmods:steel_broken_gearbox>,
    <betterwithmods:steel_saw>,
    <betterwithmods:long_friend>
];

lib.hideArray(hideItems);

mods.betterwithmods.Anvil.removeShaped(<betterwithmods:material:47>);

var recipeList = [
    "betterwithmods:items/chainmail_leggings",
    "betterwithmods:items/chainmail_helmet",
    "betterwithmods:items/chainmail_boots",
    "betterwithmods:items/chainmail_chestplate"
] as string[];

for rcp in recipeList {
    recipes.removeByRecipeName(rcp);
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

	
//Magma Cream Cauldron
recipes.remove(<minecraft:magma_cream>);
mods.betterwithmods.Cauldron.builder()
	.buildRecipe([<minecraft:magma_cream>],[<minecraft:slime_ball>, <minecraft:blaze_powder>])
	.setHeat(1)
	.setPriority(2)
	.build();
	
//Remove Candles

mods.betterwithmods.Anvil.removeShaped(<betterwithmods:candle_holder>);

//Make redstone easier accessible
var wBucket = <minecraft:water_bucket>;
var sulfur = <ore:dustSulfur>;
var niter = <ore:dustSaltpeter>;
var stone = <minecraft:stone>;
var stoneBit = <betterwithmods:siding_rock>.withTag({texture: {Properties: {variant: "stone"}, Name: "minecraft:stone"}});

mods.betterwithmods.Cauldron.builder()
.buildRecipe([stone * 8, sulfur, niter, wBucket], [stoneBit*8])
.setHeat(2)
.setPriority(1)
.build();
