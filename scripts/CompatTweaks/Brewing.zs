print("Brewing Tweaks laoding...");

//Bottles Rustic Fluids via IE Bottling Machine
 /*
var liquids = [
"oliveoil",
"ironberryjuice",
"wildberryjuice",
"grapejuice",
"applejuice",
"alewort",
"honey",
"cinderfire_wort",
"shimmerdew_wort",
"viscous_wort"
];

mods.immersiveengineering.BottlingMachine.addRecipe(<minecraft:potion>.withTag({Potion: "minecraft:water"}), <minecraft:glass_bottle>, <liquid:water>);

for liquid in liquids {
    print(liquid);
    var liquid_temp = "<liquid:" + liquid + ">" as ILiquidStack;
    print(liquid_temp);
    var item_temp = "<rustic:fluid_bottle>.withTag({Fluid: {FluidName: " + liquid + ", Amount: 1000}})" as IItemStack;
    print(item_temp);
    
}
*/

/*
var pairs = [
    [<minecraft:potion>.withTag({Potion: "minecraft:water"}), <liquid:water>],
    [<rustic:fluid_bottle>.withTag({Fluid: {FluidName: "oliveoil", Amount: 1000}}), <liquid:oliveoil>],
    [<rustic:fluid_bottle>.withTag({Fluid: {FluidName: "ironberryjuice", Amount: 1000}}), <liquid:ironberryjuice>],
    [<rustic:fluid_bottle>.withTag({Fluid: {FluidName: "wildberryjuice", Amount: 1000}}), <liquid:wildberryjuice>],
    [<rustic:fluid_bottle>.withTag({Fluid: {FluidName: "grapejuice", Amount: 1000}}), <liquid:grapejuice>],
    [<rustic:fluid_bottle>.withTag({Fluid: {FluidName: "applejuice", Amount: 1000}}), <liquid:applejuice>],
    [<rustic:fluid_bottle>.withTag({Fluid: {FluidName: "alewort", Amount: 1000}}), <liquid:alewort>],
    [<rustic:fluid_bottle>.withTag({Fluid: {FluidName: "honey", Amount: 1000}}), <liquid:honey>],
    [<rustic:fluid_bottle>.withTag({Fluid: {FluidName: "cinderfire_wort", Amount: 1000}}), <liquid:cinderfire_wort>],
    [<rustic:fluid_bottle>.withTag({Fluid: {FluidName: "shimmerdew_wort", Amount: 1000}}), <liquid:shimmerdew_wort>],
    [<rustic:fluid_bottle>.withTag({Fluid: {FluidName: "viscous_wort", Amount: 1000}}), <liquid:viscous_wort>],
];

for pair in pairs {
    mods.immersiveengineering.BottlingMachine.addRecipe(pair[0], <minecraft:glass_bottle>, pair[1]);
}
*/

mods.immersiveengineering.BottlingMachine.addRecipe(<minecraft:potion>.withTag({Potion: "minecraft:water"}), <minecraft:glass_bottle>, <liquid:water> * 1000);
mods.immersiveengineering.BottlingMachine.addRecipe(<rustic:fluid_bottle>.withTag({Fluid: {FluidName: "oliveoil", Amount: 1000}}), <minecraft:glass_bottle>, <liquid:oliveoil> * 1000);
mods.immersiveengineering.BottlingMachine.addRecipe(<rustic:fluid_bottle>.withTag({Fluid: {FluidName: "ironberryjuice", Amount: 1000}}), <minecraft:glass_bottle>, <liquid:ironberryjuice> * 1000);
mods.immersiveengineering.BottlingMachine.addRecipe(<rustic:fluid_bottle>.withTag({Fluid: {FluidName: "wildberryjuice", Amount: 1000}}), <minecraft:glass_bottle>, <liquid:wildberryjuice> * 1000);
mods.immersiveengineering.BottlingMachine.addRecipe(<rustic:fluid_bottle>.withTag({Fluid: {FluidName: "grapejuice", Amount: 1000}}), <minecraft:glass_bottle>, <liquid:grapejuice> * 1000);
mods.immersiveengineering.BottlingMachine.addRecipe(<rustic:fluid_bottle>.withTag({Fluid: {FluidName: "applejuice", Amount: 1000}}), <minecraft:glass_bottle>, <liquid:applejuice> * 1000);
mods.immersiveengineering.BottlingMachine.addRecipe(<rustic:fluid_bottle>.withTag({Fluid: {FluidName: "alewort", Amount: 1000}}), <minecraft:glass_bottle>, <liquid:alewort> * 1000);
mods.immersiveengineering.BottlingMachine.addRecipe(<rustic:fluid_bottle>.withTag({Fluid: {FluidName: "honey", Amount: 1000}}), <minecraft:glass_bottle>, <liquid:honey> * 1000);
mods.immersiveengineering.BottlingMachine.addRecipe(<rustic:fluid_bottle>.withTag({Fluid: {FluidName: "cinderfire_wort", Amount: 1000}}), <minecraft:glass_bottle>, <liquid:cinderfire_wort> * 1000);
mods.immersiveengineering.BottlingMachine.addRecipe(<rustic:fluid_bottle>.withTag({Fluid: {FluidName: "shimmerdew_wort", Amount: 1000}}), <minecraft:glass_bottle>, <liquid:shimmerdew_wort> * 1000);
mods.immersiveengineering.BottlingMachine.addRecipe(<rustic:fluid_bottle>.withTag({Fluid: {FluidName: "viscous_wort", Amount: 1000}}), <minecraft:glass_bottle>, <liquid:viscous_wort> * 1000);

print("Done.");