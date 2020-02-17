import minetweaker.item.IItemStack;
import minetweaker.oredict.IOreDictEntry;

//let botania start from Witchcraft:Herbology. However you can still find lexica Botania in dungen.
vanilla.loot.addChestLoot("dungeonChest", <witchery:ingredient:81>.weight(12));

//add AE2 inscriber press pattern into loot chest.
vanilla.loot.addChestLoot("dungeonChest", (<IC2:itemcrystalmemory>.withTag({Pattern: {id: 4164 as short, Count: 1 as byte, Damage: 19 as short}})).weight(6));
vanilla.loot.addChestLoot("dungeonChest", (<IC2:itemcrystalmemory>.withTag({Pattern: {id: 4164 as short, Count: 1 as byte, Damage: 13 as short}})).weight(6));
vanilla.loot.addChestLoot("dungeonChest", (<IC2:itemcrystalmemory>.withTag({Pattern: {id: 4164 as short, Count: 1 as byte, Damage: 14 as short}})).weight(6));
vanilla.loot.addChestLoot("dungeonChest", (<IC2:itemcrystalmemory>.withTag({Pattern: {id: 4164 as short, Count: 1 as byte, Damage: 15 as short}})).weight(6));

//remove TC shards hammer recipes
mods.exnihilo.Hammer.removeRecipe(<minecraft:double_stone_slab:1>);
mods.exnihilo.Hammer.removeRecipe(<minecraft:nether_brick>);
mods.exnihilo.Hammer.removeRecipe(<minecraft:ice>);
mods.exnihilo.Hammer.removeRecipe(<minecraft:grass>);
mods.exnihilo.Hammer.removeRecipe(<minecraft:double_stone_slab>);
mods.exnihilo.Hammer.removeRecipe(<minecraft:tnt>);

//ore related
val orechros = [
<ChromatiCraft:chromaticraft_block_tieredore>, 
<ChromatiCraft:chromaticraft_block_tieredore:1>, 
<ChromatiCraft:chromaticraft_block_tieredore:2>, 
<ChromatiCraft:chromaticraft_block_tieredore:3>, 
<ChromatiCraft:chromaticraft_block_tieredore:4>, 
<ChromatiCraft:chromaticraft_block_tieredore:5>, 
<ChromatiCraft:chromaticraft_block_tieredore:6>, 
<ChromatiCraft:chromaticraft_block_tieredore:7>, 
<ChromatiCraft:chromaticraft_block_tieredore:8>, 
<ChromatiCraft:chromaticraft_block_tieredore:13>, 
<ChromatiCraft:chromaticraft_block_tieredore:14>] as IItemStack[];

val dictchros = [
<ore:oreChroEnergized>,
<ore:oreChroElemental>,
<ore:oreChroFusedCrystal>,
<ore:oreChroRadiant>,
<ore:oreChroEnder>,
<ore:oreChroFluid>,
<ore:oreChroFiraxite>,
<ore:oreChroGlowing>,
<ore:oreChroEchostone>,
<ore:oreChroLumenite>,
<ore:oreChroAvolite>] as IOreDictEntry[];

for i,dictchro in dictchros{
	dictchro.add(orechros[i]);
	mods.botania.Orechid.addOre(dictchro, 1285);
}

val orechroFirestone = <ore:oreChroFirestone>;
orechroFirestone.add(<ChromatiCraft:chromaticraft_block_tieredore:9>);
val orechroThermitic = <ore:oreChroThermitic>;
orechroThermitic.add(<ChromatiCraft:chromaticraft_block_tieredore:10>);

val orechroVibrantCrystal = <ore:orechroVibrantCrystal>;
orechroVibrantCrystal.add(<ChromatiCraft:chromaticraft_block_tieredore:11>);
val orechroVoidStone = <ore:orechroVoidStone>;
orechroVoidStone.add(<ChromatiCraft:chromaticraft_block_tieredore:12>);

//sieve related
mods.exnihilo.Sieve.removeRecipe(<minecraft:stone>);
mods.exnihilo.Sieve.addRecipe(<minecraft:stone>, <TConstruct:ore.berries.one:8>, 96);
mods.exnihilo.Sieve.addRecipe(<minecraft:stone>, <TConstruct:ore.berries.one:9>, 96);
mods.exnihilo.Sieve.addRecipe(<minecraft:stone>, <TConstruct:ore.berries.one:10>, 96);
mods.exnihilo.Sieve.addRecipe(<minecraft:stone>, <TConstruct:ore.berries.one:11>, 96);
mods.exnihilo.Sieve.addRecipe(<minecraft:stone>, <TConstruct:ore.berries.two:9>, 128);
mods.exnihilo.Sieve.addRecipe(<minecraft:stone>, [<exastris:chiselStone>, <exastris:chiselStone>, <exastris:chiselStone>, <exastris:chiselStone>], [1, 2, 4, 16]); 
mods.exnihilo.Sieve.addRecipe(<minecraft:stone>, [<exastris:chiselStone:1>, <exastris:chiselStone:1>, <exastris:chiselStone:1>, <exastris:chiselStone:1>], [1, 2, 4, 16]); 

