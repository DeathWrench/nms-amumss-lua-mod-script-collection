ModName         =   "_MPDebris"
ModAuthor       =   "Knightmare077"
LuaAuthor       =   "Babscoole & Hypn0tick"
BaseDescription =   "Spawns more debris and keeps it around longer."
GameVersion     =   "4.25"
ModVersion      =   "0.9c"

NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]    = "_"..ModName.."_"..ModVersion..".pak",
["MOD_DESCRIPTION"] = BaseDescription,
["MOD_AUTHOR"]      = ModAuthor,
["LUA_AUTHOR"]      = LuaAuthor,
["NMS_VERSION"]     = GameVersion,
["MODIFICATIONS"]   =
    {
        {
            ["MBIN_CHANGE_TABLE"] =
            {
                {
                    ["MBIN_FILE_SOURCE"] = "METADATA/EFFECTS/EXPLOSIONTABLE.MBIN",
                    ["EXML_CHANGE_TABLE"] = 
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "GROUNDEXPLODE"},
                            ["VALUE_CHANGE_TABLE"] = 
                            {
                                {"Number", "7"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "SPARKSSLOW"},
                            ["INTEGER_TO_FLOAT"] = "FORCE",
                            ["VALUE_CHANGE_TABLE"] = 
                            {
                                {"Life", "3"}
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "CARGOEXPLOSION",},
                            ["PRECEDING_KEY_WORDS"] = {"Debris"},	
                            ["CREATE_HOS"] = "TRUE",
                            ["ADD"] =
[[
        <Property value="GcDebrisData.xml">
          <Property name="Filename" value="TkModelResource.xml">
            <Property name="Filename" value="MODELS/EFFECTS/DEBRIS/SHIPEXPLMODELDEBRISB.SCENE.MBIN" />
            <Property name="ResHandle" value="GcResource.xml">
              <Property name="ResourceID" value="0" />
            </Property>
          </Property>
          <Property name="Number" value="8" />
          <Property name="Radius" value="85" />
          <Property name="Scale" value="7" />
          <Property name="Speed" value="800" />
          <Property name="AnglularSpeed" value="30" />
          <Property name="OverrideSeed" value="GcSeed.xml">
            <Property name="Seed" value="0" />
            <Property name="UseSeedValue" value="False" />
          </Property>
        </Property>
        <Property value="GcDebrisData.xml">
          <Property name="Filename" value="TkModelResource.xml">
            <Property name="Filename" value="MODELS/EFFECTS/DEBRIS/SHIPEXPLMODELDEBRISC.SCENE.MBIN" />
            <Property name="ResHandle" value="GcResource.xml">
              <Property name="ResourceID" value="0" />
            </Property>
          </Property>
          <Property name="Number" value="7" />
          <Property name="Radius" value="24" />
          <Property name="Scale" value="7" />
          <Property name="Speed" value="700" />
          <Property name="AnglularSpeed" value="25" />
          <Property name="OverrideSeed" value="GcSeed.xml">
            <Property name="Seed" value="0" />
            <Property name="UseSeedValue" value="False" />
          </Property>
        </Property>
]]
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "CARGOEXPL_FINAL"},
                            ["VALUE_CHANGE_TABLE"] = 
                            {
                                {"Life", "120"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "CARGOEXPL_FINAL",},
							["PRECEDING_KEY_WORDS"] = {"GcDebrisData.xml"},
                            ["VALUE_CHANGE_TABLE"] = 
                            {
                                {"Number", "11"},
                                {"Radius", "40"},
                                {"Scale",  "6"},
                                {"Speed",  "900"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "CARGOEXPL_FINAL",},
							["PRECEDING_KEY_WORDS"] = {"GcDebrisData.xml","GcDebrisData.xml"},
                            ["VALUE_CHANGE_TABLE"] = 
                            {
                                {"Radius", "30"},
                                {"Scale",  "7"},
                                {"Speed",  "800"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "CARGOEXPL_FINAL",},
							["PRECEDING_KEY_WORDS"] = {"GcDebrisData.xml","GcDebrisData.xml","GcDebrisData.xml"},
                            ["VALUE_CHANGE_TABLE"] = 
                            {
                                {"Number", "3"},
                                {"Radius", "35"},
                                {"Scale",  "6"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "CARGOEXPL_FINAL",},
							["PRECEDING_KEY_WORDS"] = {"GcDebrisData.xml","GcDebrisData.xml","GcDebrisData.xml","Filename"},
                            ["LINE_OFFSET"] = "+1",
                            ["VALUE_CHANGE_TABLE"] = 
                            {
                                {"Filename", "MODELS/EFFECTS/DEBRIS/SHIPEXPLMODELDEBRISA.SCENE.MBIN"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "CARGOEXPL_FINAL",},
							["PRECEDING_KEY_WORDS"] = {"GcDebrisData.xml","GcDebrisData.xml","GcDebrisData.xml","GcDebrisData.xml"},
                            ["VALUE_CHANGE_TABLE"] = 
                            {
                                {"Radius", "40"},
                                {"Scale",  "4"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "TURRETEXPL"},
                            ["PRECEDING_KEY_WORDS"] = {"GcDebrisData.xml"},
                            ["VALUE_CHANGE_TABLE"] = 
                            {
                                {"Number",        "6"},
                                {"AnglularSpeed", "13"}
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "TURRETEXPL"},
                            ["PRECEDING_KEY_WORDS"] = {"GcDebrisData.xml","GcDebrisData.xml"},
                            ["VALUE_CHANGE_TABLE"] = 
                            {
                                {"Number", "6"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "SENTHIVEEXPL",},
                            ["PRECEDING_KEY_WORDS"] = {"Debris"},	
                            ["CREATE_HOS"] = "TRUE",
                            ["ADD"] =
[[
        <Property value="GcDebrisData.xml">
          <Property name="Filename" value="TkModelResource.xml">
            <Property name="Filename" value="MODELS/EFFECTS/DEBRIS/DRONE/PANELL_GIB.SCENE.MBIN" />
            <Property name="ResHandle" value="GcResource.xml">
              <Property name="ResourceID" value="0" />
            </Property>
          </Property>
          <Property name="Number" value="5" />
          <Property name="Radius" value="3" />
          <Property name="Scale" value="1.4" />
          <Property name="Speed" value="65" />
          <Property name="AnglularSpeed" value="35" />
          <Property name="OverrideSeed" value="GcSeed.xml">
            <Property name="Seed" value="0" />
            <Property name="UseSeedValue" value="False" />
          </Property>
        </Property>
        <Property value="GcDebrisData.xml">
          <Property name="Filename" value="TkModelResource.xml">
            <Property name="Filename" value="MODELS/EFFECTS/DEBRIS/DRONE/CHASSIS_GIB.SCENE.MBIN" />
            <Property name="ResHandle" value="GcResource.xml">
              <Property name="ResourceID" value="0" />
            </Property>
          </Property>
          <Property name="Number" value="5" />
          <Property name="Radius" value="3" />
          <Property name="Scale" value="1.2" />
          <Property name="Speed" value="60" />
          <Property name="AnglularSpeed" value="30" />
          <Property name="OverrideSeed" value="GcSeed.xml">
            <Property name="Seed" value="0" />
            <Property name="UseSeedValue" value="False" />
          </Property>
        </Property>
        <Property value="GcDebrisData.xml">
          <Property name="Filename" value="TkModelResource.xml">
            <Property name="Filename" value="MODELS/EFFECTS/DEBRIS/SHIPEXPLMODELDEBRISA.SCENE.MBIN" />
            <Property name="ResHandle" value="GcResource.xml">
              <Property name="ResourceID" value="0" />
            </Property>
          </Property>
          <Property name="Number" value="5" />
          <Property name="Radius" value="3" />
          <Property name="Scale" value="1" />
          <Property name="Speed" value="60" />
          <Property name="AnglularSpeed" value="35" />
          <Property name="OverrideSeed" value="GcSeed.xml">
            <Property name="Seed" value="0" />
            <Property name="UseSeedValue" value="False" />
          </Property>
        </Property>
]]
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "CARGOSHIPEXPL",},
							["PRECEDING_KEY_WORDS"] = {"GcDebrisData.xml","Filename"},
                            ["LINE_OFFSET"] = "+1",
                            ["VALUE_CHANGE_TABLE"] = 
                            {
                                {"Filename", "MODELS/EFFECTS/DEBRIS/SPACE/SMALLDEBRIS/SMALLDEBRIS3.SCENE.MBIN"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "CARGOSHIPEXPL",},
							["PRECEDING_KEY_WORDS"] = {"GcDebrisData.xml"},
                            ["VALUE_CHANGE_TABLE"] = 
                            {
                                {"Number", "14"},
                                {"Radius", "30"},
                                {"Scale",  "7"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "CARGOSHIPEXPL",},
							["PRECEDING_KEY_WORDS"] = {"GcDebrisData.xml","GcDebrisData.xml"},
                            ["VALUE_CHANGE_TABLE"] = 
                            {
                                {"Radius", "40"},
                                {"Scale",  "7"},
                                {"Speed",  "700"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "CARGOSHIPEXPL"},
                            ["PRECEDING_KEY_WORDS"] = {"GcDebrisData.xml","GcDebrisData.xml","GcDebrisData.xml"},
                            ["VALUE_CHANGE_TABLE"] = 
                            {
                                {"Scale", "7"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "CARGOSHIPEXPL"},
                            ["PRECEDING_KEY_WORDS"] = {"GcDebrisData.xml","GcDebrisData.xml","GcDebrisData.xml","GcDebrisData.xml"},
                            ["VALUE_CHANGE_TABLE"] = 
                            {
                                {"Scale", "7"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "CARGOSHIPEXPL",},
                            ["VALUE_MATCH"] = "2.5",
                            ["VALUE_CHANGE_TABLE"] = 
                            {
                                {"Scale", "1"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "CARGOSHIPEXPL",},
                            ["VALUE_CHANGE_TABLE"] = 
                            {
                                {"Life", "120"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "SQUADSHIPMUZ"},
                            ["VALUE_CHANGE_TABLE"] = 
                            {
                                {"Life", "3"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "FREIGHTEREXPL",},
                            ["PRECEDING_KEY_WORDS"] = {"Debris"},	
                            ["CREATE_HOS"] = "TRUE",
                            ["ADD"] =
[[
        <Property value="GcDebrisData.xml">
          <Property name="Filename" value="TkModelResource.xml">
            <Property name="Filename" value="MODELS/EFFECTS/DEBRIS/SHIPEXPLMODELDEBRISB.SCENE.MBIN" />
            <Property name="ResHandle" value="GcResource.xml">
              <Property name="ResourceID" value="0" />
            </Property>
          </Property>
          <Property name="Number" value="14" />
          <Property name="Radius" value="25" />
          <Property name="Scale" value="40" />
          <Property name="Speed" value="600" />
          <Property name="AnglularSpeed" value="30" />
          <Property name="OverrideSeed" value="GcSeed.xml">
            <Property name="Seed" value="0" />
            <Property name="UseSeedValue" value="False" />
          </Property>
        </Property>
        <Property value="GcDebrisData.xml">
          <Property name="Filename" value="TkModelResource.xml">
            <Property name="Filename" value="MODELS/EFFECTS/DEBRIS/DRONE/PANELL_GIB.SCENE.MBIN" />
            <Property name="ResHandle" value="GcResource.xml">
              <Property name="ResourceID" value="0" />
            </Property>
          </Property>
          <Property name="Number" value="13" />
          <Property name="Radius" value="24" />
          <Property name="Scale" value="60" />
          <Property name="Speed" value="200" />
          <Property name="AnglularSpeed" value="15" />
          <Property name="OverrideSeed" value="GcSeed.xml">
            <Property name="Seed" value="0" />
            <Property name="UseSeedValue" value="False" />
          </Property>
        </Property>
]]
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "FREIGHTEREXPL"},
                            ["VALUE_CHANGE_TABLE"] = 
                            {
                                {"Life", "120"}
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "FREIGHTBULDEXPL",},
                            ["PRECEDING_KEY_WORDS"] = {"Debris"},	
                            ["CREATE_HOS"] = "TRUE",
                            ["ADD"] =
[[
        <Property value="GcDebrisData.xml">
          <Property name="Filename" value="TkModelResource.xml">
            <Property name="Filename" value="MODELS/EFFECTS/DEBRIS/SHIPEXPLMODELDEBRISA.SCENE.MBIN" />
            <Property name="ResHandle" value="GcResource.xml">
              <Property name="ResourceID" value="0" />
            </Property>
          </Property>
          <Property name="Number" value="10" />
          <Property name="Radius" value="65" />
          <Property name="Scale" value="25" />
          <Property name="Speed" value="1000" />
          <Property name="AnglularSpeed" value="30" />
          <Property name="OverrideSeed" value="GcSeed.xml">
            <Property name="Seed" value="0" />
            <Property name="UseSeedValue" value="False" />
          </Property>
        </Property>
        <Property value="GcDebrisData.xml">
          <Property name="Filename" value="TkModelResource.xml">
            <Property name="Filename" value="MODELS/EFFECTS/DEBRIS/SPACE/SMALLDEBRIS/SMALLDEBRIS2.SCENE.MBIN" />
            <Property name="ResHandle" value="GcResource.xml">
              <Property name="ResourceID" value="0" />
            </Property>
          </Property>
          <Property name="Number" value="13" />
          <Property name="Radius" value="34" />
          <Property name="Scale" value="60" />
          <Property name="Speed" value="1000" />
          <Property name="AnglularSpeed" value="15" />
          <Property name="OverrideSeed" value="GcSeed.xml">
            <Property name="Seed" value="0" />
            <Property name="UseSeedValue" value="False" />
          </Property>
        </Property>
]]
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "FREIGHTBULDEXPL"},
                            ["VALUE_CHANGE_TABLE"] = 
                            {
                                {"Life", "120"}
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "CORPTPILLDESTR"},
                            ["VALUE_CHANGE_TABLE"] = 
                            {
                                {"Number", "4"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "CORPTPILLEXPL",},
                            ["PRECEDING_KEY_WORDS"] = {"Debris"},	
                            ["CREATE_HOS"] = "TRUE",
                            ["ADD"] =
[[
        <Property value="GcDebrisData.xml">
          <Property name="Filename" value="TkModelResource.xml">
            <Property name="Filename" value="MODELS/EFFECTS/DEBRIS/RESOURCE/PILLARDEBRISA.SCENE.MBIN" />
            <Property name="ResHandle" value="GcResource.xml">
              <Property name="ResourceID" value="0" />
            </Property>
          </Property>
          <Property name="Number" value="2" />
          <Property name="Radius" value="2" />
          <Property name="Scale" value="1" />
          <Property name="Speed" value="15" />
          <Property name="AnglularSpeed" value="20" />
          <Property name="OverrideSeed" value="GcSeed.xml">
            <Property name="Seed" value="0" />
            <Property name="UseSeedValue" value="False" />
          </Property>
        </Property>
]]
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "SENTCRYSTALEXPL",},
                            ["PRECEDING_KEY_WORDS"] = {"Debris"},	
                            ["CREATE_HOS"] = "TRUE",
                            ["ADD"] =
[[
        <Property value="GcDebrisData.xml">
          <Property name="Filename" value="TkModelResource.xml">
            <Property name="Filename" value="MODELS/EFFECTS/DEBRIS/ROCKDEBRIS.SCENE.MBIN" />
            <Property name="ResHandle" value="GcResource.xml">
              <Property name="ResourceID" value="0" />
            </Property>
          </Property>
          <Property name="Number" value="6" />
          <Property name="Radius" value="1" />
          <Property name="Scale" value="1" />
          <Property name="Speed" value="6" />
          <Property name="AnglularSpeed" value="1" />
          <Property name="OverrideSeed" value="GcSeed.xml">
            <Property name="Seed" value="0" />
            <Property name="UseSeedValue" value="False" />
          </Property>
        </Property>
        <Property value="GcDebrisData.xml">
          <Property name="Filename" value="TkModelResource.xml">
            <Property name="Filename" value="MODELS/EFFECTS/DEBRIS/SCRAPEXPLOSIONDEBRIS.SCENE.MBIN" />
            <Property name="ResHandle" value="GcResource.xml">
              <Property name="ResourceID" value="0" />
            </Property>
          </Property>
          <Property name="Number" value="1" />
          <Property name="Radius" value="1" />
          <Property name="Scale" value="0.4" />
          <Property name="Speed" value="6" />
          <Property name="AnglularSpeed" value="3" />
          <Property name="OverrideSeed" value="GcSeed.xml">
            <Property name="Seed" value="0" />
            <Property name="UseSeedValue" value="False" />
          </Property>
        </Property>
]]
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "SENTCRYSEXPLSML",},
                            ["PRECEDING_KEY_WORDS"] = {"Debris"},	
                            ["CREATE_HOS"] = "TRUE",
                            ["ADD"] =
[[
        <Property value="GcDebrisData.xml">
          <Property name="Filename" value="TkModelResource.xml">
            <Property name="Filename" value="MODELS/EFFECTS/DEBRIS/ROCKDEBRIS.SCENE.MBIN" />
            <Property name="ResHandle" value="GcResource.xml">
              <Property name="ResourceID" value="0" />
            </Property>
          </Property>
          <Property name="Number" value="6" />
          <Property name="Radius" value="1" />
          <Property name="Scale" value="1" />
          <Property name="Speed" value="6" />
          <Property name="AnglularSpeed" value="1" />
          <Property name="OverrideSeed" value="GcSeed.xml">
            <Property name="Seed" value="0" />
            <Property name="UseSeedValue" value="False" />
          </Property>
        </Property>
        <Property value="GcDebrisData.xml">
          <Property name="Filename" value="TkModelResource.xml">
            <Property name="Filename" value="MODELS/EFFECTS/DEBRIS/SCRAPEXPLOSIONDEBRIS.SCENE.MBIN" />
            <Property name="ResHandle" value="GcResource.xml">
              <Property name="ResourceID" value="0" />
            </Property>
          </Property>
          <Property name="Number" value="1" />
          <Property name="Radius" value="1" />
          <Property name="Scale" value="0.4" />
          <Property name="Speed" value="6" />
          <Property name="AnglularSpeed" value="3" />
          <Property name="OverrideSeed" value="GcSeed.xml">
            <Property name="Seed" value="0" />
            <Property name="UseSeedValue" value="False" />
          </Property>
        </Property>
]]
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "CORRUPDRONEEXPL",},
                            ["PRECEDING_KEY_WORDS"] = {"Debris"},	
                            ["CREATE_HOS"] = "TRUE",
                            ["ADD"] =
[[
        <Property value="GcDebrisData.xml">
          <Property name="Filename" value="TkModelResource.xml">
            <Property name="Filename" value="MODELS/EFFECTS/INEDITOR/PLANET/DRONEEXPLODE/DEBRISTRAIL.SCENE.MBIN" />
            <Property name="ResHandle" value="GcResource.xml">
              <Property name="ResourceID" value="0" />
            </Property>
          </Property>
          <Property name="Number" value="2" />
          <Property name="Radius" value="1" />
          <Property name="Scale" value="0.8" />
          <Property name="Speed" value="30" />
          <Property name="AnglularSpeed" value="10" />
          <Property name="OverrideSeed" value="GcSeed.xml">
            <Property name="Seed" value="0" />
            <Property name="UseSeedValue" value="False" />
          </Property>
        </Property>
        <Property value="GcDebrisData.xml">
          <Property name="Filename" value="TkModelResource.xml">
            <Property name="Filename" value="MODELS/EFFECTS/DEBRIS/DRONE/ENGINE_GIB.SCENE.MBIN" />
            <Property name="ResHandle" value="GcResource.xml">
              <Property name="ResourceID" value="0" />
            </Property>
          </Property>
          <Property name="Number" value="1" />
          <Property name="Radius" value="1" />
          <Property name="Scale" value="0.7" />
          <Property name="Speed" value="20" />
          <Property name="AnglularSpeed" value="0.1" />
          <Property name="OverrideSeed" value="GcSeed.xml">
            <Property name="Seed" value="0" />
            <Property name="UseSeedValue" value="False" />
          </Property>
        </Property>
        <Property value="GcDebrisData.xml">
          <Property name="Filename" value="TkModelResource.xml">
            <Property name="Filename" value="MODELS/EFFECTS/DEBRIS/DRONE/EYE_GIB.SCENE.MBIN" />
            <Property name="ResHandle" value="GcResource.xml">
              <Property name="ResourceID" value="0" />
            </Property>
          </Property>
          <Property name="Number" value="1" />
          <Property name="Radius" value="1" />
          <Property name="Scale" value="0.5" />
          <Property name="Speed" value="20" />
          <Property name="AnglularSpeed" value="0.1" />
          <Property name="OverrideSeed" value="GcSeed.xml">
            <Property name="Seed" value="0" />
            <Property name="UseSeedValue" value="False" />
          </Property>
        </Property>
        <Property value="GcDebrisData.xml">
          <Property name="Filename" value="TkModelResource.xml">
            <Property name="Filename" value="MODELS/EFFECTS/DEBRIS/DRONE/PANELL_GIB.SCENE.MBIN" />
            <Property name="ResHandle" value="GcResource.xml">
              <Property name="ResourceID" value="0" />
            </Property>
          </Property>
          <Property name="Number" value="14" />
          <Property name="Radius" value="1" />
          <Property name="Scale" value="0.8" />
          <Property name="Speed" value="20" />
          <Property name="AnglularSpeed" value="0.1" />
          <Property name="OverrideSeed" value="GcSeed.xml">
            <Property name="Seed" value="0" />
            <Property name="UseSeedValue" value="False" />
          </Property>
        </Property>
        <Property value="GcDebrisData.xml">
          <Property name="Filename" value="TkModelResource.xml">
            <Property name="Filename" value="MODELS/EFFECTS/DEBRIS/DRONE/PANELR_GIB.SCENE.MBIN" />
            <Property name="ResHandle" value="GcResource.xml">
              <Property name="ResourceID" value="0" />
            </Property>
          </Property>
          <Property name="Number" value="13" />
          <Property name="Radius" value="1" />
          <Property name="Scale" value="0.8" />
          <Property name="Speed" value="20" />
          <Property name="AnglularSpeed" value="0.1" />
          <Property name="OverrideSeed" value="GcSeed.xml">
            <Property name="Seed" value="0" />
            <Property name="UseSeedValue" value="False" />
          </Property>
        </Property>
        <Property value="GcDebrisData.xml">
          <Property name="Filename" value="TkModelResource.xml">
            <Property name="Filename" value="MODELS/EFFECTS/DEBRIS/DRONE/CHASSIS_GIB.SCENE.MBIN" />
            <Property name="ResHandle" value="GcResource.xml">
              <Property name="ResourceID" value="0" />
            </Property>
          </Property>
          <Property name="Number" value="14" />
          <Property name="Radius" value="1" />
          <Property name="Scale" value="0.8" />
          <Property name="Speed" value="20" />
          <Property name="AnglularSpeed" value="0.1" />
          <Property name="OverrideSeed" value="GcSeed.xml">
            <Property name="Seed" value="0" />
            <Property name="UseSeedValue" value="False" />
          </Property>
        </Property>
]]
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "CORRUPARMOUREXP",},
                            ["PRECEDING_KEY_WORDS"] = {"Debris"},	
                            ["CREATE_HOS"] = "TRUE",
                            ["ADD"] =
[[
        <Property value="GcDebrisData.xml">
          <Property name="Filename" value="TkModelResource.xml">
            <Property name="Filename" value="MODELS/EFFECTS/INEDITOR/PLANET/DRONEEXPLODE/DEBRISTRAIL.SCENE.MBIN" />
            <Property name="ResHandle" value="GcResource.xml">
              <Property name="ResourceID" value="0" />
            </Property>
          </Property>
          <Property name="Number" value="2" />
          <Property name="Radius" value="1" />
          <Property name="Scale" value="0.6" />
          <Property name="Speed" value="30" />
          <Property name="AnglularSpeed" value="10" />
          <Property name="OverrideSeed" value="GcSeed.xml">
            <Property name="Seed" value="0" />
            <Property name="UseSeedValue" value="False" />
          </Property>
        </Property>
        <Property value="GcDebrisData.xml">
          <Property name="Filename" value="TkModelResource.xml">
            <Property name="Filename" value="MODELS/EFFECTS/DEBRIS/DRONE/ENGINE_GIB.SCENE.MBIN" />
            <Property name="ResHandle" value="GcResource.xml">
              <Property name="ResourceID" value="0" />
            </Property>
          </Property>
          <Property name="Number" value="1" />
          <Property name="Radius" value="1" />
          <Property name="Scale" value="0.5" />
          <Property name="Speed" value="20" />
          <Property name="AnglularSpeed" value="0.1" />
          <Property name="OverrideSeed" value="GcSeed.xml">
            <Property name="Seed" value="0" />
            <Property name="UseSeedValue" value="False" />
          </Property>
        </Property>
        <Property value="GcDebrisData.xml">
          <Property name="Filename" value="TkModelResource.xml">
            <Property name="Filename" value="MODELS/EFFECTS/DEBRIS/DRONE/EYE_GIB.SCENE.MBIN" />
            <Property name="ResHandle" value="GcResource.xml">
              <Property name="ResourceID" value="0" />
            </Property>
          </Property>
          <Property name="Number" value="1" />
          <Property name="Radius" value="1" />
          <Property name="Scale" value="0.5" />
          <Property name="Speed" value="20" />
          <Property name="AnglularSpeed" value="0.1" />
          <Property name="OverrideSeed" value="GcSeed.xml">
            <Property name="Seed" value="0" />
            <Property name="UseSeedValue" value="False" />
          </Property>
        </Property>
        <Property value="GcDebrisData.xml">
          <Property name="Filename" value="TkModelResource.xml">
            <Property name="Filename" value="MODELS/EFFECTS/DEBRIS/DRONE/PANELL_GIB.SCENE.MBIN" />
            <Property name="ResHandle" value="GcResource.xml">
              <Property name="ResourceID" value="0" />
            </Property>
          </Property>
          <Property name="Number" value="14" />
          <Property name="Radius" value="1" />
          <Property name="Scale" value="0.8" />
          <Property name="Speed" value="20" />
          <Property name="AnglularSpeed" value="0.1" />
          <Property name="OverrideSeed" value="GcSeed.xml">
            <Property name="Seed" value="0" />
            <Property name="UseSeedValue" value="False" />
          </Property>
        </Property>
        <Property value="GcDebrisData.xml">
          <Property name="Filename" value="TkModelResource.xml">
            <Property name="Filename" value="MODELS/EFFECTS/DEBRIS/DRONE/PANELR_GIB.SCENE.MBIN" />
            <Property name="ResHandle" value="GcResource.xml">
              <Property name="ResourceID" value="0" />
            </Property>
          </Property>
          <Property name="Number" value="13" />
          <Property name="Radius" value="1" />
          <Property name="Scale" value="0.8" />
          <Property name="Speed" value="20" />
          <Property name="AnglularSpeed" value="0.1" />
          <Property name="OverrideSeed" value="GcSeed.xml">
            <Property name="Seed" value="0" />
            <Property name="UseSeedValue" value="False" />
          </Property>
        </Property>
        <Property value="GcDebrisData.xml">
          <Property name="Filename" value="TkModelResource.xml">
            <Property name="Filename" value="MODELS/EFFECTS/DEBRIS/DRONE/CHASSIS_GIB.SCENE.MBIN" />
            <Property name="ResHandle" value="GcResource.xml">
              <Property name="ResourceID" value="0" />
            </Property>
          </Property>
          <Property name="Number" value="14" />
          <Property name="Radius" value="1" />
          <Property name="Scale" value="0.8" />
          <Property name="Speed" value="20" />
          <Property name="AnglularSpeed" value="0.1" />
          <Property name="OverrideSeed" value="GcSeed.xml">
            <Property name="Seed" value="0" />
            <Property name="UseSeedValue" value="False" />
          </Property>
        </Property>
]]
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "CORRUPTQUADEXP",},
                            ["PRECEDING_KEY_WORDS"] = {"Debris"},	
                            ["CREATE_HOS"] = "TRUE",
                            ["ADD"] =
[[
        <Property value="GcDebrisData.xml">
          <Property name="Filename" value="TkModelResource.xml">
            <Property name="Filename" value="MODELS/EFFECTS/INEDITOR/PLANET/DRONEEXPLODE/DEBRISTRAIL.SCENE.MBIN" />
            <Property name="ResHandle" value="GcResource.xml">
              <Property name="ResourceID" value="0" />
            </Property>
          </Property>
          <Property name="Number" value="2" />
          <Property name="Radius" value="1" />
          <Property name="Scale" value="0.6" />
          <Property name="Speed" value="30" />
          <Property name="AnglularSpeed" value="10" />
          <Property name="OverrideSeed" value="GcSeed.xml">
            <Property name="Seed" value="0" />
            <Property name="UseSeedValue" value="False" />
          </Property>
        </Property>
        <Property value="GcDebrisData.xml">
          <Property name="Filename" value="TkModelResource.xml">
            <Property name="Filename" value="MODELS/EFFECTS/DEBRIS/DRONE/ENGINE_GIB.SCENE.MBIN" />
            <Property name="ResHandle" value="GcResource.xml">
              <Property name="ResourceID" value="0" />
            </Property>
          </Property>
          <Property name="Number" value="1" />
          <Property name="Radius" value="1" />
          <Property name="Scale" value="0.5" />
          <Property name="Speed" value="20" />
          <Property name="AnglularSpeed" value="0.1" />
          <Property name="OverrideSeed" value="GcSeed.xml">
            <Property name="Seed" value="0" />
            <Property name="UseSeedValue" value="False" />
          </Property>
        </Property>
        <Property value="GcDebrisData.xml">
          <Property name="Filename" value="TkModelResource.xml">
            <Property name="Filename" value="MODELS/EFFECTS/DEBRIS/DRONE/EYE_GIB.SCENE.MBIN" />
            <Property name="ResHandle" value="GcResource.xml">
              <Property name="ResourceID" value="0" />
            </Property>
          </Property>
          <Property name="Number" value="1" />
          <Property name="Radius" value="1" />
          <Property name="Scale" value="0.5" />
          <Property name="Speed" value="20" />
          <Property name="AnglularSpeed" value="0.1" />
          <Property name="OverrideSeed" value="GcSeed.xml">
            <Property name="Seed" value="0" />
            <Property name="UseSeedValue" value="False" />
          </Property>
        </Property>
        <Property value="GcDebrisData.xml">
          <Property name="Filename" value="TkModelResource.xml">
            <Property name="Filename" value="MODELS/EFFECTS/DEBRIS/DRONE/PANELL_GIB.SCENE.MBIN" />
            <Property name="ResHandle" value="GcResource.xml">
              <Property name="ResourceID" value="0" />
            </Property>
          </Property>
          <Property name="Number" value="14" />
          <Property name="Radius" value="1" />
          <Property name="Scale" value="0.8" />
          <Property name="Speed" value="20" />
          <Property name="AnglularSpeed" value="0.1" />
          <Property name="OverrideSeed" value="GcSeed.xml">
            <Property name="Seed" value="0" />
            <Property name="UseSeedValue" value="False" />
          </Property>
        </Property>
        <Property value="GcDebrisData.xml">
          <Property name="Filename" value="TkModelResource.xml">
            <Property name="Filename" value="MODELS/EFFECTS/DEBRIS/DRONE/PANELR_GIB.SCENE.MBIN" />
            <Property name="ResHandle" value="GcResource.xml">
              <Property name="ResourceID" value="0" />
            </Property>
          </Property>
          <Property name="Number" value="13" />
          <Property name="Radius" value="1" />
          <Property name="Scale" value="0.8" />
          <Property name="Speed" value="20" />
          <Property name="AnglularSpeed" value="0.1" />
          <Property name="OverrideSeed" value="GcSeed.xml">
            <Property name="Seed" value="0" />
            <Property name="UseSeedValue" value="False" />
          </Property>
        </Property>
        <Property value="GcDebrisData.xml">
          <Property name="Filename" value="TkModelResource.xml">
            <Property name="Filename" value="MODELS/EFFECTS/DEBRIS/DRONE/CHASSIS_GIB.SCENE.MBIN" />
            <Property name="ResHandle" value="GcResource.xml">
              <Property name="ResourceID" value="0" />
            </Property>
          </Property>
          <Property name="Number" value="14" />
          <Property name="Radius" value="1" />
          <Property name="Scale" value="0.8" />
          <Property name="Speed" value="20" />
          <Property name="AnglularSpeed" value="0.1" />
          <Property name="OverrideSeed" value="GcSeed.xml">
            <Property name="Seed" value="0" />
            <Property name="UseSeedValue" value="False" />
          </Property>
        </Property>
]]
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "CORRUPTSELFDEST",},
                            ["PRECEDING_KEY_WORDS"] = {"Debris"},	
                            ["CREATE_HOS"] = "TRUE",
                            ["ADD"] =
[[
        <Property value="GcDebrisData.xml">
          <Property name="Filename" value="TkModelResource.xml">
            <Property name="Filename" value="MODELS/EFFECTS/INEDITOR/PLANET/DRONEEXPLODE/DEBRISTRAIL.SCENE.MBIN" />
            <Property name="ResHandle" value="GcResource.xml">
              <Property name="ResourceID" value="0" />
            </Property>
          </Property>
          <Property name="Number" value="2" />
          <Property name="Radius" value="1" />
          <Property name="Scale" value="0.6" />
          <Property name="Speed" value="30" />
          <Property name="AnglularSpeed" value="10" />
          <Property name="OverrideSeed" value="GcSeed.xml">
            <Property name="Seed" value="0" />
            <Property name="UseSeedValue" value="False" />
          </Property>
        </Property>
        <Property value="GcDebrisData.xml">
          <Property name="Filename" value="TkModelResource.xml">
            <Property name="Filename" value="MODELS/EFFECTS/DEBRIS/DRONE/ENGINE_GIB.SCENE.MBIN" />
            <Property name="ResHandle" value="GcResource.xml">
              <Property name="ResourceID" value="0" />
            </Property>
          </Property>
          <Property name="Number" value="1" />
          <Property name="Radius" value="1" />
          <Property name="Scale" value="0.5" />
          <Property name="Speed" value="20" />
          <Property name="AnglularSpeed" value="0.1" />
          <Property name="OverrideSeed" value="GcSeed.xml">
            <Property name="Seed" value="0" />
            <Property name="UseSeedValue" value="False" />
          </Property>
        </Property>
        <Property value="GcDebrisData.xml">
          <Property name="Filename" value="TkModelResource.xml">
            <Property name="Filename" value="MODELS/EFFECTS/DEBRIS/DRONE/EYE_GIB.SCENE.MBIN" />
            <Property name="ResHandle" value="GcResource.xml">
              <Property name="ResourceID" value="0" />
            </Property>
          </Property>
          <Property name="Number" value="1" />
          <Property name="Radius" value="1" />
          <Property name="Scale" value="0.5" />
          <Property name="Speed" value="20" />
          <Property name="AnglularSpeed" value="0.1" />
          <Property name="OverrideSeed" value="GcSeed.xml">
            <Property name="Seed" value="0" />
            <Property name="UseSeedValue" value="False" />
          </Property>
        </Property>
        <Property value="GcDebrisData.xml">
          <Property name="Filename" value="TkModelResource.xml">
            <Property name="Filename" value="MODELS/EFFECTS/DEBRIS/DRONE/PANELL_GIB.SCENE.MBIN" />
            <Property name="ResHandle" value="GcResource.xml">
              <Property name="ResourceID" value="0" />
            </Property>
          </Property>
          <Property name="Number" value="14" />
          <Property name="Radius" value="1" />
          <Property name="Scale" value="0.8" />
          <Property name="Speed" value="20" />
          <Property name="AnglularSpeed" value="0.1" />
          <Property name="OverrideSeed" value="GcSeed.xml">
            <Property name="Seed" value="0" />
            <Property name="UseSeedValue" value="False" />
          </Property>
        </Property>
        <Property value="GcDebrisData.xml">
          <Property name="Filename" value="TkModelResource.xml">
            <Property name="Filename" value="MODELS/EFFECTS/DEBRIS/DRONE/PANELR_GIB.SCENE.MBIN" />
            <Property name="ResHandle" value="GcResource.xml">
              <Property name="ResourceID" value="0" />
            </Property>
          </Property>
          <Property name="Number" value="13" />
          <Property name="Radius" value="1" />
          <Property name="Scale" value="0.8" />
          <Property name="Speed" value="20" />
          <Property name="AnglularSpeed" value="0.1" />
          <Property name="OverrideSeed" value="GcSeed.xml">
            <Property name="Seed" value="0" />
            <Property name="UseSeedValue" value="False" />
          </Property>
        </Property>
        <Property value="GcDebrisData.xml">
          <Property name="Filename" value="TkModelResource.xml">
            <Property name="Filename" value="MODELS/EFFECTS/DEBRIS/DRONE/CHASSIS_GIB.SCENE.MBIN" />
            <Property name="ResHandle" value="GcResource.xml">
              <Property name="ResourceID" value="0" />
            </Property>
          </Property>
          <Property name="Number" value="14" />
          <Property name="Radius" value="1" />
          <Property name="Scale" value="0.8" />
          <Property name="Speed" value="20" />
          <Property name="AnglularSpeed" value="0.1" />
          <Property name="OverrideSeed" value="GcSeed.xml">
            <Property name="Seed" value="0" />
            <Property name="UseSeedValue" value="False" />
          </Property>
        </Property>
]]
                        },
                        {
                            ["FOREACH_SKW_GROUP"] =
                            {
                                {"Id", "FIREWORKEND"},
                                {"Id", "GASEXPLODE"},
                                {"Id", "ENERGYEXPLODE"},
                                {"Id", "REPAIRFLASH"},
                                {"Id", "GROUNDEXPLODE"},
                                {"Id", "DEPOEXPLOSION"},
                                {"Id", "CRYSTALEXPLODE"},
                                {"Id", "CARGOEXPLOSION"},
                                {"Id", "TURRETEXPL"},
                                {"Id", "METALEXPLODE"},
                                {"Id", "BARRELEXPLODE"},
                                {"Id", "ADRONEEXPLODE"},
                                {"Id", "SENTHIVEEXPL"},
                                {"Id", "PIRATERAIDIMP"},
                                {"Id", "CORPTPILLDESTR"},
                                {"Id", "CORPTPILLEXPL"},
                                {"Id", "SENTCRYSTALEXPL"},
                                {"Id", "SENTCRYSEXPLSML"},
                                {"Id", "CORRUPDRONEEXPL"},
                                {"Id", "CORRUPARMOUREXP"},
                                {"Id", "CORRUPTQUADEXP"},
                                {"Id", "CORRUPTSELFDEST"},
                            },
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Life",  "60"},
                            }
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "METADATA/EFFECTS/PLANETEFFECTS.MBIN",
                    ["EXML_CHANGE_TABLE"] = 
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "BLUEEXPLODE",},
                            ["PRECEDING_KEY_WORDS"] = {"Debris"},	
                            ["CREATE_HOS"] = "TRUE",
                            ["ADD"] =
[[
        <Property value="GcDebrisData.xml">
          <Property name="Filename" value="TkModelResource.xml">
            <Property name="Filename" value="MODELS/EFFECTS/DEBRIS/ROCKDEBRIS.SCENE.MBIN" />
            <Property name="ResHandle" value="GcResource.xml">
              <Property name="ResourceID" value="0" />
            </Property>
          </Property>
          <Property name="Number" value="12" />
          <Property name="Radius" value="3" />
          <Property name="Scale" value="1" />
          <Property name="Speed" value="6" />
          <Property name="AnglularSpeed" value="1" />
          <Property name="OverrideSeed" value="GcSeed.xml">
            <Property name="Seed" value="0" />
            <Property name="UseSeedValue" value="False" />
          </Property>
        </Property>
]]
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "DRONEDYING"},
                            ["REMOVE"] = "SECTION",
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "ROBOTMUZZLE"},
                            ["ADD_OPTION"] = "ADDafterSECTION",
                            ["ADD"] = 
[[
    <Property value="GcExplosionData.xml">
      <Property name="Id" value="DRONEDYING" />
      <Property name="Model" value="TkModelResource.xml">
        <Property name="Filename" value="MODELS/EFFECTS/EXPLOSION/DRONEEXPLODE.SCENE.MBIN" />
        <Property name="ResHandle" value="GcResource.xml">
          <Property name="ResourceID" value="0" />
        </Property>
      </Property>
      <Property name="AudioEvent" value="GcAudioWwiseEvents.xml">
        <Property name="AkEvent" value="EXPL_SHIPS_SMALL" />
      </Property>
      <Property name="Debris">
        <Property value="GcDebrisData.xml">
          <Property name="Filename" value="TkModelResource.xml">
            <Property name="Filename" value="MODELS/EFFECTS/INEDITOR/PLANET/DRONEEXPLODE/DEBRISTRAIL.SCENE.MBIN" />
            <Property name="ResHandle" value="GcResource.xml">
              <Property name="ResourceID" value="0" />
            </Property>
          </Property>
          <Property name="Number" value="2" />
          <Property name="Radius" value="1" />
          <Property name="Scale" value="0.6" />
          <Property name="Speed" value="30" />
          <Property name="AnglularSpeed" value="10" />
          <Property name="OverrideSeed" value="GcSeed.xml">
            <Property name="Seed" value="0" />
            <Property name="UseSeedValue" value="False" />
          </Property>
        </Property>
        <Property value="GcDebrisData.xml">
          <Property name="Filename" value="TkModelResource.xml">
            <Property name="Filename" value="MODELS/EFFECTS/DEBRIS/DRONE/ENGINE_GIB.SCENE.MBIN" />
            <Property name="ResHandle" value="GcResource.xml">
              <Property name="ResourceID" value="0" />
            </Property>
          </Property>
          <Property name="Number" value="1" />
          <Property name="Radius" value="1" />
          <Property name="Scale" value="0.5" />
          <Property name="Speed" value="20" />
          <Property name="AnglularSpeed" value="0.1" />
          <Property name="OverrideSeed" value="GcSeed.xml">
            <Property name="Seed" value="0" />
            <Property name="UseSeedValue" value="False" />
          </Property>
        </Property>
        <Property value="GcDebrisData.xml">
          <Property name="Filename" value="TkModelResource.xml">
            <Property name="Filename" value="MODELS/EFFECTS/DEBRIS/DRONE/EYE_GIB.SCENE.MBIN" />
            <Property name="ResHandle" value="GcResource.xml">
              <Property name="ResourceID" value="0" />
            </Property>
          </Property>
          <Property name="Number" value="1" />
          <Property name="Radius" value="1" />
          <Property name="Scale" value="0.5" />
          <Property name="Speed" value="20" />
          <Property name="AnglularSpeed" value="0.1" />
          <Property name="OverrideSeed" value="GcSeed.xml">
            <Property name="Seed" value="0" />
            <Property name="UseSeedValue" value="False" />
          </Property>
        </Property>
        <Property value="GcDebrisData.xml">
          <Property name="Filename" value="TkModelResource.xml">
            <Property name="Filename" value="MODELS/EFFECTS/DEBRIS/DRONE/PANELL_GIB.SCENE.MBIN" />
            <Property name="ResHandle" value="GcResource.xml">
              <Property name="ResourceID" value="0" />
            </Property>
          </Property>
          <Property name="Number" value="14" />
          <Property name="Radius" value="1" />
          <Property name="Scale" value="0.5" />
          <Property name="Speed" value="20" />
          <Property name="AnglularSpeed" value="0.1" />
          <Property name="OverrideSeed" value="GcSeed.xml">
            <Property name="Seed" value="0" />
            <Property name="UseSeedValue" value="False" />
          </Property>
        </Property>
        <Property value="GcDebrisData.xml">
          <Property name="Filename" value="TkModelResource.xml">
            <Property name="Filename" value="MODELS/EFFECTS/DEBRIS/DRONE/PANELR_GIB.SCENE.MBIN" />
            <Property name="ResHandle" value="GcResource.xml">
              <Property name="ResourceID" value="0" />
            </Property>
          </Property>
          <Property name="Number" value="13" />
          <Property name="Radius" value="1" />
          <Property name="Scale" value="0.5" />
          <Property name="Speed" value="20" />
          <Property name="AnglularSpeed" value="0.1" />
          <Property name="OverrideSeed" value="GcSeed.xml">
            <Property name="Seed" value="0" />
            <Property name="UseSeedValue" value="False" />
          </Property>
        </Property>
        <Property value="GcDebrisData.xml">
          <Property name="Filename" value="TkModelResource.xml">
            <Property name="Filename" value="MODELS/EFFECTS/DEBRIS/DRONE/CHASSIS_GIB.SCENE.MBIN" />
            <Property name="ResHandle" value="GcResource.xml">
              <Property name="ResourceID" value="0" />
            </Property>
          </Property>
          <Property name="Number" value="14" />
          <Property name="Radius" value="1" />
          <Property name="Scale" value="0.5" />
          <Property name="Speed" value="20" />
          <Property name="AnglularSpeed" value="0.1" />
          <Property name="OverrideSeed" value="GcSeed.xml">
            <Property name="Seed" value="0" />
            <Property name="UseSeedValue" value="False" />
          </Property>
        </Property>
      </Property>
      <Property name="Life" value="60" />
      <Property name="Scale" value="3" />
      <Property name="DistanceScale" value="0" />
      <Property name="DistanceScaleMax" value="50" />
      <Property name="CamShake" value="True" />
      <Property name="CamShakeSpaceScale" value="False" />
      <Property name="ShakeStrengthModifier" value="1" />
      <Property name="ShakeId" value="EXPLOSIONPAINSH" />
      <Property name="AllowTriggerActionOnDebris" value="False" />
      <Property name="AllowShootableDebris" value="False" />
      <Property name="AllowDestructableDebris" value="False" />
      <Property name="MaxSpawnDistance" value="0" />
      <Property name="CamShakeCustomMaxDistance" value="0" />
      <Property name="LightFadeInTime" value="0" />
      <Property name="LightFadeOutTime" value="0" />
      <Property name="AddLight" value="False" />
      <Property name="AddedLightIntensity" value="5" />
      <Property name="AddedLightColour" value="Colour.xml">
        <Property name="R" value="1" />
        <Property name="G" value="1" />
        <Property name="B" value="1" />
        <Property name="A" value="1" />
      </Property>
    </Property>
]]
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "DRONEEXPLODE"},
                            ["PRECEDING_KEY_WORDS"] = {"GcDebrisData.xml"},
                            ["VALUE_CHANGE_TABLE"] = 
                            {
                                {"Number", "2"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "DRONEEXPLODE"},
                            ["PRECEDING_KEY_WORDS"] = {"GcDebrisData.xml","GcDebrisData.xml","GcDebrisData.xml","GcDebrisData.xml"},
                            ["VALUE_CHANGE_TABLE"] = 
                            {
                                {"Number", "4"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "DRONEEXPLODE"},
                            ["PRECEDING_KEY_WORDS"] = {"GcDebrisData.xml","GcDebrisData.xml","GcDebrisData.xml","GcDebrisData.xml","GcDebrisData.xml"},
                            ["VALUE_CHANGE_TABLE"] = 
                            {
                                {"Number", "4"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "DRONEEXPLODE"},
                            ["PRECEDING_KEY_WORDS"] = {"GcDebrisData.xml","GcDebrisData.xml","GcDebrisData.xml","GcDebrisData.xml","GcDebrisData.xml","GcDebrisData.xml"},
                            ["VALUE_CHANGE_TABLE"] = 
                            {
                                {"Number", "3"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "RESOURCEEXPLODE"},
                            ["PRECEDING_KEY_WORDS"] = {"GcDebrisData.xml"},
                            ["VALUE_CHANGE_TABLE"] = 
                            {
                                {"Number", "12"},
                                {"Radius", "3"},
                                {"Speed",  "3"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "WALKEREXPLODE",},
                            ["PRECEDING_KEY_WORDS"] = {"Debris"},	
                            ["CREATE_HOS"] = "TRUE",
                            ["ADD"] =
[[
        <Property value="GcDebrisData.xml">
          <Property name="Filename" value="TkModelResource.xml">
            <Property name="Filename" value="MODELS/EFFECTS/INEDITOR/PLANET/DRONEEXPLODE/DEBRISTRAIL.SCENE.MBIN" />
            <Property name="ResHandle" value="GcResource.xml">
              <Property name="ResourceID" value="0" />
            </Property>
          </Property>
          <Property name="Number" value="2" />
          <Property name="Radius" value="1" />
          <Property name="Scale" value="1" />
          <Property name="Speed" value="30" />
          <Property name="AnglularSpeed" value="10" />
          <Property name="OverrideSeed" value="GcSeed.xml">
            <Property name="Seed" value="0" />
            <Property name="UseSeedValue" value="False" />
          </Property>
        </Property>
        <Property value="GcDebrisData.xml">
          <Property name="Filename" value="TkModelResource.xml">
            <Property name="Filename" value="MODELS/EFFECTS/DEBRIS/DRONE/ENGINE_GIB.SCENE.MBIN" />
            <Property name="ResHandle" value="GcResource.xml">
              <Property name="ResourceID" value="0" />
            </Property>
          </Property>
          <Property name="Number" value="1" />
          <Property name="Radius" value="1" />
          <Property name="Scale" value="1" />
          <Property name="Speed" value="20" />
          <Property name="AnglularSpeed" value="0.1" />
          <Property name="OverrideSeed" value="GcSeed.xml">
            <Property name="Seed" value="0" />
            <Property name="UseSeedValue" value="False" />
          </Property>
        </Property>
        <Property value="GcDebrisData.xml">
          <Property name="Filename" value="TkModelResource.xml">
            <Property name="Filename" value="MODELS/EFFECTS/DEBRIS/DRONE/EYE_GIB.SCENE.MBIN" />
            <Property name="ResHandle" value="GcResource.xml">
              <Property name="ResourceID" value="0" />
            </Property>
          </Property>
          <Property name="Number" value="1" />
          <Property name="Radius" value="1" />
          <Property name="Scale" value="1" />
          <Property name="Speed" value="20" />
          <Property name="AnglularSpeed" value="0.1" />
          <Property name="OverrideSeed" value="GcSeed.xml">
            <Property name="Seed" value="0" />
            <Property name="UseSeedValue" value="False" />
          </Property>
        </Property>
        <Property value="GcDebrisData.xml">
          <Property name="Filename" value="TkModelResource.xml">
            <Property name="Filename" value="MODELS/EFFECTS/DEBRIS/DRONE/PANELL_GIB.SCENE.MBIN" />
            <Property name="ResHandle" value="GcResource.xml">
              <Property name="ResourceID" value="0" />
            </Property>
          </Property>
          <Property name="Number" value="7" />
          <Property name="Radius" value="1" />
          <Property name="Scale" value="1.2" />
          <Property name="Speed" value="20" />
          <Property name="AnglularSpeed" value="0.1" />
          <Property name="OverrideSeed" value="GcSeed.xml">
            <Property name="Seed" value="0" />
            <Property name="UseSeedValue" value="False" />
          </Property>
        </Property>
        <Property value="GcDebrisData.xml">
          <Property name="Filename" value="TkModelResource.xml">
            <Property name="Filename" value="MODELS/EFFECTS/DEBRIS/DRONE/PANELR_GIB.SCENE.MBIN" />
            <Property name="ResHandle" value="GcResource.xml">
              <Property name="ResourceID" value="0" />
            </Property>
          </Property>
          <Property name="Number" value="4" />
          <Property name="Radius" value="1" />
          <Property name="Scale" value="1.2" />
          <Property name="Speed" value="20" />
          <Property name="AnglularSpeed" value="0.1" />
          <Property name="OverrideSeed" value="GcSeed.xml">
            <Property name="Seed" value="0" />
            <Property name="UseSeedValue" value="False" />
          </Property>
        </Property>
        <Property value="GcDebrisData.xml">
          <Property name="Filename" value="TkModelResource.xml">
            <Property name="Filename" value="MODELS/EFFECTS/DEBRIS/DRONE/CHASSIS_GIB.SCENE.MBIN" />
            <Property name="ResHandle" value="GcResource.xml">
              <Property name="ResourceID" value="0" />
            </Property>
          </Property>
          <Property name="Number" value="14" />
          <Property name="Radius" value="1" />
          <Property name="Scale" value="1.2" />
          <Property name="Speed" value="20" />
          <Property name="AnglularSpeed" value="0.1" />
          <Property name="OverrideSeed" value="GcSeed.xml">
            <Property name="Seed" value="0" />
            <Property name="UseSeedValue" value="False" />
          </Property>
        </Property>
]]
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "DRONEHIT"},
                            ["VALUE_CHANGE_TABLE"] = 
                            {
                                {"Life", "30"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "FIENDHATCH"},
                            ["PRECEDING_KEY_WORDS"] = {"Model"},
                            ["VALUE_CHANGE_TABLE"] = 
                            {
                                {"Filename", "MODELS/EFFECTS/BLOOD/FIENDEXPLODE.SCENE.MBIN"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "FIENDHATCH"},
                            ["PRECEDING_KEY_WORDS"] = {"GcDebrisData.xml"},
                            ["ADD_OPTION"] = "ADDafterSECTION",
                            ["ADD"] = 
[[
        <Property value="GcDebrisData.xml">
          <Property name="Filename" value="TkModelResource.xml">
            <Property name="Filename" value="MODELS/PLANETS/BIOMES/COMMON/RARERESOURCE/GROUND/SPOREBAG_DESTROYED.SCENE.MBIN" />
            <Property name="ResHandle" value="GcResource.xml">
              <Property name="ResourceID" value="0" />
            </Property>
          </Property>
          <Property name="Number" value="5" />
          <Property name="Radius" value="1.5" />
          <Property name="Scale" value="0.6" />
          <Property name="Speed" value="7" />
          <Property name="AnglularSpeed" value="4" />
          <Property name="OverrideSeed" value="GcSeed.xml">
            <Property name="Seed" value="0" />
            <Property name="UseSeedValue" value="False" />
          </Property>
        </Property>
]]
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "ROCKDEBRIS"},
                            ["VALUE_CHANGE_TABLE"] = 
                            {
                                {"Number", "12"},
                                {"Speed",  "3"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "PLANTDEBRIS"},
                            ["VALUE_CHANGE_TABLE"] = 
                            {
                                {"Number", "8"},
                                {"Speed",  "3"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "BAITDEBRIS"},
                            ["VALUE_CHANGE_TABLE"] = 
                            {
                                {"Radius", "1"},
                                {"Speed",  "3"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "FIENDDEATH"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Number", "4"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "FIENDDEATH"},
                            ["PRECEDING_KEY_WORDS"] = {"GcDebrisData.xml"},
                            ["ADD_OPTION"] = "ADDafterSECTION",
                            ["ADD"] =
[[
        <Property value="GcDebrisData.xml">
          <Property name="Filename" value="TkModelResource.xml">
            <Property name="Filename" value="MODELS/PLANETS/BIOMES/COMMON/RARERESOURCE/GROUND/SPOREBAG_DESTROYED.SCENE.MBIN" />
            <Property name="ResHandle" value="GcResource.xml">
              <Property name="ResourceID" value="0" />
            </Property>
          </Property>
          <Property name="Number" value="6" />
          <Property name="Radius" value="1.5" />
          <Property name="Scale" value="0.5" />
          <Property name="Speed" value="7" />
          <Property name="AnglularSpeed" value="3" />
          <Property name="OverrideSeed" value="GcSeed.xml">
            <Property name="Seed" value="0" />
            <Property name="UseSeedValue" value="False" />
          </Property>
        </Property>
]]
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "FIENDSPLAT"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Number", "4"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "FREIGHTERBROKEN"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Number", "3"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "SCRAPEXPLODE"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Number", "9"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "STORMCRYSTAL"},
                            ["INTEGER_TO_FLOAT"] = "FORCE",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Number", "6"},
                                {"Radius", "3"},
                                {"Scale",  "0.5"},
                                {"Speed",  "3"},                              
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id","WEIRDCRYSTAL",},
                            ["PRECEDING_KEY_WORDS"] = {"Debris"},	
                            ["CREATE_HOS"] = "TRUE",
                            ["ADD"] =
[[
        <Property value="GcDebrisData.xml">
          <Property name="Filename" value="TkModelResource.xml">
            <Property name="Filename" value="MODELS/EFFECTS/DEBRIS/ROCKDEBRIS.SCENE.MBIN" />
            <Property name="ResHandle" value="GcResource.xml">
              <Property name="ResourceID" value="0" />
            </Property>
          </Property>
          <Property name="Number" value="3" />
          <Property name="Radius" value="1" />
          <Property name="Scale" value="0.3" />
          <Property name="Speed" value="6" />
          <Property name="AnglularSpeed" value="1" />
          <Property name="OverrideSeed" value="GcSeed.xml">
            <Property name="Seed" value="0" />
            <Property name="UseSeedValue" value="False" />
          </Property>
        </Property>
]]
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "TORNADODEBRIS"},
                            ["VALUE_CHANGE_TABLE"] = 
                            {
                                {"Life", "30"}
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "METEORSPARKS"},
                            ["VALUE_CHANGE_TABLE"] = 
                            {
                                {"Life", "20"}
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id","REDEXPLODE",},
                            ["PRECEDING_KEY_WORDS"] = {"Debris"},	
                            ["CREATE_HOS"] = "TRUE",
                            ["ADD"] =
[[
        <Property value="GcDebrisData.xml">
          <Property name="Filename" value="TkModelResource.xml">
            <Property name="Filename" value="MODELS/EFFECTS/DEBRIS/ROCKDEBRIS.SCENE.MBIN" />
            <Property name="ResHandle" value="GcResource.xml">
              <Property name="ResourceID" value="0" />
            </Property>
          </Property>
          <Property name="Number" value="12" />
          <Property name="Radius" value="3" />
          <Property name="Scale" value="1" />
          <Property name="Speed" value="6" />
          <Property name="AnglularSpeed" value="1" />
          <Property name="OverrideSeed" value="GcSeed.xml">
            <Property name="Seed" value="0" />
            <Property name="UseSeedValue" value="False" />
          </Property>
        </Property>
]]
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id","GREENEXPLODE",},
                            ["PRECEDING_KEY_WORDS"] = {"Debris"},	
                            ["CREATE_HOS"] = "TRUE",
                            ["ADD"] =
[[
        <Property value="GcDebrisData.xml">
          <Property name="Filename" value="TkModelResource.xml">
            <Property name="Filename" value="MODELS/EFFECTS/DEBRIS/ROCKDEBRIS.SCENE.MBIN" />
            <Property name="ResHandle" value="GcResource.xml">
              <Property name="ResourceID" value="0" />
            </Property>
          </Property>
          <Property name="Number" value="12" />
          <Property name="Radius" value="3" />
          <Property name="Scale" value="1" />
          <Property name="Speed" value="6" />
          <Property name="AnglularSpeed" value="1" />
          <Property name="OverrideSeed" value="GcSeed.xml">
            <Property name="Seed" value="0" />
            <Property name="UseSeedValue" value="False" />
          </Property>
        </Property>
]]
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id","YELLOWEXPLODE",},
                            ["PRECEDING_KEY_WORDS"] = {"Debris"},	
                            ["CREATE_HOS"] = "TRUE",
                            ["ADD"] =
[[
        <Property value="GcDebrisData.xml">
          <Property name="Filename" value="TkModelResource.xml">
            <Property name="Filename" value="MODELS/EFFECTS/DEBRIS/ROCKDEBRIS.SCENE.MBIN" />
            <Property name="ResHandle" value="GcResource.xml">
              <Property name="ResourceID" value="0" />
            </Property>
          </Property>
          <Property name="Number" value="12" />
          <Property name="Radius" value="3" />
          <Property name="Scale" value="1" />
          <Property name="Speed" value="6" />
          <Property name="AnglularSpeed" value="1" />
          <Property name="OverrideSeed" value="GcSeed.xml">
            <Property name="Seed" value="0" />
            <Property name="UseSeedValue" value="False" />
          </Property>
        </Property>
]]
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id","SENTINELARMOUR",},
                            ["PRECEDING_KEY_WORDS"] = {"Debris"},	
                            ["CREATE_HOS"] = "TRUE",
                            ["ADD"] =
[[
        <Property value="GcDebrisData.xml">
          <Property name="Filename" value="TkModelResource.xml">
            <Property name="Filename" value="MODELS/EFFECTS/INEDITOR/PLANET/DRONEEXPLODE/DEBRISTRAIL.SCENE.MBIN" />
            <Property name="ResHandle" value="GcResource.xml">
              <Property name="ResourceID" value="0" />
            </Property>
          </Property>
          <Property name="Number" value="2" />
          <Property name="Radius" value="1" />
          <Property name="Scale" value="1" />
          <Property name="Speed" value="30" />
          <Property name="AnglularSpeed" value="10" />
          <Property name="OverrideSeed" value="GcSeed.xml">
            <Property name="Seed" value="0" />
            <Property name="UseSeedValue" value="False" />
          </Property>
        </Property>
        <Property value="GcDebrisData.xml">
          <Property name="Filename" value="TkModelResource.xml">
            <Property name="Filename" value="MODELS/EFFECTS/DEBRIS/DRONE/ENGINE_GIB.SCENE.MBIN" />
            <Property name="ResHandle" value="GcResource.xml">
              <Property name="ResourceID" value="0" />
            </Property>
          </Property>
          <Property name="Number" value="1" />
          <Property name="Radius" value="1" />
          <Property name="Scale" value="0.7" />
          <Property name="Speed" value="20" />
          <Property name="AnglularSpeed" value="0.1" />
          <Property name="OverrideSeed" value="GcSeed.xml">
            <Property name="Seed" value="0" />
            <Property name="UseSeedValue" value="False" />
          </Property>
        </Property>
        <Property value="GcDebrisData.xml">
          <Property name="Filename" value="TkModelResource.xml">
            <Property name="Filename" value="MODELS/EFFECTS/DEBRIS/DRONE/EYE_GIB.SCENE.MBIN" />
            <Property name="ResHandle" value="GcResource.xml">
              <Property name="ResourceID" value="0" />
            </Property>
          </Property>
          <Property name="Number" value="1" />
          <Property name="Radius" value="1" />
          <Property name="Scale" value="0.7" />
          <Property name="Speed" value="20" />
          <Property name="AnglularSpeed" value="0.1" />
          <Property name="OverrideSeed" value="GcSeed.xml">
            <Property name="Seed" value="0" />
            <Property name="UseSeedValue" value="False" />
          </Property>
        </Property>
        <Property value="GcDebrisData.xml">
          <Property name="Filename" value="TkModelResource.xml">
            <Property name="Filename" value="MODELS/EFFECTS/DEBRIS/DRONE/PANELL_GIB.SCENE.MBIN" />
            <Property name="ResHandle" value="GcResource.xml">
              <Property name="ResourceID" value="0" />
            </Property>
          </Property>
          <Property name="Number" value="4" />
          <Property name="Radius" value="1" />
          <Property name="Scale" value="1.2" />
          <Property name="Speed" value="20" />
          <Property name="AnglularSpeed" value="0.1" />
          <Property name="OverrideSeed" value="GcSeed.xml">
            <Property name="Seed" value="0" />
            <Property name="UseSeedValue" value="False" />
          </Property>
        </Property>
        <Property value="GcDebrisData.xml">
          <Property name="Filename" value="TkModelResource.xml">
            <Property name="Filename" value="MODELS/EFFECTS/DEBRIS/DRONE/PANELR_GIB.SCENE.MBIN" />
            <Property name="ResHandle" value="GcResource.xml">
              <Property name="ResourceID" value="0" />
            </Property>
          </Property>
          <Property name="Number" value="4" />
          <Property name="Radius" value="1" />
          <Property name="Scale" value="1.2" />
          <Property name="Speed" value="20" />
          <Property name="AnglularSpeed" value="0.1" />
          <Property name="OverrideSeed" value="GcSeed.xml">
            <Property name="Seed" value="0" />
            <Property name="UseSeedValue" value="False" />
          </Property>
        </Property>
        <Property value="GcDebrisData.xml">
          <Property name="Filename" value="TkModelResource.xml">
            <Property name="Filename" value="MODELS/EFFECTS/DEBRIS/DRONE/CHASSIS_GIB.SCENE.MBIN" />
            <Property name="ResHandle" value="GcResource.xml">
              <Property name="ResourceID" value="0" />
            </Property>
          </Property>
          <Property name="Number" value="4" />
          <Property name="Radius" value="1" />
          <Property name="Scale" value="1.2" />
          <Property name="Speed" value="20" />
          <Property name="AnglularSpeed" value="0.1" />
          <Property name="OverrideSeed" value="GcSeed.xml">
            <Property name="Seed" value="0" />
            <Property name="UseSeedValue" value="False" />
          </Property>
        </Property>
]]
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id","DRONEWALKEREXPL",},
                            ["PRECEDING_KEY_WORDS"] = {"Debris"},	
                            ["CREATE_HOS"] = "TRUE",
                            ["ADD"] =
[[
        <Property value="GcDebrisData.xml">
          <Property name="Filename" value="TkModelResource.xml">
            <Property name="Filename" value="MODELS/EFFECTS/INEDITOR/PLANET/DRONEEXPLODE/DEBRISTRAIL.SCENE.MBIN" />
            <Property name="ResHandle" value="GcResource.xml">
              <Property name="ResourceID" value="0" />
            </Property>
          </Property>
          <Property name="Number" value="2" />
          <Property name="Radius" value="1" />
          <Property name="Scale" value="1" />
          <Property name="Speed" value="30" />
          <Property name="AnglularSpeed" value="10" />
          <Property name="OverrideSeed" value="GcSeed.xml">
            <Property name="Seed" value="0" />
            <Property name="UseSeedValue" value="False" />
          </Property>
        </Property>
        <Property value="GcDebrisData.xml">
          <Property name="Filename" value="TkModelResource.xml">
            <Property name="Filename" value="MODELS/EFFECTS/DEBRIS/DRONE/ENGINE_GIB.SCENE.MBIN" />
            <Property name="ResHandle" value="GcResource.xml">
              <Property name="ResourceID" value="0" />
            </Property>
          </Property>
          <Property name="Number" value="1" />
          <Property name="Radius" value="1" />
          <Property name="Scale" value="0.7" />
          <Property name="Speed" value="20" />
          <Property name="AnglularSpeed" value="0.1" />
          <Property name="OverrideSeed" value="GcSeed.xml">
            <Property name="Seed" value="0" />
            <Property name="UseSeedValue" value="False" />
          </Property>
        </Property>
        <Property value="GcDebrisData.xml">
          <Property name="Filename" value="TkModelResource.xml">
            <Property name="Filename" value="MODELS/EFFECTS/DEBRIS/DRONE/EYE_GIB.SCENE.MBIN" />
            <Property name="ResHandle" value="GcResource.xml">
              <Property name="ResourceID" value="0" />
            </Property>
          </Property>
          <Property name="Number" value="1" />
          <Property name="Radius" value="1" />
          <Property name="Scale" value="0.7" />
          <Property name="Speed" value="20" />
          <Property name="AnglularSpeed" value="0.1" />
          <Property name="OverrideSeed" value="GcSeed.xml">
            <Property name="Seed" value="0" />
            <Property name="UseSeedValue" value="False" />
          </Property>
        </Property>
        <Property value="GcDebrisData.xml">
          <Property name="Filename" value="TkModelResource.xml">
            <Property name="Filename" value="MODELS/EFFECTS/DEBRIS/DRONE/PANELL_GIB.SCENE.MBIN" />
            <Property name="ResHandle" value="GcResource.xml">
              <Property name="ResourceID" value="0" />
            </Property>
          </Property>
          <Property name="Number" value="14" />
          <Property name="Radius" value="1" />
          <Property name="Scale" value="1.2" />
          <Property name="Speed" value="20" />
          <Property name="AnglularSpeed" value="0.1" />
          <Property name="OverrideSeed" value="GcSeed.xml">
            <Property name="Seed" value="0" />
            <Property name="UseSeedValue" value="False" />
          </Property>
        </Property>
        <Property value="GcDebrisData.xml">
          <Property name="Filename" value="TkModelResource.xml">
            <Property name="Filename" value="MODELS/EFFECTS/DEBRIS/DRONE/PANELR_GIB.SCENE.MBIN" />
            <Property name="ResHandle" value="GcResource.xml">
              <Property name="ResourceID" value="0" />
            </Property>
          </Property>
          <Property name="Number" value="13" />
          <Property name="Radius" value="1" />
          <Property name="Scale" value="1.2" />
          <Property name="Speed" value="20" />
          <Property name="AnglularSpeed" value="0.1" />
          <Property name="OverrideSeed" value="GcSeed.xml">
            <Property name="Seed" value="0" />
            <Property name="UseSeedValue" value="False" />
          </Property>
        </Property>
        <Property value="GcDebrisData.xml">
          <Property name="Filename" value="TkModelResource.xml">
            <Property name="Filename" value="MODELS/EFFECTS/DEBRIS/DRONE/CHASSIS_GIB.SCENE.MBIN" />
            <Property name="ResHandle" value="GcResource.xml">
              <Property name="ResourceID" value="0" />
            </Property>
          </Property>
          <Property name="Number" value="14" />
          <Property name="Radius" value="1" />
          <Property name="Scale" value="1.2" />
          <Property name="Speed" value="20" />
          <Property name="AnglularSpeed" value="0.1" />
          <Property name="OverrideSeed" value="GcSeed.xml">
            <Property name="Seed" value="0" />
            <Property name="UseSeedValue" value="False" />
          </Property>
        </Property>
]]
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "DRONEWALKEREXPL", "Life", "3"},
                            ["LINE_OFFSET"] = "+1",
                            ["VALUE_CHANGE_TABLE"] = 
                            {
                                {"Scale", "8"},
                            }
                        },
                        {
                            ["FOREACH_SKW_GROUP"] =
                            {
                                {"Id", "BLUEEXPLODE"},
                                {"Id", "DOOREXPLODE"},
                                {"Id", "DRONEEXPLODE"},
                                {"Id", "ROCKEXPLODE"},
                                {"Id", "RESOURCEEXPLODE"},
                                {"Id", "BLOODSPLAT"},
                                {"Id", "WALKEREXPLODE"},
                                {"Id", "ALIENBLOBEXPLOD"},
                                {"Id", "DEPOTWAREXPLODE"},
                                {"Id", "DEATHBLOODSMALL"},
                                {"Id", "DEATHBLOODMED"},
                                {"Id", "DEATHBLOODBIG"},
                                {"Id", "BLOODDECAL"},
                                {"Id", "BLOODDECALMED"},
                                {"Id", "BLOODDECALBIG"},
                                {"Id", "S_ROCKEXPLODE"},
                                {"Id", "FIENDHATCH"},
                                {"Id", "ROCKDEBRIS"},
                                {"Id", "PLANTDEBRIS"},
                                {"Id", "BAITDEBRIS"},
                                {"Id", "SPOREBAGPOP"},
                                {"Id", "FIENDDEATH"},
                                {"Id", "FIENDSPLAT"},
                                {"Id", "JELLYSPLAT"},
                                {"Id", "FIENDFISHDEATH"},
                                {"Id", "FREIGHTERBROKEN"},
                                {"Id", "SCRAPEXPLODE"},
                                {"Id", "STORMCRYSTAL"},
                                {"Id", "WEIRDCRYSTAL"},
                                {"Id", "FJELLYSPLAT"},                            
                                {"Id", "REDEXPLODE"},
                                {"Id", "GREENEXPLODE"},
                                {"Id", "YELLOWEXPLODE"},
                                {"Id", "SENTINELARMOUR"},
                                {"Id", "DRONEWALKEREXPL"},
                            },
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Life",  "60"},
                            }
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "METADATA/EFFECTS/PLAYEREFFECTS.MBIN",
                    ["EXML_CHANGE_TABLE"] = 
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "FASTLAND"},
                            ["VALUE_CHANGE_TABLE"] = 
                            {
                                {"Number", "7"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "SUBSTANCEPOP"},
                            ["VALUE_CHANGE_TABLE"] = 
                            {
                                {"Number", "7"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "TERRAINEDIT"},
                            ["VALUE_CHANGE_TABLE"] = 
                            {
                                {"Number", "6"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "TERRAINCREATE"},
                            ["VALUE_CHANGE_TABLE"] = 
                            {
                                {"Number", "3"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "GROUNDPOP"},
                            ["VALUE_CHANGE_TABLE"] = 
                            {
                                {"Number", "8"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "VEHICLEGUNHIT"},
                            ["VALUE_CHANGE_TABLE"] = 
                            {
                                {"Number", "4"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "LASERNEEDTECH"},
                            ["VALUE_CHANGE_TABLE"] = 
                            {
                                {"Life", "0.7"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "TERRAIN_FLATTEN"},
                            ["VALUE_CHANGE_TABLE"] = 
                            {
                                {"Number", "6"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "GRENEXPROBOT"},
                            ["VALUE_CHANGE_TABLE"] = 
                            {
                                {"Life", "3"},
                            }
                        },
                        {
                            ["FOREACH_SKW_GROUP"] =
                            {
                                {"Id", "FASTLAND"},
                                {"Id", "SUBSTANCEPOP"},
                                {"Id", "TERRAINEDIT"},
                                {"Id", "TERRAINCREATE"},
                                {"Id", "GROUNDPOP"},
                                {"Id", "GRENADEEXPLODE"},
                                {"Id", "VEHICLEGUNHIT"},
                                {"Id", "TERRAIN_FLATTEN"},
                            },
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Life",  "60"},
                            }
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "METADATA/EFFECTS/SPACEEFFECTS.MBIN",
                    ["EXML_CHANGE_TABLE"] = 
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "ASTEROID_R_EXP"},
                            ["VALUE_CHANGE_TABLE"] = 
                            {
                                {"Speed", "30"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "ASTEROID_HIT"},
                            ["VALUE_CHANGE_TABLE"] = 
                            {
                                {"AkEvent", "ASTEROID_EXPLODE"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id","ASTEROID_HIT"},
                            ["PRECEDING_KEY_WORDS"] = {"Debris"},	
                            ["CREATE_HOS"] = "TRUE",
                            ["ADD"] =
[[
        <Property value="GcDebrisData.xml">
          <Property name="Filename" value="TkModelResource.xml">
            <Property name="Filename" value="MODELS/SPACE/ASTEROIDS/ASTEROIDXL.SCENE.MBIN" />
            <Property name="ResHandle" value="GcResource.xml">
              <Property name="ResourceID" value="0" />
            </Property>
          </Property>
          <Property name="Number" value="4" />
          <Property name="Radius" value="20" />
          <Property name="Scale" value="0.07" />
          <Property name="Speed" value="30" />
          <Property name="AnglularSpeed" value="30" />
          <Property name="OverrideSeed" value="GcSeed.xml">
            <Property name="Seed" value="0" />
            <Property name="UseSeedValue" value="False" />
          </Property>
        </Property>
        <Property value="GcDebrisData.xml">
          <Property name="Filename" value="TkModelResource.xml">
            <Property name="Filename" value="MODELS/SPACE/ASTEROIDS/ASTEROIDXL.SCENE.MBIN" />
            <Property name="ResHandle" value="GcResource.xml">
              <Property name="ResourceID" value="0" />
            </Property>
          </Property>
          <Property name="Number" value="5" />
          <Property name="Radius" value="50" />
          <Property name="Scale" value="0.04" />
          <Property name="Speed" value="1000" />
          <Property name="AnglularSpeed" value="30" />
          <Property name="OverrideSeed" value="GcSeed.xml">
            <Property name="Seed" value="0" />
            <Property name="UseSeedValue" value="False" />
          </Property>
        </Property>
]]
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "ASTEROID_M_EXP"},
                            ["PRECEDING_KEY_WORDS"] = {"GcDebrisData.xml"},
                            ["VALUE_CHANGE_TABLE"] = 
                            {
                                {"Number", "5"},
                                {"Speed",  "30"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "ASTEROID_S_EXP"},
                            ["VALUE_CHANGE_TABLE"] = 
                            {
                                {"Speed",  "30"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id","ASTEROID_L_EXP"},
                            ["PRECEDING_KEY_WORDS"] = {"Debris"},	
                            ["CREATE_HOS"] = "TRUE",
                            ["ADD"] =
[[
        <Property value="GcDebrisData.xml">
          <Property name="Filename" value="TkModelResource.xml">
            <Property name="Filename" value="MODELS/SPACE/ASTEROIDS/ASTEROIDXL.SCENE.MBIN" />
            <Property name="ResHandle" value="GcResource.xml">
              <Property name="ResourceID" value="0" />
            </Property>
          </Property>
          <Property name="Number" value="5" />
          <Property name="Radius" value="30" />
          <Property name="Scale" value="0.07" />
          <Property name="Speed" value="100" />
          <Property name="AnglularSpeed" value="30" />
          <Property name="OverrideSeed" value="GcSeed.xml">
            <Property name="Seed" value="0" />
            <Property name="UseSeedValue" value="False" />
          </Property>
        </Property>
        <Property value="GcDebrisData.xml">
          <Property name="Filename" value="TkModelResource.xml">
            <Property name="Filename" value="MODELS/SPACE/ASTEROIDS/ASTEROIDXL.SCENE.MBIN" />
            <Property name="ResHandle" value="GcResource.xml">
              <Property name="ResourceID" value="0" />
            </Property>
          </Property>
          <Property name="Number" value="4" />
          <Property name="Radius" value="50" />
          <Property name="Scale" value="0.04" />
          <Property name="Speed" value="1000" />
          <Property name="AnglularSpeed" value="30" />
          <Property name="OverrideSeed" value="GcSeed.xml">
            <Property name="Seed" value="0" />
            <Property name="UseSeedValue" value="False" />
          </Property>
        </Property>
]]
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "SHIPEXPLODE", "Filename", "TkModelResource.xml"},
                            ["ADD_OPTION"] = "ADDafterLINE",
                            ["ADD"] = 
[[
            <Property name="Filename" value="MODELS/EFFECTS/DEBRIS/SHIPEXPLMODELDEBRISB.SCENE.MBIN" />
            <Property name="ResHandle" value="GcResource.xml">
              <Property name="ResourceID" value="0" />
            </Property>
          </Property>
          <Property name="Number" value="4" />
          <Property name="Radius" value="5" />
          <Property name="Scale" value="4" />
          <Property name="Speed" value="100" />
          <Property name="AnglularSpeed" value="0.1" />
          <Property name="OverrideSeed" value="GcSeed.xml">
            <Property name="Seed" value="0" />
            <Property name="UseSeedValue" value="False" />
          </Property>
        </Property>
        <Property value="GcDebrisData.xml">
          <Property name="Filename" value="TkModelResource.xml">
            <Property name="Filename" value="MODELS/EFFECTS/DEBRIS/DRONE/PANELL_GIB.SCENE.MBIN" />
            <Property name="ResHandle" value="GcResource.xml">
              <Property name="ResourceID" value="0" />
            </Property>
          </Property>
          <Property name="Number" value="3" />
          <Property name="Radius" value="4" />
          <Property name="Scale" value="4" />
          <Property name="Speed" value="100" />
          <Property name="AnglularSpeed" value="0.1" />
          <Property name="OverrideSeed" value="GcSeed.xml">
            <Property name="Seed" value="0" />
            <Property name="UseSeedValue" value="False" />
          </Property>
        </Property>
        <Property value="GcDebrisData.xml">
          <Property name="Filename" value="TkModelResource.xml">
            <Property name="Filename" value="MODELS/EFFECTS/DEBRIS/DRONE/PANELR_GIB.SCENE.MBIN" />
            <Property name="ResHandle" value="GcResource.xml">
              <Property name="ResourceID" value="0" />
            </Property>
          </Property>
          <Property name="Number" value="3" />
          <Property name="Radius" value="4" />
          <Property name="Scale" value="4" />
          <Property name="Speed" value="100" />
          <Property name="AnglularSpeed" value="0.1" />
          <Property name="OverrideSeed" value="GcSeed.xml">
            <Property name="Seed" value="0" />
            <Property name="UseSeedValue" value="False" />
          </Property>
        </Property>
        <Property value="GcDebrisData.xml">
          <Property name="Filename" value="TkModelResource.xml">
            <Property name="Filename" value="MODELS/EFFECTS/DEBRIS/DRONE/CHASSIS_GIB.SCENE.MBIN" />
            <Property name="ResHandle" value="GcResource.xml">
              <Property name="ResourceID" value="0" />
            </Property>
          </Property>
          <Property name="Number" value="3" />
          <Property name="Radius" value="3" />
          <Property name="Scale" value="4" />
          <Property name="Speed" value="100" />
          <Property name="AnglularSpeed" value="0.1" />
          <Property name="OverrideSeed" value="GcSeed.xml">
            <Property name="Seed" value="0" />
            <Property name="UseSeedValue" value="False" />
          </Property>
        </Property>
        <Property value="GcDebrisData.xml">
          <Property name="Filename" value="TkModelResource.xml">
]]
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "SHIPEXPLODE"},
                            ["PRECEDING_KEY_WORDS"] = {"GcDebrisData.xml","GcDebrisData.xml","GcDebrisData.xml","GcDebrisData.xml","GcDebrisData.xml"},
                            ["INTEGER_TO_FLOAT"] = "FORCE",
                            ["VALUE_CHANGE_TABLE"] = 
                            {
                                {"Number",         "4"},
                                {"Scale",          "4"},
                                {"AnglularSpeed",  "0.1"},
                            }
                        },
                        {
                            ["FOREACH_SKW_GROUP"] =
                            {
                                {"Id", "ASTEROId_R_EXP"},
                                {"Id", "ASTEROId_M_EXP"},
                                {"Id", "ASTEROId_S_EXP"},
                                {"Id", "ASTEROId_L_EXP"},
                                {"Id", "AISHIPSMOKE"},
                                {"Id", "AISHIPDAMAGED"},
                                {"Id", "SHIPDYING"},
                                {"Id", "SHIPEXPLODE"},
                                {"Id", "SPACEPOI"},
                                {"Id", "INFESTPILLAREXP"},
                            },
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Life",  "60"},
                            }
                        },
                    }
                },
            }
        },
    }
}