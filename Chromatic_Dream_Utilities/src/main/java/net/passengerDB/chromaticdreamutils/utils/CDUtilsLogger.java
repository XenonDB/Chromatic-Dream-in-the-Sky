package net.passengerDB.chromaticdreamutils.utils;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;

import cpw.mods.fml.common.FMLLog;

public class CDUtilsLogger {
	
	public static void log(String msg) {
		FMLLog.getLogger().info("[CDUtils]" + msg);
	}
	
}
