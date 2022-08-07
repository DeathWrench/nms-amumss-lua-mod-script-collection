NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"] 			= "FastOrganicFrigates.pak",
["MOD_AUTHOR"]				= "Lenni",
["NMS_VERSION"]				= "3.98",
["MOD_DESCRIPTION"]			= "Makes the Dream Aerial not useless",
["MODIFICATIONS"] 			= 
	{
		{
			["MBIN_CHANGE_TABLE"] 	=
			{ 
				{
					["MBIN_FILE_SOURCE"] 	= "METADATA\SIMULATION\MISSIONS\SPACEPOIMISSIONTABLE.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["SPECIAL_KEY_WORDS"]	=	{"MissionID", "BIO_FRIG"},
							["PRECEDING_KEY_WORDS"]	=	"CancelingConditions",
							["REMOVE"] = "SECTION",
						},
						{
							["SPECIAL_KEY_WORDS"]	=	{"MissionID", "BIO_FRIG", "Stage", "GcMissionSequenceCreateSpecificPulseEncounter.xml"},
							["VALUE_CHANGE_TABLE"]	=
							{
								{"PulseEncounterID", "BIO_FRIG"}
							}
						},
						
					},
				},
			}
		}
	}	
}