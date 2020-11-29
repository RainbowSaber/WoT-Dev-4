#loader contenttweaker

import mods.contenttweaker.Item;
import mods.contenttweaker.VanillaFactory;

var bun_choc = VanillaFactory.createItemFood("bun_choc", 3);
bun_choc.saturation = 1;
bun_choc.register();

var bun_dough = VanillaFactory.createItem("bun_dough");
bun_dough.register();

var burger = VanillaFactory.createItemFood("burger", 10);
burger.saturation = 12;
burger.register();

var donut_choc = VanillaFactory.createItemFood("donut_choc", 3);
donut_choc.saturation = 2;
donut_choc.register();

var donut_glazed = VanillaFactory.createItemFood("donut_glazed", 2);
donut_glazed.saturation = 1;
donut_glazed.register();

var flour = <betterwithmods:raw_pastry:3>;
var sugar = <minecraft:sugar>;
var choc = <betterwithmods:chocolate>;

recipes.addShaped("wot_contenttweaker_burger", <contenttweaker:burger> * 2, [
    [null, <minecraft:bread>, null],
    [<rustic:tomato>, <ore:listAllmeatcooked>, <minecraft:reeds>],
    [null, <minecraft:bread>, null]
]);

recipes.addShapeless("wot_contenttweaker_bun_dough", <contenttweaker:bun_dough>, [
    [flour, flour, sugar, choc]
]);