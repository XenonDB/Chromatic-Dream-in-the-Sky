package net.passengerDB.chromaticdreamutils.register;

import net.passengerDB.chromaticdreamutils.utils.CDUtilsLogger;
import vazkii.botania.api.BotaniaAPI;

public class Botania {

	private static boolean inited = false;
	
	public static void init() {
		if(inited) return;
		registerOrechidNetherRecipe();
		
		CDUtilsLogger.log("Successfully register addition Botania recipes.");
		inited = true;
	}
	
	private static void registerOrechidNetherRecipe() {
		BotaniaAPI.addOreWeightNether("oreChroFirestone", 3920);
		BotaniaAPI.addOreWeightNether("oreChroThermitic", 3920);
	}
	
}
