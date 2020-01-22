//Unifies lighting crafting to include BWM progression systems
import scripts.library as lib;
import crafttweaker.item.IItemStack;

print("Lighting Loading ...");

val filament = <betterwithmods:material:19>;
val torch = <minecraft:torch>;
val paneGlass = <ore:paneGlass>;
val framedGlass = <quark:framed_glass>;
val plateIron = <immersiveengineering:metal:39>;
val plateGold = <immersiveengineering:metal:40>;
val paper = <minecraft:paper>;
val stick = <minecraft:stick>;
val latch = <betterwithmods:material:34>;

val lanternRustic = <rustic:iron_lantern>;
val lanternIE = <immersiveengineering:metal_decoration2:4>;
val lanternPaper = <quark:paper_lantern>;
val lampRedstone = <minecraft:redstone_lamp>;
val candleBWM = <betterwithmods:candle>;
val candleRustic = <rustic:candle>;


//Rustic Lanterns

recipes.remove(lanternRustic);
recipes.addShaped(lanternRustic * 4, [
	[paneGlass], [torch], [plateIron]
]);

recipes.remove(<rustic:golden_lantern>);
recipes.addShaped(<rustic:golden_lantern> * 4, [
    [paneGlass], [torch], [plateGold]
]);

recipes.remove(<rusticthaumaturgy:lantern_brass>);
recipes.addShaped(<rusticthaumaturgy:lantern_brass> * 4, [
    [paneGlass], [torch], [<thaumcraft:plate>]
]);

//IE lamps

recipes.remove(lanternIE);
recipes.addShaped(lanternIE * 2, [
	[null, plateIron, null],
	[paneGlass, filament, paneGlass],
	[null, plateIron, null]
]);

//Quark lampsr

recipes.remove(lanternPaper);
recipes.addShaped(lanternPaper * 2, [
	[paper, stick, paper],
	[paper, filament, paper],
	[paper, stick ,paper]
]);

recipes.remove(lampRedstone);
recipes.addShaped(lampRedstone,[
		[framedGlass],
		[filament],
		[latch]
]);

//Candles
val candle = <thaumcraft:candle_white>;
val docht = <ore:string>;
val lattice = <rustic:iron_lattice>;

val oreTallow = <ore:tallow>;
oreTallow.add(<thaumcraft:tallow>);
lib.cleanArray([<rustic:tallow>]);

recipes.remove(<rustic:candle>);
recipes.addShapeless(<rustic:candle>, [candle, <minecraft:iron_ingot>]);

recipes.remove(<rustic:candle_gold>);
recipes.addShapeless(<rustic:candle_gold>, [candle, <minecraft:gold_ingot>]);

recipes.remove(<rusticthaumaturgy:candle_brass>);
recipes.addShapeless(<rusticthaumaturgy:candle_brass>, [candle, <thaumcraft:ingot:2>]);

recipes.remove(<thaumcraft:candle_white>);
recipes.addShaped("wot_light_candle", <thaumcraft:candle_white> * 3, [
    [docht],
    [oreTallow],
    [oreTallow]
]);

val badTall = <rustic:tallow>;

furnace.remove(badTall);




print("Lighting Loaded.");