#loader contenttweaker

import mods.contenttweaker.Item;
import mods.contenttweaker.VanillaFactory;

var bun_choc = VanillaFactory.createItemFood("bun_choc", 3);
bun_choc.saturation = 1;
bun_choc.register();

var bun_dough = VanillaFactory.createItem("bun_dough");
bun_dough.register();

var burger = VanillaFactory.createItemFood("burger", 10);
burger.saturation = 0.9;
burger.onItemFoodEaten = function(stack, world, player) {
           if (!world.isRemote()) {
               player.addPotionEffect(<potion:minecraft:slowness>.makePotionEffect(5, 1));
           }
       };
burger.register();

var donut_choc = VanillaFactory.createItemFood("donut_choc", 3);
donut_choc.saturation = 0.2;
donut_choc.onItemFoodEaten = function(stack, world, player) {
                   player.addPotionEffect(<potion:minecraft:swiftness>.makePotionEffect(5, 1));
};
donut_choc.register();

var donut_glazed = VanillaFactory.createItemFood("donut_glazed", 2);
donut_glazed.saturation = 0.2;
donut_glazed.onItemFoodEaten = function(stack, world, player) {
                    player.addPotionEffect(<potion:minecraft:swiftness>.makePotionEffect(5, 1));
};
donut_glazed.register();