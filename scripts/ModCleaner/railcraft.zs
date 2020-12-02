import crafttweaker.item.IItemStack;
import mods.jei.JEI;
import scripts.library as lib;
import crafttweaker.item.IIngredient;

var cItems = [
    <railcraft:tool_axe_steel>,
    <railcraft:tool_crowbar_iron>,
    <railcraft:tool_hoe_steel>,
    <railcraft:tool_pickaxe_steel>,
    <railcraft:tool_shovel_steel>,
    <railcraft:tool_sword_steel>,
    <railcraft:rail:5>,
    <railcraft:rebar>,
    <railcraft:track_parts>,
    <railcraft:circuit>,
    <railcraft:circuit:1>,
    <railcraft:circuit:2>,
    <railcraft:circuit:3>
    ] as IItemStack[];

lib.cleanArray(cItems);

recipes.removeByRecipeName("railcraft:cart_steel");

var hItems = [
    <railcraft:track_outfitted>.withTag({railcraft: {rail: "railcraft_abandoned", kit: "railcraft_activator"}}),
    <railcraft:track_outfitted>.withTag({railcraft: {rail: "railcraft_electric", kit: "railcraft_activator"}}),
    <railcraft:track_outfitted>.withTag({railcraft: {rail: "railcraft_high_speed", kit: "railcraft_activator"}}),
    <railcraft:track_outfitted>.withTag({railcraft: {rail: "railcraft_high_speed_electric", kit: "railcraft_activator"}}),
    <railcraft:track_outfitted>.withTag({railcraft: {rail: "railcraft_iron", kit: "railcraft_activator"}}),
    <railcraft:track_outfitted>.withTag({railcraft: {rail: "railcraft_reinforced", kit: "railcraft_activator"}}),
    <railcraft:track_outfitted>.withTag({railcraft: {rail: "railcraft_strap_iron", kit: "railcraft_activator"}}),
    <railcraft:track_outfitted>.withTag({railcraft: {rail: "railcraft_abandoned", kit: "railcraft_booster"}}),
    <railcraft:track_outfitted>.withTag({railcraft: {rail: "railcraft_electric", kit: "railcraft_booster"}}),
    <railcraft:track_outfitted>.withTag({railcraft: {rail: "railcraft_high_speed", kit: "railcraft_booster"}}),
    <railcraft:track_outfitted>.withTag({railcraft: {rail: "railcraft_high_speed_electric", kit: "railcraft_booster"}}),
    <railcraft:track_outfitted>.withTag({railcraft: {rail: "railcraft_iron", kit: "railcraft_booster"}}),
    <railcraft:track_outfitted>.withTag({railcraft: {rail: "railcraft_reinforced", kit: "railcraft_booster"}}),
    <railcraft:track_outfitted>.withTag({railcraft: {rail: "railcraft_strap_iron", kit: "railcraft_booster"}}),
    <railcraft:track_outfitted>.withTag({railcraft: {rail: "railcraft_abandoned", kit: "railcraft_buffer"}}),
    <railcraft:track_outfitted>.withTag({railcraft: {rail: "railcraft_electric", kit: "railcraft_buffer"}}),
    <railcraft:track_outfitted>.withTag({railcraft: {rail: "railcraft_iron", kit: "railcraft_buffer"}}),
    <railcraft:track_outfitted>.withTag({railcraft: {rail: "railcraft_reinforced", kit: "railcraft_buffer"}}),
    <railcraft:track_outfitted>.withTag({railcraft: {rail: "railcraft_strap_iron", kit: "railcraft_buffer"}}),
    <railcraft:track_outfitted>.withTag({railcraft: {rail: "railcraft_abandoned", kit: "railcraft_control"}}),
    <railcraft:track_outfitted>.withTag({railcraft: {rail: "railcraft_electric", kit: "railcraft_control"}}),
    <railcraft:track_outfitted>.withTag({railcraft: {rail: "railcraft_iron", kit: "railcraft_control"}}),
    <railcraft:track_outfitted>.withTag({railcraft: {rail: "railcraft_reinforced", kit: "railcraft_control"}}),
    <railcraft:track_outfitted>.withTag({railcraft: {rail: "railcraft_strap_iron", kit: "railcraft_control"}}),
    <railcraft:track_outfitted>.withTag({railcraft: {rail: "railcraft_abandoned", kit: "railcraft_detector"}}),
    <railcraft:track_outfitted>.withTag({railcraft: {rail: "railcraft_electric", kit: "railcraft_detector"}}),
    <railcraft:track_outfitted>.withTag({railcraft: {rail: "railcraft_high_speed", kit: "railcraft_detector"}}),
    <railcraft:track_outfitted>.withTag({railcraft: {rail: "railcraft_high_speed_electric", kit: "railcraft_detector"}}),
    <railcraft:track_outfitted>.withTag({railcraft: {rail: "railcraft_iron", kit: "railcraft_detector"}}),
    <railcraft:track_outfitted>.withTag({railcraft: {rail: "railcraft_reinforced", kit: "railcraft_detector"}}),
    <railcraft:track_outfitted>.withTag({railcraft: {rail: "railcraft_strap_iron", kit: "railcraft_detector"}}),
    <railcraft:track_outfitted>.withTag({railcraft: {rail: "railcraft_abandoned", kit: "railcraft_disembarking"}}),
    <railcraft:track_outfitted>.withTag({railcraft: {rail: "railcraft_electric", kit: "railcraft_disembarking"}}),
    <railcraft:track_outfitted>.withTag({railcraft: {rail: "railcraft_iron", kit: "railcraft_disembarking"}}),
    <railcraft:track_outfitted>.withTag({railcraft: {rail: "railcraft_reinforced", kit: "railcraft_disembarking"}}),
    <railcraft:track_outfitted>.withTag({railcraft: {rail: "railcraft_strap_iron", kit: "railcraft_disembarking"}}),
    <railcraft:track_outfitted>.withTag({railcraft: {rail: "railcraft_abandoned", kit: "railcraft_dumping"}}),
    <railcraft:track_outfitted>.withTag({railcraft: {rail: "railcraft_electric", kit: "railcraft_dumping"}}),
    <railcraft:track_outfitted>.withTag({railcraft: {rail: "railcraft_iron", kit: "railcraft_dumping"}}),
    <railcraft:track_outfitted>.withTag({railcraft: {rail: "railcraft_reinforced", kit: "railcraft_dumping"}}),
    <railcraft:track_outfitted>.withTag({railcraft: {rail: "railcraft_strap_iron", kit: "railcraft_dumping"}}),
    <railcraft:track_outfitted>.withTag({railcraft: {rail: "railcraft_abandoned", kit: "railcraft_embarking"}}),
    <railcraft:track_outfitted>.withTag({railcraft: {rail: "railcraft_electric", kit: "railcraft_embarking"}}),
    <railcraft:track_outfitted>.withTag({railcraft: {rail: "railcraft_iron", kit: "railcraft_embarking"}}),
    <railcraft:track_outfitted>.withTag({railcraft: {rail: "railcraft_reinforced", kit: "railcraft_embarking"}}),
    <railcraft:track_outfitted>.withTag({railcraft: {rail: "railcraft_strap_iron", kit: "railcraft_embarking"}}),
    <railcraft:track_outfitted>.withTag({railcraft: {rail: "railcraft_abandoned", kit: "railcraft_gated"}}),
    <railcraft:track_outfitted>.withTag({railcraft: {rail: "railcraft_electric", kit: "railcraft_gated"}}),
    <railcraft:track_outfitted>.withTag({railcraft: {rail: "railcraft_iron", kit: "railcraft_gated"}}),
    <railcraft:track_outfitted>.withTag({railcraft: {rail: "railcraft_reinforced", kit: "railcraft_gated"}}),
    <railcraft:track_outfitted>.withTag({railcraft: {rail: "railcraft_strap_iron", kit: "railcraft_gated"}}),
    <railcraft:track_outfitted>.withTag({railcraft: {rail: "railcraft_abandoned", kit: "railcraft_locking"}}),
    <railcraft:track_outfitted>.withTag({railcraft: {rail: "railcraft_electric", kit: "railcraft_locking"}}),
    <railcraft:track_outfitted>.withTag({railcraft: {rail: "railcraft_high_speed", kit: "railcraft_locking"}}),
    <railcraft:track_outfitted>.withTag({railcraft: {rail: "railcraft_high_speed_electric", kit: "railcraft_locking"}}),
    <railcraft:track_outfitted>.withTag({railcraft: {rail: "railcraft_iron", kit: "railcraft_locking"}}),
    <railcraft:track_outfitted>.withTag({railcraft: {rail: "railcraft_reinforced", kit: "railcraft_locking"}}),
    <railcraft:track_outfitted>.withTag({railcraft: {rail: "railcraft_strap_iron", kit: "railcraft_locking"}}),
    <railcraft:track_outfitted>.withTag({railcraft: {rail: "railcraft_abandoned", kit: "railcraft_one_way"}}),
    <railcraft:track_outfitted>.withTag({railcraft: {rail: "railcraft_electric", kit: "railcraft_one_way"}}),
    <railcraft:track_outfitted>.withTag({railcraft: {rail: "railcraft_iron", kit: "railcraft_one_way"}}),
    <railcraft:track_outfitted>.withTag({railcraft: {rail: "railcraft_reinforced", kit: "railcraft_one_way"}}),
    <railcraft:track_outfitted>.withTag({railcraft: {rail: "railcraft_strap_iron", kit: "railcraft_one_way"}}),
    <railcraft:track_outfitted>.withTag({railcraft: {rail: "railcraft_abandoned", kit: "railcraft_messenger"}}),
    <railcraft:track_outfitted>.withTag({railcraft: {rail: "railcraft_electric", kit: "railcraft_messenger"}}),
    <railcraft:track_outfitted>.withTag({railcraft: {rail: "railcraft_high_speed", kit: "railcraft_messenger"}}),
    <railcraft:track_outfitted>.withTag({railcraft: {rail: "railcraft_high_speed_electric", kit: "railcraft_messenger"}}),
    <railcraft:track_outfitted>.withTag({railcraft: {rail: "railcraft_iron", kit: "railcraft_messenger"}}),
    <railcraft:track_outfitted>.withTag({railcraft: {rail: "railcraft_reinforced", kit: "railcraft_messenger"}}),
    <railcraft:track_outfitted>.withTag({railcraft: {rail: "railcraft_strap_iron", kit: "railcraft_messenger"}}),
    <railcraft:track_outfitted>.withTag({railcraft: {rail: "railcraft_abandoned", kit: "railcraft_delayed"}}),
    <railcraft:track_outfitted>.withTag({railcraft: {rail: "railcraft_electric", kit: "railcraft_delayed"}}),
    <railcraft:track_outfitted>.withTag({railcraft: {rail: "railcraft_high_speed", kit: "railcraft_delayed"}}),
    <railcraft:track_outfitted>.withTag({railcraft: {rail: "railcraft_high_speed_electric", kit: "railcraft_delayed"}}),
    <railcraft:track_outfitted>.withTag({railcraft: {rail: "railcraft_iron", kit: "railcraft_delayed"}}),
    <railcraft:track_outfitted>.withTag({railcraft: {rail: "railcraft_reinforced", kit: "railcraft_delayed"}}),
    <railcraft:track_outfitted>.withTag({railcraft: {rail: "railcraft_strap_iron", kit: "railcraft_delayed"}}),
    <railcraft:track_outfitted>.withTag({railcraft: {rail: "railcraft_abandoned", kit: "railcraft_priming"}}),
    <railcraft:track_outfitted>.withTag({railcraft: {rail: "railcraft_electric", kit: "railcraft_priming"}}),
    <railcraft:track_outfitted>.withTag({railcraft: {rail: "railcraft_high_speed", kit: "railcraft_priming"}}),
    <railcraft:track_outfitted>.withTag({railcraft: {rail: "railcraft_high_speed_electric", kit: "railcraft_priming"}}),
    <railcraft:track_outfitted>.withTag({railcraft: {rail: "railcraft_iron", kit: "railcraft_priming"}}),
    <railcraft:track_outfitted>.withTag({railcraft: {rail: "railcraft_reinforced", kit: "railcraft_priming"}}),
    <railcraft:track_outfitted>.withTag({railcraft: {rail: "railcraft_strap_iron", kit: "railcraft_priming"}}),
    <railcraft:track_outfitted>.withTag({railcraft: {rail: "railcraft_abandoned", kit: "railcraft_launcher"}}),
    <railcraft:track_outfitted>.withTag({railcraft: {rail: "railcraft_electric", kit: "railcraft_launcher"}}),
    <railcraft:track_outfitted>.withTag({railcraft: {rail: "railcraft_iron", kit: "railcraft_launcher"}}),
    <railcraft:track_outfitted>.withTag({railcraft: {rail: "railcraft_reinforced", kit: "railcraft_launcher"}}),
    <railcraft:track_outfitted>.withTag({railcraft: {rail: "railcraft_strap_iron", kit: "railcraft_launcher"}}),
    <railcraft:track_outfitted>.withTag({railcraft: {rail: "railcraft_abandoned", kit: "railcraft_whistle"}}),
    <railcraft:track_outfitted>.withTag({railcraft: {rail: "railcraft_electric", kit: "railcraft_whistle"}}),
    <railcraft:track_outfitted>.withTag({railcraft: {rail: "railcraft_high_speed", kit: "railcraft_whistle"}}),
    <railcraft:track_outfitted>.withTag({railcraft: {rail: "railcraft_high_speed_electric", kit: "railcraft_whistle"}}),
    <railcraft:track_outfitted>.withTag({railcraft: {rail: "railcraft_iron", kit: "railcraft_whistle"}}),
    <railcraft:track_outfitted>.withTag({railcraft: {rail: "railcraft_reinforced", kit: "railcraft_whistle"}}),
    <railcraft:track_outfitted>.withTag({railcraft: {rail: "railcraft_strap_iron", kit: "railcraft_whistle"}}),
    <railcraft:track_outfitted>.withTag({railcraft: {rail: "railcraft_abandoned", kit: "railcraft_locomotive"}}),
    <railcraft:track_outfitted>.withTag({railcraft: {rail: "railcraft_electric", kit: "railcraft_locomotive"}}),
    <railcraft:track_outfitted>.withTag({railcraft: {rail: "railcraft_high_speed", kit: "railcraft_locomotive"}}),
    <railcraft:track_outfitted>.withTag({railcraft: {rail: "railcraft_high_speed_electric", kit: "railcraft_locomotive"}}),
    <railcraft:track_outfitted>.withTag({railcraft: {rail: "railcraft_iron", kit: "railcraft_locomotive"}}),
    <railcraft:track_outfitted>.withTag({railcraft: {rail: "railcraft_reinforced", kit: "railcraft_locomotive"}}),
    <railcraft:track_outfitted>.withTag({railcraft: {rail: "railcraft_strap_iron", kit: "railcraft_locomotive"}}),
    <railcraft:track_outfitted>.withTag({railcraft: {rail: "railcraft_abandoned", kit: "railcraft_throttle"}}),
    <railcraft:track_outfitted>.withTag({railcraft: {rail: "railcraft_electric", kit: "railcraft_throttle"}}),
    <railcraft:track_outfitted>.withTag({railcraft: {rail: "railcraft_high_speed", kit: "railcraft_throttle"}}),
    <railcraft:track_outfitted>.withTag({railcraft: {rail: "railcraft_high_speed_electric", kit: "railcraft_throttle"}}),
    <railcraft:track_outfitted>.withTag({railcraft: {rail: "railcraft_iron", kit: "railcraft_throttle"}}),
    <railcraft:track_outfitted>.withTag({railcraft: {rail: "railcraft_reinforced", kit: "railcraft_throttle"}}),
    <railcraft:track_outfitted>.withTag({railcraft: {rail: "railcraft_strap_iron", kit: "railcraft_throttle"}}),
    <railcraft:track_outfitted>.withTag({railcraft: {rail: "railcraft_high_speed", kit: "railcraft_transition"}}),
    <railcraft:track_outfitted>.withTag({railcraft: {rail: "railcraft_high_speed_electric", kit: "railcraft_transition"}}),
    <railcraft:track_outfitted>.withTag({railcraft: {rail: "railcraft_abandoned", kit: "railcraft_coupler"}}),
    <railcraft:track_outfitted>.withTag({railcraft: {rail: "railcraft_electric", kit: "railcraft_coupler"}}),
    <railcraft:track_outfitted>.withTag({railcraft: {rail: "railcraft_iron", kit: "railcraft_coupler"}}),
    <railcraft:track_outfitted>.withTag({railcraft: {rail: "railcraft_reinforced", kit: "railcraft_coupler"}}),
    <railcraft:track_outfitted>.withTag({railcraft: {rail: "railcraft_strap_iron", kit: "railcraft_coupler"}}),
    <railcraft:borehead_bronze>,
    <railcraft:tool_notepad>
] as IItemStack[];