mods.exnihilo.Sieve.removeRecipe(<minecraft:dirt>);
mods.exnihilo.Sieve.addRecipe(<minecraft:dirt>, [<exnihilo:stone>, <exnihilo:stone>, <exnihilo:stone>, <exnihilo:stone>, <exnihilo:stone>, <exnihilo:stone>, <minecraft:wheat_seeds>, <AgriCraft:seedCarrot>], [1, 1, 2, 2, 3, 3, 14, 15]); 

mods.exnihilo.Sieve.removeRecipe(<minecraft:gravel>);
mods.exnihilo.Sieve.addRecipe(<minecraft:gravel>, <minecraft:flint>, 4);
mods.exnihilo.Sieve.addRecipe(<minecraft:gravel>, <minecraft:coal>, 8);
mods.exnihilo.Sieve.addRecipe(<minecraft:gravel>, <minecraft:dye:4>, 20);
mods.exnihilo.Sieve.addRecipe(<minecraft:gravel>, <minecraft:diamond>, 128);
mods.exnihilo.Sieve.addRecipe(<minecraft:gravel>, <minecraft:emerald>, 150);
mods.exnihilo.Sieve.addRecipe(<minecraft:gravel>, <Forestry:apatite>, 32);
mods.exnihilo.Sieve.addRecipe(<minecraft:gravel>, <IC2:itemCrushedOre>, 10);
mods.exnihilo.Sieve.addRecipe(<minecraft:gravel>, <IC2:itemCrushedOre:2>, 64);
mods.exnihilo.Sieve.addRecipe(<minecraft:gravel>, <IC2:itemCrushedOre:1>, 36);
mods.exnihilo.Sieve.addRecipe(<minecraft:gravel>, <IC2:itemCrushedOre:3>, 32);
mods.exnihilo.Sieve.addRecipe(<minecraft:gravel>, <IC2:itemCrushedOre:6>, 64);
mods.exnihilo.Sieve.addRecipe(<minecraft:gravel>, <aobd:crushedConstraintMetal>, 40);
mods.exnihilo.Sieve.addRecipe(<minecraft:gravel>, <aobd:crushedImagSilicon>, 40);

mods.exnihilo.Sieve.removeRecipe(<minecraft:sand>);
mods.exnihilo.Sieve.addRecipe(<minecraft:sand>, <minecraft:dye:3>, 32);
mods.exnihilo.Sieve.addRecipe(<minecraft:sand>, <exnihilo:seed_cactus>, 32);
mods.exnihilo.Sieve.addRecipe(<minecraft:sand>, <appliedenergistics2:item.ItemMultiMaterial>, 6);

mods.exnihilo.Sieve.removeRecipe(<exnihilo:dust>);
mods.exnihilo.Sieve.addRecipe(<exnihilo:dust>, <minecraft:dye:15>, 8);
mods.exnihilo.Sieve.addRecipe(<exnihilo:dust>, <minecraft:redstone>, 8);
mods.exnihilo.Sieve.addRecipe(<exnihilo:dust>, <minecraft:gunpowder>, 15);
mods.exnihilo.Sieve.addRecipe(<exnihilo:dust>, <appliedenergistics2:item.ItemMultiMaterial:45>, 8);

mods.exnihilo.Sieve.removeRecipe(<exnihilo:exnihilo.gravel_nether>);
mods.exnihilo.Sieve.addRecipe(<exnihilo:exnihilo.gravel_nether>, <exnihilo:exnihilo.nether_iron_broken>, 6);
mods.exnihilo.Sieve.addRecipe(<exnihilo:exnihilo.gravel_nether>, <exnihilo:exnihilo.nether_gold_broken>, 6);
mods.exnihilo.Sieve.addRecipe(<exnihilo:exnihilo.gravel_nether>, <exnihilo:exnihilo.nether_copper_broken>, 10);

mods.exnihilo.Sieve.removeRecipe(<exnihilo:exnihilo.gravel_ender>);
mods.exnihilo.Sieve.addRecipe(<exnihilo:exnihilo.gravel_ender>, <exnihilo:exnihilo.ender_tin_broken>, 10);
mods.exnihilo.Sieve.addRecipe(<exnihilo:exnihilo.gravel_ender>, <exnihilo:exnihilo.ender_lead_broken>, 6);

