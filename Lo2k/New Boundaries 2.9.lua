NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"] 			= "New Boundaries 2.9.pak", 
["MOD_AUTHOR"]				= "Lo2k",
["LUA_AUTHOR"]				= "Lo2k",
["NMS_VERSION"]				= "4.20.1",
["MOD_DESCRIPTION"]			= "This mod extends photo and building modes boundaries",
["MODIFICATIONS"] 			= 
	{
		{
			["MBIN_CHANGE_TABLE"] 	= 
			{ 
				{
					["MBIN_FILE_SOURCE"] 	= "GCCAMERAGLOBALS.GLOBAL.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"PhotoModeMoveSpeed",	"20"},  -- original 11
								{"PhotoModeMaxDistance", "2000"}, -- original 150
								{"PhotoModeMaxDistanceSpace",	"2000"},  -- original 200
								{"BuildingModeMaxDistance", "2000"}, -- original 60
							},
						}					
					}
				}
			}
		}
	}	
}