lib.hideArray(hItems);

//Track recipes

var rail0 = <railcraft:rail:2>;
var rail1 = <railcraft:rail>;
var rail2 = <railcraft:rail:1>;
var rail3 = <railcraft:rail:3>;
var rail4 = <railcraft:rail:4>;

var bedStone = <railcraft:railbed:1>;
var bedWood = <railcraft:railbed>;
var tieStone = <railcraft:tie:1>;
var tieWood = <railcraft:tie>;

var parts = <railcraft:track_parts>;

var trackMold = <contenttweaker:track_mold>;
game.setLocalization("item.contenttweaker.track_mold.name", "Metal Press Mold: Track");
var ironIng = <ore:ingotIron>;
var goldIng = <ore:ingotGold>;
var steelIng = <ore:ingotSteel>;
var elecIng = <immersiveengineering:metal:7>;
var copperIng = <ore:ingotCopper>;
var plateSteel = <ore:plateSteel>;
var plateIron = <ore:plateIron>;
var trackParts = <immersiveengineering:material:8>;

var track1 = <minecraft:rail>;

var paper = <minecraft:paper>;
var blue = <ore:dyeBlue>;

var slab = <immersiveengineering:treated_wood_slab>;
var reds = <minecraft:redstone>;
var lead = <minecraft:lead>;
var pressure = <minecraft:stone_pressure_plate>;