//excavator
mods.immersiveengineering.Excavator.removeMineral("Bauxite");
mods.immersiveengineering.Excavator.addMineral("Bauxite", 20, 0.2, ["oreAluminum", "oreTitanium", "denseoreAluminum"], [0.9, 0.05, 0.05], [-37], false);
mods.immersiveengineering.Excavator.removeMineral("Iron");
mods.immersiveengineering.Excavator.addMineral("Iron", 25, 0.1, ["oreIron", "oreNickel", "oreTin", "denseoreIron"], [0.5, 0.25, 0.2, 0.05], [-37], false);
mods.immersiveengineering.Excavator.removeMineral("Magnetite");
mods.immersiveengineering.Excavator.addMineral("Magnetite", 25, 0.1, ["oreIron", "oreGold"], [0.85, 0.15], [-37], false);
mods.immersiveengineering.Excavator.removeMineral("Pyrite");
mods.immersiveengineering.Excavator.addMineral("Pyrite", 20, 0.1, ["oreIron", "oreSulfur"], [0.5, 0.5], [-37], false);
mods.immersiveengineering.Excavator.removeMineral("Copper");
mods.immersiveengineering.Excavator.addMineral("Copper", 30, 0.2, ["oreCopper", "oreGold", "oreNickel", "denseoreCopper"], [0.65, 0.25, 0.05, 0.05], [-37], false);
mods.immersiveengineering.Excavator.removeMineral("Cassiterite");
mods.immersiveengineering.Excavator.addMineral("Cassiterite", 15, 0.2, ["oreTin", "denseoreTin"], [0.95, 0.05], [-37], false);
mods.immersiveengineering.Excavator.removeMineral("Gold");
mods.immersiveengineering.Excavator.addMineral("Gold", 20, 0.3, ["oreGold", "oreCopper", "oreNickel", "denseoreGold"], [0.65, 0.25, 0.05, 0.05], [-37], false);
mods.immersiveengineering.Excavator.removeMineral("Nickel");
mods.immersiveengineering.Excavator.addMineral("Nickel", 20, 0.3, ["oreNickel", "orePlatinum", "oreIron", "denseoreNickel"], [0.85, 0.05, 0.05, 0.05], [-37], false);
mods.immersiveengineering.Excavator.removeMineral("Platinum");
mods.immersiveengineering.Excavator.addMineral("Platinum", 5, 0.35, ["orePlatinum", "oreNickel", "", "oreIridium", "denseorePlatinum"], [0.4, 0.3, 0.15, 0.1, 0.05], [-37], false);
mods.immersiveengineering.Excavator.removeMineral("Uranium");
mods.immersiveengineering.Excavator.addMineral("Uranium", 10, 0.35, ["oreUranium", "oreLead", "orePlutonium", "denseoreUranium"], [0.55, 0.3, 0.1, 0.05], [-37], false);
mods.immersiveengineering.Excavator.removeMineral("Quartzite");
mods.immersiveengineering.Excavator.addMineral("Quartzite", 5, 0.3, ["oreQuartz", "oreCertusQuartz"], [0.6, 0.4], [-37], false);
mods.immersiveengineering.Excavator.removeMineral("Galena");
mods.immersiveengineering.Excavator.addMineral("Galena", 15, 0.2, ["oreLead", "oreSilver", "oreSulfur", "denseoreLead", "denseoreSilver"], [0.4, 0.4, 0.1, 0.05, 0.05], [-37], false);
mods.immersiveengineering.Excavator.removeMineral("Lead");
mods.immersiveengineering.Excavator.addMineral("Lead", 10, 0.15, ["oreLead", "oreSilver", "denseoreLead"], [0.55, 0.4, 0.05], [-37], false);
mods.immersiveengineering.Excavator.removeMineral("Silver");
mods.immersiveengineering.Excavator.addMineral("Silver", 10, 0.2, ["oreSilver", "oreLead", "denseoreSilver"], [0.55, 0.4, 0.05], [-37], false);
mods.immersiveengineering.Excavator.removeMineral("Lapis");
mods.immersiveengineering.Excavator.addMineral("Lapis", 10, 0.2, ["oreLapis", "oreIron", "oreSulfur", "denseoreLapis"], [0.65, 0.275, 0.025, 0.05], [-37], false);
mods.immersiveengineering.Excavator.removeMineral("Coal");
mods.immersiveengineering.Excavator.addMineral("Coal", 25, 0.1, ["oreCoal", "denseoreCoal", "oreDiamond", "oreEmerald"], [0.92, 0.1, 0.015, 0.015], [-37], false);

mods.immersiveengineering.Excavator.addMineral("Unstable Space", 40, 0.1, ["oreChroThermitic", "orechroVibrantCrystal", "orechroVoidStone"], [0.6, 0.2, 0.2], [-37], false);
mods.immersiveengineering.Excavator.addMineral("Overflowing Lumen", 100, 0.0, 
["oreCoal", "oreLapis", "oreRedstone", "oreDiamond", "oreEmerald", "oreIron", "oreGold", "oreCopper", "oreTin", "oreLead", "oreConstraintMetal", "oreImagSilicon", "oreAluminum", "oreNickel", "orePlatinum", "oreSilver", "oreUranium", "oreChargedCertusQuartz", "oreImagCrystal", "oreResonantCyrstal", "oreOsmium", "oreMithril"], 
[100, 12, 12, 10, 4, 60, 12, 30, 20, 20, 15, 15, 40, 15, 2, 10, 15, 2, 8, 8, 25, 1], [-37], true);

