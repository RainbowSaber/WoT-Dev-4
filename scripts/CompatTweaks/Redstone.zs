import crafttweaker.item.IItemStack;
import mods.jei.JEI;
import scripts.library as lib;
import crafttweaker.item.IIngredient;

var repeater = <minecraft:repeater>;
recipes.remove(repeater);
//recipes.removeByName("quark:repeater");
var rTorch = <minecraft:redstone_torch>;
var clock = <minecraft:clock>;
var wafer = <betterwithmods:siding_rock>.withTag({texture: {Properties: {variant: "stone"}, Name: "minecraft:stone"}});
var compar = <minecraft:comparator>;
recipes.remove(compar);
//recipes.removeByName("betterwithmods:hcredstone/comparator");
var rando = <quark:redstone_randomizer>;
recipes.remove(rando);
var induct = <quark:redstone_inductor>;
recipes.remove(induct);
var rDust = <minecraft:redstone>;
var latch = <betterwithmods:material:34>;
recipes.remove(latch);

var paper = <minecraft:paper>;
var blue = <ore:dyeBlue>;

recipes.addShaped("wot_rs_latch", latch, [
    [<ore:ingotGold>],
    [rDust]
]);

var hook = <minecraft:tripwire_hook>;
recipes.addShaped("wot_rs_hook", hook * 2, [
    [<ore:ingotIron>],
    [<ore:stickWood>],
]);

var component as IItemStack[] = [
    repeater,
    compar,
    rando,
    induct,
    rTorch,
    latch,
];

var compIng as IIngredient[][] = [
    [wafer, rTorch * 2, clock],
    [wafer, rTorch * 3, <ore:gemQuartz>],
    [wafer, rTorch * 3, <betterwithmods:urn:8>],
    [wafer, rDust * 2, <minecraft:magma_cream>],
    [rDust, <ore:stickWood>],
    [rDust, <ore:nuggetGold>]

];

recipes.addShaped("wot_rs_redstoneBlue", <immersiveengineering:blueprint>.withTag({blueprint: "Redstone"}), [
    [wafer, rDust, null],
    [blue, blue, blue],
    [paper, paper, paper]
]);

for i in 0 to component.length {
    mods.immersiveengineering.Blueprint.addRecipe(
        "Redstone", component[i], compIng[i]
    );
}

//Pistons are too expensive
recipes.remove(<minecraft:piston>);
recipes.addShaped(<minecraft:piston>,[
	[<ore:slabWood>,<ore:slabWood>,<ore:slabWood>],
	[<ore:cobblestone>,<ore:ingotIron>,<ore:cobblestone>],
	[<ore:cobblestone>,<betterwithmods:material:34>,<ore:cobblestone>]
]);

var steelDoor = <engineersdoors:door_steel>;
var steelTrap = <engineersdoors:trapdoor_steel>;
var ingotSteel = <ore:ingotSteel>
recipes.removeRecipe(steelDoor);
recipes.addShaped("wot_steelDoor", steelDoor, [
    [ingotSteel, ingotSteel, latch],
    [ingotSteel, ingotSteel, null]
    [ingotSteel, ingotSteel, latch],
]);

recipes.removeRecipe(steelTrap);
recipes.addShaped("wot_steelTrap", steelTrap, [
    [ingotSteel, ingotSteel, latch],
    [ingotSteel, ingotSteel, latch]
]);

//Test for Releay
var relay = <thaumcraft:redstone_relay>;

recipes.removeRecipe(relay);
recipes.addShaped("wot_relay", relay, [
    [ingotSteel]
]);
