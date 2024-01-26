-- THIS script FORCES MapFileTree files to be UPDATED
--     without having to run any other script

-- add / delete, as you like, any MBIN file reference below to suit your requirements

NMS_MOD_DEFINITION_CONTAINER = 
{
  ["MOD_FILENAME"] 			= "", --EMPTY string, no pak is created because EXML_CHANGE_TABLE does not exist
  ["MOD_DESCRIPTION"]		= "Refresh MapFileTree files to latest version",
  ["MOD_AUTHOR"]				= "Wbertro",
  ["NMS_VERSION"]				= "ALL",
  ["MODIFICATIONS"] 		=
	{
		{
			["MBIN_CHANGE_TABLE"] = 
			{ 
				{
					["MBIN_FILE_SOURCE"] 	= --add / delete any MBIN file reference below to suit your requirements
          {
            "GCAISPACESHIPGLOBALS.GLOBAL.MBIN",
            "GCATLASGLOBALS.GLOBAL.MBIN",
            "GCAUDIOGLOBALS.GLOBAL.MBIN",
            "GCBUILDINGGLOBALS.GLOBAL.MBIN",
            "GCCAMERAGLOBALS.GLOBAL.MBIN",
            "GCCHARACTERGLOBALS.GLOBAL.MBIN",
            "GCCREATUREGLOBALS.MBIN",
            "GCDEBUGOPTIONS.GLOBAL.MBIN",
            "GCENVIRONMENTGLOBALS.GLOBAL.MBIN",
            "GCFLEETGLOBALS.GLOBAL.MBIN",
            "GCGALAXYGLOBALS.GLOBAL.MBIN",
            "GCGAMEPLAYGLOBALS.GLOBAL.MBIN",
            "GCGRAPHICSGLOBALS.GLOBAL.MBIN",
            "GCMULTIPLAYERGLOBALS.GLOBAL.MBIN",
            "GCPLACEMENTGLOBALS.MBIN",
            "GCPLAYERGLOBALS.GLOBAL.MBIN",
            "GCRICHPRESENCEGLOBALS.MBIN",
            "GCROBOTGLOBALS.MBIN",
            -- "GCSCENEOPTIONS.GLOBAL.MBIN", -- HG is not updating/using this file anymore
            "GCSCRATCHPADGLOBALS.GLOBAL.MBIN",
            "GCSIMULATIONGLOBALS.GLOBAL.MBIN",
            "GCSKYGLOBALS.GLOBALS.MBIN",
            "GCSMOKETESTOPTIONS.GLOBAL.MBIN",
            "GCSOLARGENERATIONGLOBALS.GLOBAL.MBIN",
            "GCSPACESHIPGLOBALS.GLOBAL.MBIN",
            "GCTERRAINGLOBALS.GLOBAL.MBIN",
            "GCUIGLOBALS.GLOBAL.MBIN",
            "GCVEHICLEGLOBALS.GLOBAL.MBIN",
            "GCWATERGLOBALS.GLOBAL.MBIN",
            "METADATA/REALITY/TABLES/INVENTORYTABLE.MBIN",
            "METADATA/REALITY/TABLES/BASEBUILDINGOBJECTSTABLE.MBIN",
            "METADATA/REALITY/TABLES/REWARDTABLE.MBIN",
            "METADATA/REALITY/TABLES/NMS_REALITY_GCPRODUCTTABLE.MBIN",
            "LANGUAGE/NMS_LOC1_ENGLISH.MBIN",
            "LANGUAGE/NMS_LOC4_ENGLISH.MBIN",
            "LANGUAGE/NMS_LOC5_ENGLISH.MBIN",
            "LANGUAGE/NMS_LOC6_ENGLISH.MBIN",
            "LANGUAGE/NMS_LOC7_ENGLISH.MBIN",
            "LANGUAGE/NMS_LOC8_ENGLISH.MBIN",
            "LANGUAGE/NMS_UPDATE3_ENGLISH.MBIN",
          },
				},
			}
		}, --0 global replacements
	}
}
--NOTE: ANYTHING NOT in table NMS_MOD_DEFINITION_CONTAINER IS IGNORED AFTER THE SCRIPT IS LOADED
