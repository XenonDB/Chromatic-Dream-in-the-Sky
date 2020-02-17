//Miscellaneous
//mods.ic2.MetalFormer.addRollingRecipe(<academy-craft:ac_Item_constPlate>, <ore:ingotConstraintMetal>);


//Bug fix
mods.thermalexpansion.Transposer.removeExtractRecipe(<academy-craft:ac_Item_energyUnit>);
mods.thermalexpansion.Transposer.removeFillRecipe(<academy-craft:ac_Item_energyUnit>, <liquid:imagproj>);

mods.thermalexpansion.Transposer.addExtractRecipe(1600, <academy-craft:ac_Item_energyUnit:0>, <liquid:imagproj> * 1000, <academy-craft:ac_Item_energyUnit:13>.withTag({energy: 0.0}), 100);