ShipInfo = 	{
				{"GV",					"Golden Vector",			"1"},
				{"SERENITY",			"Serenity",					"3"},
				{"RAZORCREST",			"Razor Crest",				"6"},
				{"XWINGDARK",			"X-Wing Dark",				"51"},
				{"XWINGWHITE",			"X-Wing White",				"99"},
				{"JEDIINTERCEPTOR",		"Jedi Interceptor Yellow",	"59"},
				{"JEDIINTY",			"Jedi Interceptor Green",	"40"},
				{"JEDIINTYRED",			"Jedi Interceptor Red",		"36"},
				{"TIES",				"TIE Silencer",				"2"},
				{"TIEP",				"TIE Phantom",				"21"},
				{"TIED",				"TIE Defender",				"94"},
				{"TIEA",				"TIE Advanced",				"25"},
				{"TIEI",				"TIE Interceptor",			"30"},
				{"TIEIRED",				"TIE Interceptor Red",		"105"},
				{"TIEHU",				"TIE Hunter",				"75"},
				{"DROIDTRIFIGHTER",		"Droid Tri-Fighter",		"13"},
				{"IMPERIALSHUTTLE",		"Imperial Shuttle",			"31"},
				{"SWFURY",				"Sith Fury Interceptor",	"80"},
				{"FIRESPRAY",			"Slave I Firespray",		"55"},
				{"FIRESPRAYUA",			"Slave I Firespray UA",		"95"},
				{"YWINGB",				"Y-Wing BTL-B",				"100"},
				{"X70B",				"X-70B Phantom",			"110"},
				{"EWING",				"E-Wing",					"65"},
				{"VWING",				"V-Wing",					"104"},
				{"ENTERPRISE",			"Enterprise D",				"14"},
				{"DEFIANT",				"USS Defiant",				"20"},
				{"DANUBE",				"Danube Runabout",			"8"},
				{"FEDERATIONATTACK",	"Federation Attack Fighter","41"},
				{"BATWING",				"Batwing",					"4"},
				{"MILANO",				"Milano",					"64"},
				{"MILANOMARVEL",		"Captain Marvel Milano",	"61"},
				{"VIPERIIB",			"Viper Mk II",				"46"},
				{"B5STARFURY",			"Star Fury",				"109"},
				{"B5SHADOW",			"Shadow",					"60"},
				{"SWORDFISH",			"Swordfish II",				"16"},
				{"GUNDAMSAZABI",		"Gundam Sazabi",			"74"},
				{"GUNDAMSAZABIBLUE",	"Gundam Sazabi Blue",		"79"},
				{"GUNDAMSAZABIPINK",	"Gundam Sazabi Pink",		"85"},
				{"LEGOSPACEDARTI",		"LEGO Space Dart I",		"26"},
				{"LEGOSPACESCOOTER",	"LEGO Space Scooter",		"87"},
				{"PHANTOM",				"Phantom",					"50"},
				{"PELICAN",				"Pelican D77-TC",			"84"},
				{"TARDIS",				"T.A.R.D.I.S.",				"69"},
				{"HOCOTATE",			"Hocotate Rocket",			"115"},
				{"COSMOZERO",			"Yamato Cosmo Zero",		"45"},
				{"COSMOTIGERII",		"Yamato Cosmo Tiger II",	"90"},
				{"TRIMAX",				"Max",						"35"},
				{"METROID",				"Metroid Gunship",			"114"},
				{"STARVIPER",			"Star Viper",				"56"},
				{"BLADE",				"Blade Starship",			"89"},
				{"SR71",				"SR71 Blackbird",			"71"},
				{"POLICE",				"Police",					"5"},
				{"GASEOUSSENTIENCE",	"Gaseous Sentience",		"7"}, --WEIRDOBJECT5
				{"DRONE",				"Drone",					"9"},
				{"ATLASCORE",			"Atlas Core",				"10"},
				{"LIVINGMETALLOID",		"Living Metalloid",			"11"}, --WEIRDOBJECT2
				{"CORRUPTEDDRONE",		"Corrupted Drone",			"12"},
				{"DYSONLENS",			"Dyson Lens",				"17"},
				{"STELLARINT",			"Stellar Intelligence",		"15"}, --WEIRDOBJECT3
				{"IRONBOUNDRELIC",		"Ironbound Relic",			"66"}, --SPACEGYROSCOPE
			}