recipes.remove(track1);
recipes.addShaped("wot_rc_track1", track1 * 32, [
    [rail1, null, rail1],
    [rail1, bedWood, rail1],
    [rail1, null, rail1],
]);

var trSlab = <immersiveengineering:treated_wood_slab>;
recipes.remove(tieWood);
recipes.addShaped("wot_rc_wTie", tieWood, [
    [trSlab, trSlab, trSlab]
]);

var trMould = <betterwithmods:moulding_wood>.withTag({texture: {Properties: {type: "horizontal"}, Name: "immersiveengineering:treated_wood"}});
recipes.addShaped("wot_rc_wTie+", tieWood, [
    [trMould, trMould, trMould]
]);

var stRod = <immersiveengineering:material:2>;
var stMould = <betterwithmods:moulding_rock>.withTag({texture: {Properties: {variant: "stone"}, Name: "minecraft:stone"}});
recipes.remove(tieStone);
recipes.addShaped("wot_rc_sTie", tieStone, [
    [null, stRod, null],
    [stMould, stMould, stMould]
]);

mods.immersiveengineering.MetalPress.addRecipe(rail1 * 2, ironIng, trackMold, 2000);
mods.immersiveengineering.MetalPress.addRecipe(rail1 * 2, copperIng, trackMold, 2000);
mods.immersiveengineering.MetalPress.addRecipe(rail1 * 3, steelIng, trackMold, 2000);

