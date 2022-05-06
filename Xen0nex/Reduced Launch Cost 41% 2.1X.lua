--Making the default survival cost 41 means that normally, regular ships still get 2 launches, shuttles get 3, and explorers get 4. However With the -20% launch cost tech, they each go up by 1 launch per refuel (3, 4, and 5 launches per refuel).

NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"] 			= "Reduced Launch Cost 41% 2.1X.pak", 
["MOD_AUTHOR"]				= "Lo2k",				--Edited by Xen0nex
["NMS_VERSION"]				= "3.81",
["MOD_DESCRIPTION"]			= "This mods makes each launch costing 10% instead of 25% ",
["MODIFICATIONS"] 			= 
	{
		{
			["MBIN_CHANGE_TABLE"] 	= 
			{ 
				{
					["MBIN_FILE_SOURCE"] 	= "METADATA\REALITY\TABLES\NMS_REALITY_GCTECHNOLOGYTABLE.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["SPECIAL_KEY_WORDS"] = {"ID", "LAUNCHER"},
							["PRECEDING_KEY_WORDS"] = {"Ship_Launcher_TakeOffCost"},
							["SECTION_UP"] = 1,
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Bonus",	"41"}			--50	(20)
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"ID", "LAUNCHER_ALIEN"},
							["PRECEDING_KEY_WORDS"] = {"Ship_Launcher_TakeOffCost"},
							["SECTION_UP"] = 1,
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Bonus",	"41"}			--50	(20)
							}
						}
					}
				}	
			}
		}
	}	
}