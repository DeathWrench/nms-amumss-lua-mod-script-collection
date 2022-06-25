NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"] 			= "Quick Machineries.pak", 
["MOD_AUTHOR"]				= "Lo2k",
["NMS_VERSION"]				= "3.93",
["MOD_DESCRIPTION"]			= "This mod opens machineries in 1-click",
["MODIFICATIONS"] 			= 
	{
		{
			["MBIN_CHANGE_TABLE"] 	= 
			{ 
				{
					["MBIN_FILE_SOURCE"] 	= "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\DEBRIS\PARTS\DEBRILARGECONTAINER\ENTITIES\TECHDEBRIS.ENTITY.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"CompletionRequirement",	"NoRequirement"}		-- Original "EmptySlot"   
							}
						},
					}
				}	
			}
		}
	}	
}