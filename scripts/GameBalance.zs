//remove ore sand and dust smelting to ingots to avoid ore multiplying surpass extractor
mods.tconstruct.Smeltery.removeMelting(<exnihilo:aluminum_sand>);
mods.tconstruct.Smeltery.removeMelting(<exnihilo:copper_sand>);
mods.tconstruct.Smeltery.removeMelting(<exnihilo:iron_sand>);
mods.tconstruct.Smeltery.removeMelting(<exnihilo:lead_sand>);
mods.tconstruct.Smeltery.removeMelting(<exnihilo:silver_sand>);
mods.tconstruct.Smeltery.removeMelting(<exnihilo:gold_sand>);
mods.tconstruct.Smeltery.removeMelting(<exnihilo:tin_sand>);
mods.tconstruct.Smeltery.removeMelting(<exnihilo:nickel_sand>);
mods.tconstruct.Smeltery.removeMelting(<exnihilo:platinum_sand>);
mods.tconstruct.Smeltery.removeMelting(<exastris:CobaltOreBlock:1>);
mods.tconstruct.Smeltery.removeMelting(<exastris:ArditeOreBlock:1>);

mods.tconstruct.Smeltery.removeMelting(<exnihilo:aluminum_dust>);
mods.tconstruct.Smeltery.removeMelting(<exnihilo:copper_dust>);
mods.tconstruct.Smeltery.removeMelting(<exnihilo:iron_dust>);
mods.tconstruct.Smeltery.removeMelting(<exnihilo:lead_dust>);
mods.tconstruct.Smeltery.removeMelting(<exnihilo:silver_dust>);
mods.tconstruct.Smeltery.removeMelting(<exnihilo:gold_dust>);
mods.tconstruct.Smeltery.removeMelting(<exnihilo:tin_dust>);
mods.tconstruct.Smeltery.removeMelting(<exnihilo:nickel_dust>);
mods.tconstruct.Smeltery.removeMelting(<exnihilo:platinum_dust>);
mods.tconstruct.Smeltery.removeMelting(<exastris:CobaltOreBlock:2>);
mods.tconstruct.Smeltery.removeMelting(<exastris:ArditeOreBlock:2>);

mods.thermalexpansion.Pulverizer.removeRecipe(<exnihilo:copper_sand>);
mods.thermalexpansion.Pulverizer.removeRecipe(<exnihilo:iron_sand>);
mods.thermalexpansion.Pulverizer.removeRecipe(<exnihilo:lead_sand>);
mods.thermalexpansion.Pulverizer.removeRecipe(<exnihilo:silver_sand>);
mods.thermalexpansion.Pulverizer.removeRecipe(<exnihilo:gold_sand>);
mods.thermalexpansion.Pulverizer.removeRecipe(<exnihilo:tin_sand>);
mods.thermalexpansion.Pulverizer.removeRecipe(<exnihilo:nickel_sand>);
mods.thermalexpansion.Pulverizer.removeRecipe(<exnihilo:platinum_sand>);

mods.thermalexpansion.Pulverizer.removeRecipe(<exnihilo:copper_dust>);
mods.thermalexpansion.Pulverizer.removeRecipe(<exnihilo:iron_dust>);
mods.thermalexpansion.Pulverizer.removeRecipe(<exnihilo:lead_dust>);
mods.thermalexpansion.Pulverizer.removeRecipe(<exnihilo:silver_dust>);
mods.thermalexpansion.Pulverizer.removeRecipe(<exnihilo:gold_dust>);
mods.thermalexpansion.Pulverizer.removeRecipe(<exnihilo:tin_dust>);
mods.thermalexpansion.Pulverizer.removeRecipe(<exnihilo:nickel_dust>);
mods.thermalexpansion.Pulverizer.removeRecipe(<exnihilo:platinum_dust>);

//prevent items duplicating bug.
mods.thaumcraft.Research.removeResearch("ICHOR_POUCH");

//prevent items from being "smuggled" into spirit world.
mods.thaumcraft.Arcane.removeRecipe(<ThaumicTinkerer:focusEnderChest>);
mods.thaumcraft.Arcane.addShaped("FOCUS_ENDER_CHEST", <ThaumicTinkerer:focusEnderChest>, "ordo 10, perditio 10", [[<Thaumcraft:blockMirror>, null, null], [<EnderIO:itemMaterial:8>, null, null],[<Thaumcraft:FocusPortableHole>, null, null]]);
mods.thaumcraft.Research.refreshResearchRecipe("FOCUS_ENDER_CHEST");