recipes.addShaped("wot_rc_rail2", rail2 * 3, [
    [rail1, reds, goldIng]
]);

recipes.addShaped("wot_rc_rail3", rail3 * 3, [
    [rail1, <ore:dustBlaze>, elecIng]
]);

recipes.addShaped("wot_rc_rail4", rail4 * 3, [
    [rail1, <ore:dustHOPGraphite>, rail1]
]);

mods.immersiveengineering.Blueprint.addRecipe("molds", 
    trackMold, [
        plateSteel * 5,
       <immersiveengineering:tool:1>
       ]
);


//Blueprint: Kits

var kits as IItemStack[] = [
    <railcraft:track_kit:1>.withTag({railcraft: {kit: "railcraft_activator"}}),
    <railcraft:track_kit:2>.withTag({railcraft: {kit: "railcraft_booster"}}),
    <railcraft:track_kit:3>.withTag({railcraft: {kit: "railcraft_buffer"}}),
    <railcraft:track_kit:4>.withTag({railcraft: {kit: "railcraft_control"}}),
    <railcraft:track_kit:5>.withTag({railcraft: {kit: "railcraft_detector"}}),
    <railcraft:track_kit:6>.withTag({railcraft: {kit: "railcraft_disembarking"}}),
    <railcraft:track_kit:7>.withTag({railcraft: {kit: "railcraft_dumping"}}),
    <railcraft:track_kit:8>.withTag({railcraft: {kit: "railcraft_embarking"}}),
    <railcraft:track_kit:9>.withTag({railcraft: {kit: "railcraft_gated"}}),
    <railcraft:track_kit:10>.withTag({railcraft: {kit: "railcraft_locking"}}),
    <railcraft:track_kit:11>.withTag({railcraft: {kit: "railcraft_one_way"}}),
    <railcraft:track_kit:15>.withTag({railcraft: {kit: "railcraft_messenger"}}),
    <railcraft:track_kit:16>.withTag({railcraft: {kit: "railcraft_delayed"}}),
    <railcraft:track_kit:17>.withTag({railcraft: {kit: "railcraft_priming"}}),
    <railcraft:track_kit:18>.withTag({railcraft: {kit: "railcraft_launcher"}}),
    <railcraft:track_kit:19>.withTag({railcraft: {kit: "railcraft_whistle"}}),
    <railcraft:track_kit:20>.withTag({railcraft: {kit: "railcraft_locomotive"}}),
    <railcraft:track_kit:21>.withTag({railcraft: {kit: "railcraft_throttle"}}),
    <railcraft:track_kit:22>.withTag({railcraft: {kit: "railcraft_transition"}}),
    <railcraft:track_kit:23>.withTag({railcraft: {kit: "railcraft_coupler"}})
];