FilePath = "MODELS/COMMON/SPACECRAFT/FIGHTERS/FIGHTERCLASSICGOLD.SCENE.MBIN"

NewRewardEntry = ""
FinalRewardEntries = ""
NewEmoteEntry = ""
FinalEmoteEntries = ""
NewPCAnimEntry = ""
FinalPCAnimEntries = ""
NewPCTriggerEntry = ""
FinalPCTriggerEntries = ""


for i = 1,#ShipInfo do

	NewRewardEntry = [[
		<Property value="GcGenericRewardTableEntry.xml">
		  <Property name="Id" value="]]..ShipInfo[i][1]..[[" />
		  <Property name="List" value="GcRewardTableItemList.xml">
			<Property name="RewardChoice" value="Select" />
			<Property name="OverrideZeroSeed" value="False" />
			<Property name="List">
			  <Property value="GcRewardTableItem.xml">
				<Property name="PercentageChance" value="100" />
				<Property name="Reward" value="GcRewardSpecificShip.xml">
				  <Property name="ShipResource" value="GcResourceElement.xml">
					<Property name="Filename" value="]]..FilePath..[[" />
					<Property name="Seed" value="GcSeed.xml">
					  <Property name="Seed" value="]]..ShipInfo[i][3]..[[" />
					  <Property name="UseSeedValue" value="True" />
					</Property>
					<Property name="AltId" value="" />
					<Property name="ProceduralTexture" value="TkProceduralTextureChosenOptionList.xml">
					  <Property name="Samplers" />
					</Property>
				  </Property>
				  <Property name="ShipLayout" value="GcInventoryLayout.xml">
					<Property name="Slots" value="48" />
					<Property name="Seed" value="GcSeed.xml">
					  <Property name="Seed" value="1" />
					  <Property name="UseSeedValue" value="True" />
					</Property>
					<Property name="Level" value="1" />
				  </Property>
				  <Property name="ShipInventory" value="GcInventoryContainer.xml">
					<Property name="Slots">
					  <Property value="GcInventoryElement.xml">
						<Property name="Type" value="GcInventoryType.xml">
						  <Property name="InventoryType" value="Technology" />
						</Property>
						<Property name="Id" value="LAUNCHER_SPEC" />
						<Property name="Amount" value="200" />
						<Property name="MaxAmount" value="200" />
						<Property name="DamageFactor" value="0" />
						<Property name="FullyInstalled" value="True" />
						<Property name="Index" value="GcInventoryIndex.xml">
						  <Property name="X" value="-1" />
						  <Property name="Y" value="-1" />
						</Property>
					  </Property>
					  <Property value="GcInventoryElement.xml">
						<Property name="Type" value="GcInventoryType.xml">
						  <Property name="InventoryType" value="Technology" />
						</Property>
						<Property name="Id" value="SHIPJUMP_SPEC" />
						<Property name="Amount" value="200" />
						<Property name="MaxAmount" value="200" />
						<Property name="DamageFactor" value="0" />
						<Property name="FullyInstalled" value="True" />
						<Property name="Index" value="GcInventoryIndex.xml">
						  <Property name="X" value="-1" />
						  <Property name="Y" value="-1" />
						</Property>
					  </Property>
					  <Property value="GcInventoryElement.xml">
						<Property name="Type" value="GcInventoryType.xml">
						  <Property name="InventoryType" value="Technology" />
						</Property>
						<Property name="Id" value="PHOTONIX_CORE" />
						<Property name="Amount" value="-1" />
						<Property name="MaxAmount" value="100" />
						<Property name="DamageFactor" value="0" />
						<Property name="FullyInstalled" value="True" />
						<Property name="Index" value="GcInventoryIndex.xml">
						  <Property name="X" value="-1" />
						  <Property name="Y" value="-1" />
						</Property>
					  </Property>
					  <Property value="GcInventoryElement.xml">
						<Property name="Type" value="GcInventoryType.xml">
						  <Property name="InventoryType" value="Technology" />
						</Property>
						<Property name="Id" value="SOLAR_SAIL" />
						<Property name="Amount" value="-1" />
						<Property name="MaxAmount" value="100" />
						<Property name="DamageFactor" value="0" />
						<Property name="FullyInstalled" value="True" />
						<Property name="Index" value="GcInventoryIndex.xml">
						  <Property name="X" value="-1" />
						  <Property name="Y" value="-1" />
						</Property>
					  </Property>
					  <Property value="GcInventoryElement.xml">
						<Property name="Type" value="GcInventoryType.xml">
						  <Property name="InventoryType" value="Technology" />
						</Property>
						<Property name="Id" value="SHIPSHIELD" />
						<Property name="Amount" value="200" />
						<Property name="MaxAmount" value="200" />
						<Property name="DamageFactor" value="0" />
						<Property name="FullyInstalled" value="True" />
						<Property name="Index" value="GcInventoryIndex.xml">
						  <Property name="X" value="-1" />
						  <Property name="Y" value="-1" />
						</Property>
					  </Property>
					  <Property value="GcInventoryElement.xml">
						<Property name="Type" value="GcInventoryType.xml">
						  <Property name="InventoryType" value="Technology" />
						</Property>
						<Property name="Id" value="HYPERDRIVE_SPEC" />
						<Property name="Amount" value="120" />
						<Property name="MaxAmount" value="120" />
						<Property name="DamageFactor" value="0" />
						<Property name="FullyInstalled" value="True" />
						<Property name="Index" value="GcInventoryIndex.xml">
						  <Property name="X" value="-1" />
						  <Property name="Y" value="-1" />
						</Property>
					  </Property>
					  <Property value="GcInventoryElement.xml">
						<Property name="Type" value="GcInventoryType.xml">
						  <Property name="InventoryType" value="Technology" />
						</Property>
						<Property name="Id" value="HDRIVEBOOST3" />
						<Property name="Amount" value="-1" />
						<Property name="MaxAmount" value="100" />
						<Property name="DamageFactor" value="0" />
						<Property name="FullyInstalled" value="True" />
						<Property name="Index" value="GcInventoryIndex.xml">
						  <Property name="X" value="-1" />
						  <Property name="Y" value="-1" />
						</Property>
					  </Property>
					  <Property value="GcInventoryElement.xml">
						<Property name="Type" value="GcInventoryType.xml">
						  <Property name="InventoryType" value="Technology" />
						</Property>
						<Property name="Id" value="SHIPSHOTGUN" />
						<Property name="Amount" value="100" />
						<Property name="MaxAmount" value="100" />
						<Property name="DamageFactor" value="0" />
						<Property name="FullyInstalled" value="True" />
						<Property name="Index" value="GcInventoryIndex.xml">
						  <Property name="X" value="-1" />
						  <Property name="Y" value="-1" />
						</Property>
					  </Property>
					  <Property value="GcInventoryElement.xml">
						<Property name="Type" value="GcInventoryType.xml">
						  <Property name="InventoryType" value="Technology" />
						</Property>
						<Property name="Id" value="T_SHIP_GREEN" />
						<Property name="Amount" value="-1" />
						<Property name="MaxAmount" value="100" />
						<Property name="DamageFactor" value="0" />
						<Property name="FullyInstalled" value="True" />
						<Property name="Index" value="GcInventoryIndex.xml">
						  <Property name="X" value="-1" />
						  <Property name="Y" value="-1" />
						</Property>
					  </Property>
					  <Property value="GcInventoryElement.xml">
						<Property name="Type" value="GcInventoryType.xml">
						  <Property name="InventoryType" value="Technology" />
						</Property>
						<Property name="Id" value="SHIPSCAN_ECON" />
						<Property name="Amount" value="-1" />
						<Property name="MaxAmount" value="100" />
						<Property name="DamageFactor" value="0" />
						<Property name="FullyInstalled" value="True" />
						<Property name="Index" value="GcInventoryIndex.xml">
						  <Property name="X" value="-1" />
						  <Property name="Y" value="-1" />
						</Property>
					  </Property>
					</Property>
					<Property name="ValidSlotIndices" />
					<Property name="Class" value="GcInventoryClass.xml">
					  <Property name="InventoryClass" value="S" />
					</Property>
					<Property name="SubstanceMaxStorageMultiplier" value="0" />
					<Property name="ProductMaxStorageMultiplier" value="0" />
					<Property name="BaseStatValues" />
					<Property name="SpecialSlots" />
					<Property name="Width" value="7" />
					<Property name="Height" value="3" />
					<Property name="IsCool" value="False" />
					<Property name="Name" value="]]..ShipInfo[i][1]..[[" />
					<Property name="Version" value="0" />
				  </Property>
				  <Property name="ShipType" value="GcSpaceshipClasses.xml">
				    <Property name="ShipClass" value="Fighter" />
				  </Property>
				  <Property name="NameOverride" value="]]..ShipInfo[i][2]..[[" />
			 	  <Property name="IsGift" value="True" />
				  <Property name="IsRewardShip" value="True" />
				  <Property name="FormatAsSeasonal" value="False" />
			    </Property>
			  <Property name="LabelID" value="" />
			  </Property>
			</Property>
		  </Property>
		</Property>
	  ]]
	FinalRewardEntries = FinalRewardEntries..NewRewardEntry

	NewEmoteEntry = [[
	    <Property value="GcPlayerEmote.xml">
		  <Property name="Title" value="]]..ShipInfo[i][2]..[[" />
		  <Property name="ChatText" value="" />
		  <Property name="ChatUsesPrefix" value="False" />
		  <Property name="AnimationName" value="]]..ShipInfo[i][1]..[[" />
		  <Property name="Icon" value="TkTextureResource.xml">
			<Property name="Filename" value="TEXTURES/UI/FRONTEND/COMPONENTS/STAR.DDS" />
		  </Property>
		  <Property name="LinkedSpecialID" value="" />
		  <Property name="NeverShowInMenu" value="False" />
		  <Property name="LoopAnimUntilMove" value="" />
		  <Property name="CloseMenuOnSelect" value="False" />
		  <Property name="MoveToCancel" value="False" />
		  <Property name="GekAnimationName" value="" />
		  <Property name="GekLoopAnimUntilMove" value="" />
		  <Property name="AvailableUnderwater" value="False" />
		  <Property name="RidingAnimationName" value="YWING" />
		  <Property name="IsPetCommand" value="False" />
		  <Property name="PetCommandTitle" value="" />
		  <Property name="PetCommandIcon" value="TkTextureResource.xml">
			<Property name="Filename" value="" />
		  </Property>
		</Property>
      ]]
	FinalEmoteEntries = FinalEmoteEntries..NewEmoteEntry

	NewPCAnimEntry = [[
        <Property value="TkAnimationData.xml">
          <Property name="Anim" value="]]..ShipInfo[i][1]..[[" />
          <Property name="Filename" value="MODELS/COMMON/PLAYER/PLAYERCHARACTER/ANIMS/EMOTES/NULL.ANIM.MBIN" />
          <Property name="AnimType" value="OneShot" />
          <Property name="FrameStart" value="0" />
          <Property name="FrameEnd" value="0" />
          <Property name="StartNode" value="" />
          <Property name="ExtraStartNodes" />
          <Property name="Priority" value="0" />
          <Property name="OffsetMin" value="0" />
          <Property name="OffsetMax" value="0" />
          <Property name="Delay" value="0" />
          <Property name="Speed" value="1" />
          <Property name="ActionStartFrame" value="0" />
          <Property name="ActionFrame" value="-1" />
          <Property name="CreatureSize" value="AllSizes" />
          <Property name="Additive" value="False" />
          <Property name="Mirrored" value="False" />
          <Property name="Active" value="True" />
          <Property name="AdditiveBaseAnim" value="" />
          <Property name="AdditiveBaseFrame" value="0" />
          <Property name="GameData" value="TkAnimationGameData.xml">
            <Property name="RootMotionEnabled" value="False" />
            <Property name="BlockPlayerMovement" value="False" />
            <Property name="BlockPlayerWeapon" value="Unblocked" />
          </Property>
        </Property>
	  ]]
	FinalPCAnimEntries = FinalPCAnimEntries..NewPCAnimEntry

	NewPCTriggerEntry = [[
		<Property value="GcTriggerActionComponentData.xml">
		  <Property name="HideModel" value="False" />
		  <Property name="StartInactive" value="False" />
		  <Property name="States">
			<Property value="GcActionTriggerState.xml">
			  <Property name="StateID" value="BOOT" />
			  <Property name="Triggers">
				<Property value="GcActionTrigger.xml">
				  <Property name="Event" value="GcAnimFrameEvent.xml">
					<Property name="Anim" value="]]..ShipInfo[i][1]..[[" />
					<Property name="FrameStart" value="0" />
					<Property name="StartFromEnd" value="False" />
				  </Property>
				  <Property name="Action">
					<Property value="GcRewardAction.xml">
					  <Property name="Reward" value="]]..ShipInfo[i][1]..[[" />
					</Property>
				  </Property>
				</Property>
			  </Property>
			</Property>
		  </Property>
		  <Property name="Persistent" value="False" />
		  <Property name="PersistentState" value="" />
		  <Property name="ResetShotTimeOnStateChange" value="False" />
		  <Property name="LinkStateToBaseGrid" value="False" />
		</Property>
	  ]]
	FinalPCTriggerEntries = FinalPCTriggerEntries..NewPCTriggerEntry

