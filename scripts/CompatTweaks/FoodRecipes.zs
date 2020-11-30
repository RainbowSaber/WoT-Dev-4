var flour = <betterwithmods:raw_pastry:3>;
var sugar = <minecraft:sugar>;
var choc = <betterwithmods:chocolate>;
var donut = <betterwithmods:donut>;

recipes.addShaped("wot_contenttweaker_burger", <contenttweaker:burger> * 2, [
    [null, <minecraft:bread>, null],
    [<rustic:tomato>, <ore:listAllmeatcooked>, <minecraft:reeds>],
    [null, <minecraft:bread>, null]
]);

recipes.addShapeless("wot_contenttweaker_bun_dough", <contenttweaker:bun_dough>,
    [flour, flour, sugar, choc]
);

recipes.addShapeless("wot_glazed_donut", <contenttweaker:donut_glazed>, [donut, sugar]);

recipes.addShapeless("wot_choc_donut", <contenttweaker:donut_choc>, [donut, choc]);

furnace.addRecipe(<contenttweaker:bun_choc>*4, <contenttweaker:bun_dough>);

