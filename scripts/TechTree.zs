import minetweaker.item.IItemStack;
import minetweaker.oredict.IOreDictEntry;

//remove dark steel in dungen chest for gating.
vanilla.loot.removeChestLoot("dungeonChest", <EnderIO:itemAlloy:6>);

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