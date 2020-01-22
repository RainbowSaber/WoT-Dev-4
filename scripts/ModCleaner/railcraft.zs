import crafttweaker.item.IItemStack;
import mods.jei.JEI;
import scripts.library as lib;

var cItems = [
    <railcraft:tool_axe_steel>,
    <railcraft:tool_crowbar_iron>,
    <railcraft:tool_hoe_steel>,
    <railcraft:tool_pickaxe_steel>,
    <railcraft:tool_shovel_steel>,
    <railcraft:tool_sword_steel>,
    <railcraft:rail:5>,
    <railcraft:rebar>
] as IItemStack[];

lib.cleanArray(cItems);

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
    <railcraft:track_outfitted>.withTag({railcraft: {rail: "railcraft_strap_iron", kit: "railcraft_coupler"}})
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




var track1 = <minecraft:rail>;

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