var quantity as int[] = [
    8,
    16,
    2,
    16,
    8,
    4,
    4,
    4,
    4,
    4,
    8,
    4,
    4,
    2,
    1,
    8,
    4,
    4,
    8,
    4
];

var kitIng as IIngredient[][] = [
    [trackParts, slab, reds * 2],
    [trackParts, slab, reds, rail2],
    [trackParts, slab, ironIng * 2],
    [trackParts, slab, reds, rail2],
    [trackParts, slab, reds, pressure],
    [trackParts, slab, reds, pressure, lead],
    [trackParts, slab, reds, plateSteel],
    [trackParts, slab, reds, <minecraft:ender_pearl>, lead],
    [trackParts, slab, reds, rail2, <ore:gateWood>],
    [trackParts, slab, reds, pressure, <minecraft:sticky_piston>],
    [trackParts, slab, reds, pressure, <minecraft:piston>],
    [trackParts, slab, reds, <minecraft:sign>],
    [trackParts, slab, pressure, <minecraft:sticky_piston>, <minecraft:repeater>],
    [trackParts, slab, reds, <minecraft:flint_and_steel>],
    [trackParts, slab, reds, <minecraft:piston>, <immersiveengineering:storage:8>],
    [trackParts, slab, reds, <minecraft:noteblock>, <ore:dyeYellow>, <ore:dyeBlack>],
    [trackParts, slab, reds, <railcraft:signal_lamp>],
    [trackParts, slab, reds, <ore:dyeYellow>, <ore:dyeBlack>],
    [trackParts, slab, reds * 2, rail2 * 2],
    [trackParts, slab, reds, lead]
];