end




NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"] 			= "gShip Custom Summoner S 388a.pak",
["MOD_AUTHOR"]				= "Gumsk, based almost entirely on Mjjstral's action LUAs",
["MOD_DESCRIPTION"]			= "Adds summoning quick actions for gShip Custom ships",
["NMS_VERSION"]				= "3.88",
["MODIFICATIONS"] 			= 
	{
		{
			["MBIN_CHANGE_TABLE"] 	= 
			{  
				{
					["MBIN_FILE_SOURCE"] 	= "MODELS\COMMON\PLAYER\PLAYERCHARACTER\PLAYERCHARACTER\ENTITIES\PLAYERCHARACTER.ENTITY.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["SPECIAL_KEY_WORDS"]   = {"Filename","MODELS/COMMON/PLAYER/PLAYERCHARACTER/ANIMS/EMOTES/0H_EMOTE_CALL_PET.ANIM.MBIN"}, 
							["REPLACE_TYPE"]        = "ADDAFTERSECTION",
							["ADD"] 				= FinalPCAnimEntries
						},
						{
							["PRECEDING_KEY_WORDS"] = {"LodDistances"}, 
							["LINE_OFFSET"] 		= "-2",
							["ADD"] 				= FinalPCTriggerEntries
						}
					}
				},
				{
					["MBIN_FILE_SOURCE"] 	= "METADATA\UI\EMOTEMENU.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["PRECEDING_KEY_WORDS"] = {"Emotes"}, 
							["LINE_OFFSET"] 		= "+0",
							["ADD"] 				= FinalEmoteEntries
						}
					}
				},
				{
					["MBIN_FILE_SOURCE"] 	= "METADATA\REALITY\TABLES\REWARDTABLE.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["PRECEDING_KEY_WORDS"] = {"GenericTable"}, 
							["LINE_OFFSET"] 		= "+0",
							["ADD"] 				= FinalRewardEntries
						}
					}
				}
			}
		}
	},
["ADD_FILES"] = 
	{
		{
			["FILE_DESTINATION"] = [[MODELS/COMMON/PLAYER/PLAYERCHARACTER/ANIMS/EMOTES/NULL.ANIM.EXML]],
			["FILE_CONTENT"] 	 = 
[[
<?xml version="1.0" encoding="utf-8"?>
<Data template="TkAnimMetadata">
  <Property name="FrameCount" value="10" />
  <Property name="NodeCount" value="0" />
  <Property name="NodeData" /> 
  <Property name="AnimFrameData">
    <Property value="TkAnimNodeFrameData.xml">
    <Property name="Rotations" />  
	<Property name="Translations" /> 
	<Property name="Scales" />
    </Property>  
  </Property>	
  <Property name="StillFrameData" value="TkAnimNodeFrameData.xml">
    <Property name="Rotations" />  
	<Property name="Translations" /> 
	<Property name="Scales" />	  
 </Property>
</Data>	
]]			
		}
	}
}
