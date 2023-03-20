NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"] 			= "ExoSpeedIncrease_NoMECHchanges.pak",
["MOD_AUTHOR"]				= "Viking",
["NMS_VERSION"]				= "4.14",
["MODIFICATIONS"] 			= 
	{
		{
			["PAK_FILE_SOURCE"] 	= "NMSARC.59B126E2.pak",
			["MBIN_CHANGE_TABLE"] 	= 
			{ 
				{
					["MBIN_FILE_SOURCE"] 	= "GCVEHICLEGLOBALS.GLOBAL.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["PRECEDING_KEY_WORDS"] = {},
						
							["VALUE_CHANGE_TABLE"] 	= 
							{
								--{"MechJetpackMaxSpeed",		"60"}, 	-- Original "20"
								--{"MechJetpackMaxUpSpeed",	"60"}, 	-- Original "20"
								--{"MechJetpackDrainRate",	".4"}, 	-- Original ".5"
								--{"MechJetpackFillRate",		"0.5"}, 	-- Original ".5"
								--{"MechJetpackTurnSpeed",		"6"}, 	-- Original "3"
								{"TopSpeedForward",				"48"}, 	-- Original "16"
								{"UnderwaterEngineMaxSpeed",	"45"} 	-- Original "15"
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = { "Name", "MECH" },
							--["PRECEDING_KEY_WORDS"] = { "Name", "MECH" },
						
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"TopSpeedForward",				"2"}, 	-- Original "2"
								{"UnderwaterEngineMaxSpeed",	"15"}, 	-- Original "15"

							}
						}
					} 
				}
			}
		}
	}	
}
--NOTE: ANYTHING NOT in table NMS_MOD_DEFINITION_CONTAINER IS IGNORED AFTER THE SCRIPT IS LOADED
--IT IS BETTER TO ADD THINGS AT THE TOP IF YOU NEED TO
--DON'T ADD ANYTHING PASS THIS POINT HERE