for i in 0 to kits.length {
    recipes.remove(kits[i]);
    mods.immersiveengineering.Blueprint.addRecipe(
        "Track Kits", kits[i] * quantity[i], kitIng[i]
    );
}


recipes.addShaped("wot_rc_blueprintKit", <immersiveengineering:blueprint>.withTag({blueprint: "Track Kits"}), [
    [trackParts, reds, slab],
    [blue, blue, blue],
    [paper, paper, paper]
]);

<immersiveengineering:blueprint>.withTag({blueprint: "Track Kits"}).addTooltip("Make sure to craft a crowbar and a Spike Maul");


// Blueprint: Signals


var lamp = <railcraft:signal_lamp>;
recipes.remove(lamp);
recipes.addShaped("wot_rc_lamp", lamp, [
    [null, <ore:dyeGreen>, null],
    [<ore:paneGlass>, <ore:dyeYellow>, <betterwithmods:material:19>],
    [null, <ore:dyeRed>, null]
]);

var circuit = <immersiveengineering:material:27>;
recipes.replaceAllOccurences(<railcraft:circuit:1>, circuit);

var signals as IItemStack[] = [
    <railcraft:signal>,
    <railcraft:signal:1>,
    <railcraft:signal:2>,
    <railcraft:signal_dual>,
    <railcraft:signal_dual:1>,
    <railcraft:signal_dual:2>,
    <railcraft:signal_box:1>,
    <railcraft:signal_box:3>,
    <railcraft:signal_box:6>,
    <railcraft:signal_box:5>,
    <railcraft:signal_box:2>,
    <railcraft:signal_box>,
    <railcraft:signal_box:4>
];

