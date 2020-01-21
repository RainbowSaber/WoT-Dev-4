print("Brewing Tweaks laoding...");

//Allows rustic Fluids to be bottled -> automatic wine is possible albeit annoying

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