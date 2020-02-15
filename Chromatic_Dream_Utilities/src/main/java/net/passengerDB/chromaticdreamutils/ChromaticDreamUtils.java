package net.passengerDB.chromaticdreamutils;

import cpw.mods.fml.common.Mod;
import cpw.mods.fml.common.Mod.EventHandler;
import cpw.mods.fml.common.event.FMLInitializationEvent;
import net.passengerDB.chromaticdreamutils.events.GeneralHandler;
import net.passengerDB.chromaticdreamutils.register.Botania;
import cpw.mods.fml.common.FMLCommonHandler;

@Mod(modid = ChromaticDreamUtils.MODID, version = ChromaticDreamUtils.VERSION, dependencies="required-after:Botania")
public class ChromaticDreamUtils
{
    public static final String MODID = "chromaticdreamutils";
    public static final String VERSION = "1.0";
    
    @EventHandler
    public void init(FMLInitializationEvent event)
    {
		Botania.init();
		FMLCommonHandler.instance().bus().register(GeneralHandler.handler);
    }
}