var signalsIng as IIngredient[][] = [
    [lamp, trackParts, circuit],
    [lamp, trackParts, circuit],
    [lamp, trackParts, circuit],
    [lamp * 2, trackParts * 2, circuit * 2],
    [lamp * 2, trackParts * 2, circuit * 2],
    [lamp * 2, trackParts * 2, circuit * 2],
    [ironIng * 2, reds, <minecraft:repeater>],
    [ironIng * 2, reds, circuit * 2],
    [ironIng * 2, reds, <minecraft:comparator>],
    [ironIng * 2, reds, circuit * 2],
    [ironIng * 2, reds, circuit],
    [ironIng * 2, <minecraft:comparator>, circuit],
    [ironIng * 2, reds, circuit]
];

recipes.addShaped("wot_rc_blueprintSignals", <immersiveengineering:blueprint>.withTag({blueprint: "Signals"}), [
    [lamp, circuit, trackParts],
    [blue, blue, blue],
    [paper, paper, paper]
]);

for i in 0 to signals.length {
    recipes.remove(signals[i]);
    mods.immersiveengineering.Blueprint.addRecipe(
        "Signals", signals[i], signalsIng[i]
    );
}


// Blueprint: Detectors

var eye = <betterwithmods:material:20>;
var plate = <minecraft:stone_pressure_plate>;

var detectors as IItemStack[] = [
    <railcraft:detector>,
    <railcraft:detector:1>,
    <railcraft:detector:2>,
    <railcraft:detector:3>,
    <railcraft:detector:4>,
    <railcraft:detector:5>,
    <railcraft:detector:6>,
    <railcraft:detector:7>,
    <railcraft:detector:8>,
    <railcraft:detector:9>,
    <railcraft:detector:10>,
    <railcraft:detector:11>,
    <railcraft:detector:12>
];

var detectorIng as IIngredient[] = [eye, plate, <ore:cobblestone>];

recipes.addShaped("wot_rc_blueprintDetector", <immersiveengineering:blueprint>.withTag({blueprint: "Detectors"}), [
    [null, eye, plate],
    [blue, blue, blue],
    [paper, paper, paper]
]);

for detector in detectors {
    recipes.remove(detector);
    mods.immersiveengineering.Blueprint.addRecipe(
        "Detectors", detector, detectorIng
    );
}

//Motors

val manualSwitch = <railcraft:actuator>;
val motorSwitch = <railcraft:actuator:1>;
var steelPart = <immersiveengineering:material:9>;

recipes.remove(manualSwitch);
recipes.addShaped("wot_rc_manualSwitch", manualSwitch, [
    [null, <minecraft:lever>, null],
    [ironIng, trackParts, <minecraft:piston>]
]);

recipes.remove(motorSwitch);
recipes.addShaped("wot_rc_motorSwitch", motorSwitch, [
    [null, circuit, null],
    [ironIng, steelPart, <minecraft:piston>]
]);

//Carts


//Tunnel Bore

var bore = <railcraft:bore>;
var lightEng = <immersiveengineering:metal_decoration0:4>;
var heavyEng = <immersiveengineering:metal_decoration0:5>;
var scaff = <immersiveengineering:metal_decoration1:1>;
var cart = <minecraft:minecart>;
var cartChest = <minecraft:chest_minecart>;
var oven = <engineersdecor:small_lab_furnace>;

recipes.remove(bore);
mods.betterwithmods.Anvil.addShaped(bore, [
    [null, heavyEng, heavyEng, scaff],
    [null, oven, lightEng, cart],
    [null, null, lightEng, cart],
    [null, null, scaff, cartChest]
]);

var ironHead = <railcraft:borehead_iron>;
var steelHead = <railcraft:borehead_steel>;
var diaHead = <railcraft:borehead_diamond>;

recipes.remove(ironHead);
recipes.remove(steelHead);
recipes.remove(diaHead);

var diaIng = <betterwithmods:material:45>;

mods.betterwithmods.Anvil.addShaped(ironHead, [
    [plateIron, plateIron, plateIron, plateIron],
    [plateIron, scaff, scaff, plateIron],
    [plateIron, scaff, scaff, plateIron],
    [plateIron, plateIron, plateIron, plateIron]
]);

mods.betterwithmods.Anvil.addShaped(steelHead, [
    [plateSteel, plateSteel, plateSteel, plateSteel],
    [plateSteel, scaff, scaff, plateSteel],
    [plateSteel, scaff, scaff, plateSteel],
    [plateSteel, plateSteel, plateSteel, plateSteel]
]);

