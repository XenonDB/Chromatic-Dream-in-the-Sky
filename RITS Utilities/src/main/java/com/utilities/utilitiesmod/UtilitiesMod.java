package com.utilities.utilitiesmod;

import net.minecraft.block.Block;
import net.minecraft.block.material.Material;
import net.minecraft.creativetab.CreativeTabs;
import net.minecraft.init.Blocks;
import net.minecraft.item.Item;
import net.minecraftforge.common.MinecraftForge;
import net.minecraftforge.event.entity.player.ArrowNockEvent;
import net.minecraftforge.event.entity.player.EntityItemPickupEvent;

import java.util.Random;

import cpw.mods.fml.common.Mod;
import cpw.mods.fml.common.Mod.EventHandler;
import cpw.mods.fml.common.event.FMLInitializationEvent;
import cpw.mods.fml.common.eventhandler.SubscribeEvent;
import cpw.mods.fml.common.registry.GameRegistry;

@Mod(modid = UtilitiesMod.MODID, version = UtilitiesMod.VERSION)
public class UtilitiesMod
{
    public static final String MODID = "utilitiesmod";
    public static final String VERSION = "1.0";
    
    @EventHandler
    public void init(FMLInitializationEvent event)
    {
    	Item yee = new ModItem("yee");
    	GameRegistry.registerItem(yee, "yee");
        System.out.println("DIRT BLOCK >> "+Blocks.dirt.getUnlocalizedName());
        Block yeeOre = new ModBlock(Material.rock, "yeeOre",yee);
        GameRegistry.registerBlock(yeeOre, "yeeOre");
    }
    public class ModBlock extends Block
    {
    	private Item toDrop;
        public ModBlock(Material material, String blockName,Item toDrop)
        {
            super(material);
            this.setBlockName(blockName);
            this.setBlockTextureName("utilitiesmod"+":"+blockName);
            this.setCreativeTab(CreativeTabs.tabBlock);
            this.setHardness(4.0F);
            this.setLightLevel(15.0F);
            this.setHarvestLevel("pickaxe", 1);
            this.toDrop = toDrop;
        }
        @Override
        public Item getItemDropped(int i, Random random, int j)
        {
            if(toDrop != null)
            {
                return toDrop;
            }
            else return Item.getItemFromBlock(this);
        }
    }
    private class ModItem extends Item
    {
        public ModItem(String itemName)
        {
            this.setUnlocalizedName(itemName);
            this.setTextureName("utilitiesmod"+":"+itemName);
            this.setCreativeTab(CreativeTabs.tabMisc);
        }

    }
    public static class StaticForgeEventHandler {
        @SubscribeEvent
        public static void arrowNocked(net.minecraftforge.event.entity.living.LivingDeathEvent  event) {
       
            System.out.println("Something Dead");
        }
    }
}
