import crafttweaker.item.IItemStack;
import mods.jei.JEI;
import scripts.library as lib;

val hItems as IItemStack[] =
[
    <quark:ancient_tome>.withTag({StoredEnchantments: [{lvl: 4 as short, id: 2 as short}]}),
    <quark:ancient_tome>.withTag({StoredEnchantments: [{lvl: 3 as short, id: 7 as short}]}),
    <quark:ancient_tome>.withTag({StoredEnchantments: [{lvl: 5 as short, id: 16 as short}]}),
    <quark:ancient_tome>.withTag({StoredEnchantments: [{lvl: 5 as short, id: 17 as short}]}),
    <quark:ancient_tome>.withTag({StoredEnchantments: [{lvl: 5 as short, id: 18 as short}]}),
    <quark:ancient_tome>.withTag({StoredEnchantments: [{lvl: 2 as short, id: 19 as short}]}),
    <quark:ancient_tome>.withTag({StoredEnchantments: [{lvl: 2 as short, id: 20 as short}]}),
    <quark:ancient_tome>.withTag({StoredEnchantments: [{lvl: 3 as short, id: 21 as short}]}),
    <quark:ancient_tome>.withTag({StoredEnchantments: [{lvl: 3 as short, id: 22 as short}]}),
    <quark:ancient_tome>.withTag({StoredEnchantments: [{lvl: 5 as short, id: 32 as short}]}),
    <quark:ancient_tome>.withTag({StoredEnchantments: [{lvl: 3 as short, id: 34 as short}]}),
    <quark:ancient_tome>.withTag({StoredEnchantments: [{lvl: 3 as short, id: 35 as short}]}),
    <quark:ancient_tome>.withTag({StoredEnchantments: [{lvl: 5 as short, id: 48 as short}]}),
    <quark:ancient_tome>.withTag({StoredEnchantments: [{lvl: 2 as short, id: 49 as short}]}),
    <quark:ancient_tome>.withTag({StoredEnchantments: [{lvl: 3 as short, id: 61 as short}]}),
    <quark:ancient_tome>.withTag({StoredEnchantments: [{lvl: 3 as short, id: 62 as short}]}),
    <quark:smoker>
];

lib.hideArray(hItems);

val cItems as IItemStack[] = [
    <quark:iron_ladder>
];

lib.cleanArray(cItems);