mods.betterwithmods.Anvil.addShaped(diaHead, [
    [diaIng, plateSteel, diaIng, plateSteel],
    [plateSteel, scaff, scaff, diaIng],
    [diaIng, scaff, scaff, plateSteel],
    [plateSteel, diaIng, plateSteel, diaIng]
]);

//Carts

var loco = <railcraft:locomotive_steam_solid>.withTag({model: "railcraft:default"});
var tank = <immersiveengineering:metal_device0:4>;
var rod = <immersiveengineering:material:2>;
var chute = <immersiveengineering:conveyor>.withTag({conveyorType: "immersiveengineering:chute_steel"});
var furnace = <minecraft:furnace>;

recipes.remove(loco);
recipes.removeByRecipeName("railcraft:locomotive_steam_solid#0$1");
recipes.addShaped("wot_rc_loco", loco, [
    [null, chute, null],
    [tank, tank, furnace],
    [cart, rod, cart]
]);

var cargoCart = <railcraft:cart_cargo>;

recipes.remove(cargoCart);
recipes.removeByRecipeName("railcraft:cart_cargo#0$1");
recipes.addShaped("wot_rc_cargoCart", cargoCart, [
    [plateSteel],
    [cart]
]);

var trackLayer = <railcraft:mow_track_layer>;
recipes.remove(trackLayer);
var trackRemover = <railcraft:mow_track_remover>;
recipes.remove(trackRemover);
var trackRelayer = <railcraft:mow_track_relayer>;
recipes.remove(trackRelayer);
var undercutter = <railcraft:mow_undercutter>;
recipes.remove(undercutter);

var chest = <ore:chest>;
var engineering = <immersiveengineering:metal_decoration0:5>;
var blockPlacer = <betterwithmods:block_dispenser>;

recipes.addShaped("wot_rc_layer", trackLayer, [
    [null, <minecraft:piston>, null],
    [chest, heavyEng, blockPlacer],
    [null, cart, null]
]);

recipes.addShaped("wot_rc_remover", trackRemover, [
    [null, <railcraft:tool_crowbar_steel>, null],
    [chest, heavyEng, blockPlacer],
    [null, cart, null]
]);

recipes.addShaped("wot_rc_relayer", trackRelayer, [
    [<minecraft:piston>, null, <railcraft:tool_crowbar_steel>],
    [chest, heavyEng, blockPlacer],
    [null, cart, null]
]);

recipes.addShaped("wot_rc_undercutter", undercutter, [
    [null, <minecraft:sticky_piston>, null],
    [chest, heavyEng, blockPlacer],
    [null, cart, null]
]);

// Loaders

var iLoader = <railcraft:manipulator>;
var iUnloader = <railcraft:manipulator:1>;
var fLoader = <railcraft:manipulator:4>;
var fUnloader = <railcraft:manipulator:5>;
var trainDisp = <railcraft:manipulator:9>;

var cobblestone = <ore:cobblestone>;
var hopper = <minecraft:hopper>;
var iDete = <railcraft:detector>;
var fDete = <railcraft:detector:6>;
var barrel = <immersiveengineering:wooden_device0:1>;


recipes.remove(iLoader);
recipes.addShaped("wot_rc_iLoad", iLoader, [
    [cobblestone, chest, cobblestone],
    [cobblestone, iDete, cobblestone],
    [cobblestone, hopper, cobblestone]
]);

recipes.remove(iUnloader);
recipes.addShaped("wot_iUnloader", iUnloader, [
    [cobblestone, hopper, cobblestone],
    [cobblestone, iDete, cobblestone],
    [cobblestone, chest, cobblestone]
]);

recipes.remove(fLoader);
recipes.addShaped("wot_fLoader", fLoader, [
    [cobblestone, barrel, cobblestone],
    [cobblestone, fDete, cobblestone],
    [cobblestone, hopper, cobblestone]
]);

recipes.remove(fUnloader);
recipes.addShaped("wot_fUnloader", fUnloader, [
    [cobblestone, hopper, cobblestone],
    [cobblestone, fDete, cobblestone],
    [cobblestone, barrel, cobblestone]
]);

recipes.remove(trainDisp);
recipes.addShapeless(trainDisp, [
    <railcraft:manipulator:8>, <railcraft:tool_crowbar_steel>
]);
