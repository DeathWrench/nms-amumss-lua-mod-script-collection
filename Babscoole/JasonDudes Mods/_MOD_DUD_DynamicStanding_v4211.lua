ER_TRADE =
[[
          <Property value="GcRewardTableItem.xml">
            <Property name="PercentageChance" value="20" />
            <Property name="Reward" value="GcRewardFactionStanding.xml">
              <Property name="Faction" value="GcMissionFaction.xml">
                <Property name="MissionFaction" value="TradeGuild" />
              </Property>
              <Property name="AmountMin" value="1" />
              <Property name="AmountMax" value="1" />
              <Property name="SetToMinBeforeAdd" value="False" />
            </Property>
            <Property name="LabelID" value="" />
          </Property>
]]

ER_WAR =
[[
          <Property value="GcRewardTableItem.xml">
            <Property name="PercentageChance" value="20" />
            <Property name="Reward" value="GcRewardFactionStanding.xml">
              <Property name="Faction" value="GcMissionFaction.xml">
                <Property name="MissionFaction" value="WarriorGuild" />
              </Property>
              <Property name="AmountMin" value="1" />
              <Property name="AmountMax" value="1" />
              <Property name="SetToMinBeforeAdd" value="False" />
            </Property>
            <Property name="LabelID" value="" />
          </Property>
]]

ER_EXPL =
[[
          <Property value="GcRewardTableItem.xml">
            <Property name="PercentageChance" value="20" />
            <Property name="Reward" value="GcRewardFactionStanding.xml">
              <Property name="Faction" value="GcMissionFaction.xml">
                <Property name="MissionFaction" value="ExplorerGuild" />
              </Property>
              <Property name="AmountMin" value="1" />
              <Property name="AmountMax" value="1" />
              <Property name="SetToMinBeforeAdd" value="False" />
            </Property>
            <Property name="LabelID" value="" />
          </Property>
]]

ER_STAND =
[[
          <Property value="GcRewardTableItem.xml">
            <Property name="PercentageChance" value="20" />
            <Property name="Reward" value="GcRewardStanding.xml">
              <Property name="Race" value="GcAlienRace.xml">
                <Property name="AlienRace" value="None" />
              </Property>
              <Property name="AmountMin" value="1" />
              <Property name="AmountMax" value="1" />
            </Property>
            <Property name="LabelID" value="" />
          </Property>
]]


NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]    = "_MOD_DUD_DynamicStanding_v4211.pak",
["MOD_AUTHOR"]      = "JasonDude7116",
["LUA_AUTHOR"]      = "Babscoole",
["NMS_VERSION"]     = "4.21",
["MODIFICATIONS"]   =
    {
        {
            ["MBIN_CHANGE_TABLE"] =
            {
                {
                    ["MBIN_FILE_SOURCE"] = "METADATA\REALITY\TABLES\REWARDTABLE.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id","R_CHRT_TREASURE",},
                            ["PRECEDING_KEY_WORDS"] = {"GcRewardTableItem.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"FailureOSD", "T_CHART_USED",},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id","SEC_CRASHEDSHIP",},
                            ["PRECEDING_KEY_WORDS"] = {"GcRewardTableItem.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"FailureOSD", "DISTRESS_NPC",},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id","R_SCANSENTCRASH",},
                            ["PRECEDING_KEY_WORDS"] = {"GcRewardTableItem.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"FailureOSD", "SENTSHIP_GALMAP",},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id","R_CHART_ROBOT",},
                            ["PRECEDING_KEY_WORDS"] = {"GcRewardTableItem.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"FailureOSD", "",},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id","TUT_CRASH_SCAN",},
                            ["PRECEDING_KEY_WORDS"] = {"GcRewardTableItem.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"FailureOSD", "T_CRASH_SIGNAL",},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id","SEC_DIRECTIONS",},
                            ["PRECEDING_KEY_WORDS"] = {"GcRewardTableItem.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"FailureOSD", "RUIN",},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id","SEC_DIRECTIONS",},
                            ["PRECEDING_KEY_WORDS"] = {"GcRewardTableItem.xml","GcRewardTableItem.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"FailureOSD", "CRASHED_FREIGHTER",},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id","SEC_DIRECTIONS",},
                            ["PRECEDING_KEY_WORDS"] = {"GcRewardTableItem.xml","GcRewardTableItem.xml","GcRewardTableItem.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"FailureOSD", "DAMAGEDMACHINE",},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id","SEC_DIRECTIONS",},
                            ["PRECEDING_KEY_WORDS"] = {"GcRewardTableItem.xml","GcRewardTableItem.xml","GcRewardTableItem.xml","GcRewardTableItem.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"FailureOSD", "OUTPOST",},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id","RANDOM_SCAN_A",},
                            ["PRECEDING_KEY_WORDS"] = {"GcRewardTableItem.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"FailureOSD", "FACTORY",},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id","RANDOM_SCAN_A",},
                            ["PRECEDING_KEY_WORDS"] = {"GcRewardTableItem.xml","GcRewardTableItem.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"FailureOSD", "HARVESTER",},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id","RANDOM_SCAN_B",},
                            ["PRECEDING_KEY_WORDS"] = {"GcRewardTableItem.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"FailureOSD", "DISTRESS",},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id","RANDOM_SCAN_B",},
                            ["PRECEDING_KEY_WORDS"] = {"GcRewardTableItem.xml","GcRewardTableItem.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"FailureOSD", "DISTRESS_NPC",},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id","RANDOM_SCAN_B",},
                            ["PRECEDING_KEY_WORDS"] = {"GcRewardTableItem.xml","GcRewardTableItem.xml","GcRewardTableItem.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"FailureOSD", "CRASHED_FREIGHTER",},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id","RANDOM_SCAN_B",},
                            ["PRECEDING_KEY_WORDS"] = {"GcRewardTableItem.xml","GcRewardTableItem.xml","GcRewardTableItem.xml","GcRewardTableItem.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"FailureOSD", "OBSERVATORY",},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id","RANDOM_SCAN_C",},
                            ["PRECEDING_KEY_WORDS"] = {"GcRewardTableItem.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"FailureOSD", "OUTPOST",},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id","RANDOM_SCAN_C",},
                            ["PRECEDING_KEY_WORDS"] = {"GcRewardTableItem.xml","GcRewardTableItem.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"FailureOSD", "SHOP",},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id","RANDOM_SCAN_C",},
                            ["PRECEDING_KEY_WORDS"] = {"GcRewardTableItem.xml","GcRewardTableItem.xml","GcRewardTableItem.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"FailureOSD", "RADIOTOWER",},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id","RANDOM_SCAN_C",},
                            ["PRECEDING_KEY_WORDS"] = {"GcRewardTableItem.xml","GcRewardTableItem.xml","GcRewardTableItem.xml","GcRewardTableItem.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"FailureOSD", "OBSERVATORY",},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id","RANDOM_SCAN_D",},
                            ["PRECEDING_KEY_WORDS"] = {"GcRewardTableItem.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"FailureOSD", "MONOLITH",},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id","RANDOM_SCAN_D",},
                            ["PRECEDING_KEY_WORDS"] = {"GcRewardTableItem.xml","GcRewardTableItem.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"FailureOSD", "RUIN",},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id","R_STARCHART_A",},
                            ["PRECEDING_KEY_WORDS"] = {"GcRewardTableItem.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"FailureOSD", "FACTORY",},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id","R_STARCHART_A",},
                            ["PRECEDING_KEY_WORDS"] = {"GcRewardTableItem.xml","GcRewardTableItem.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"FailureOSD", "HARVESTER",},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id","R_STARCHART_B",},
                            ["PRECEDING_KEY_WORDS"] = {"GcRewardTableItem.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"FailureOSD", "DISTRESS",},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id","R_STARCHART_B",},
                            ["PRECEDING_KEY_WORDS"] = {"GcRewardTableItem.xml","GcRewardTableItem.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"FailureOSD", "DISTRESS_NPC",},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id","R_STARCHART_B",},
                            ["PRECEDING_KEY_WORDS"] = {"GcRewardTableItem.xml","GcRewardTableItem.xml","GcRewardTableItem.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"FailureOSD", "CRASHED_FREIGHTER",},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id","R_STARCHART_B",},
                            ["PRECEDING_KEY_WORDS"] = {"GcRewardTableItem.xml","GcRewardTableItem.xml","GcRewardTableItem.xml","GcRewardTableItem.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"FailureOSD", "OBSERVATORY",},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id","R_STARCHART_C",},
                            ["PRECEDING_KEY_WORDS"] = {"GcRewardTableItem.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"FailureOSD", "SHELTER",},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id","R_STARCHART_C",},
                            ["PRECEDING_KEY_WORDS"] = {"GcRewardTableItem.xml","GcRewardTableItem.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"FailureOSD", "OUTPOST",},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id","R_STARCHART_C",},
                            ["PRECEDING_KEY_WORDS"] = {"GcRewardTableItem.xml","GcRewardTableItem.xml","GcRewardTableItem.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"FailureOSD", "SHOP",},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id","R_STARCHART_C",},
                            ["PRECEDING_KEY_WORDS"] = {"GcRewardTableItem.xml","GcRewardTableItem.xml","GcRewardTableItem.xml","GcRewardTableItem.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"FailureOSD", "RADIOTOWER",},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id","R_STARCHART_C",},
                            ["PRECEDING_KEY_WORDS"] = {"GcRewardTableItem.xml","GcRewardTableItem.xml","GcRewardTableItem.xml","GcRewardTableItem.xml","GcRewardTableItem.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"FailureOSD", "OBSERVATORY",},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id","R_STARCHART_D",},
                            ["PRECEDING_KEY_WORDS"] = {"GcRewardTableItem.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"FailureOSD", "MONOLITH",},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id","R_STARCHART_D",},
                            ["PRECEDING_KEY_WORDS"] = {"GcRewardTableItem.xml","GcRewardTableItem.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"FailureOSD", "RUIN",},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id","FREIGHTER_SAVED",},
                            ["PRECEDING_KEY_WORDS"] = {"GcRewardTableItem.xml","GcRewardTableItem.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"AmountMin", "1",},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id","TRADER_REP",},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"AmountMin", "1",},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id","PIRATE_BATTLE",},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"AmountMin", "1",},
                                {"AmountMax", "1",},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id","PIRATE_FIGHT",},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"AmountMin", "1",},
                                {"AmountMax", "1",},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id","PIRATE_BOUNTY1",},
                            ["PRECEDING_KEY_WORDS"] = {"GcRewardTableItem.xml","GcRewardTableItem.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"AmountMax", "1",},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id","PIRATE_BOUNTY2",},
                            ["PRECEDING_KEY_WORDS"] = {"GcRewardTableItem.xml","GcRewardTableItem.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"AmountMin", "1",},
                                {"AmountMax", "2",},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id","PIRATE_BOUNTY3",},
                            ["PRECEDING_KEY_WORDS"] = {"GcRewardTableItem.xml","GcRewardTableItem.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"AmountMin", "1",},
                                {"AmountMax", "3",},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id","R_CREW_GUILD",},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"AmountMin", "1",},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id","R_CAPT_GUILD",},
                            ["PRECEDING_KEY_WORDS"] = {"GcRewardTableItem.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"AmountMin", "1",},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id","KILLED_CIV",},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"AmountMax", "-3",},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id","DE_SPACE_POI_1",},
                            ["PRECEDING_KEY_WORDS"] = {"GcRewardTableItem.xml",},
                            ["SECTION_ACTIVE"] = {4,},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"AmountMin", "1",},
                                {"AmountMax", "2",},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id","SEC_STDHIGH_WAR",},
                            ["PRECEDING_KEY_WORDS"] = {"GcRewardTableItem.xml",},
                            ["ADD_OPTION"] = "ADDafterSECTION",
                            ["ADD"] =
[[
          <Property value="GcRewardTableItem.xml">
            <Property name="PercentageChance" value="50" />
            <Property name="Reward" value="GcRewardStanding.xml">
              <Property name="Race" value="GcAlienRace.xml">
                <Property name="AlienRace" value="Traders" />
              </Property>
              <Property name="AmountMin" value="-1" />
              <Property name="AmountMax" value="-1" />
            </Property>
            <Property name="LabelID" value="" />
          </Property>
          <Property value="GcRewardTableItem.xml">
            <Property name="PercentageChance" value="50" />
            <Property name="Reward" value="GcRewardStanding.xml">
              <Property name="Race" value="GcAlienRace.xml">
                <Property name="AlienRace" value="Explorers" />
              </Property>
              <Property name="AmountMin" value="-1" />
              <Property name="AmountMax" value="-1" />
            </Property>
            <Property name="LabelID" value="" />
          </Property>
]]
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id","SEC_STDHIGH_TRA",},
                            ["PRECEDING_KEY_WORDS"] = {"GcRewardTableItem.xml",},
                            ["ADD_OPTION"] = "ADDafterSECTION",
                            ["ADD"] =
[[
          <Property value="GcRewardTableItem.xml">
            <Property name="PercentageChance" value="50" />
            <Property name="Reward" value="GcRewardStanding.xml">
              <Property name="Race" value="GcAlienRace.xml">
                <Property name="AlienRace" value="Warriors" />
              </Property>
              <Property name="AmountMin" value="-1" />
              <Property name="AmountMax" value="-1" />
            </Property>
            <Property name="LabelID" value="" />
          </Property>
          <Property value="GcRewardTableItem.xml">
            <Property name="PercentageChance" value="50" />
            <Property name="Reward" value="GcRewardStanding.xml">
              <Property name="Race" value="GcAlienRace.xml">
                <Property name="AlienRace" value="Explorers" />
              </Property>
              <Property name="AmountMin" value="-1" />
              <Property name="AmountMax" value="-1" />
            </Property>
            <Property name="LabelID" value="" />
          </Property>
]]
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id","SEC_STDHIGH_EXP",},
                            ["PRECEDING_KEY_WORDS"] = {"GcRewardTableItem.xml",},
                            ["ADD_OPTION"] = "ADDafterSECTION",
                            ["ADD"] =
[[
          <Property value="GcRewardTableItem.xml">
            <Property name="PercentageChance" value="50" />
            <Property name="Reward" value="GcRewardStanding.xml">
              <Property name="Race" value="GcAlienRace.xml">
                <Property name="AlienRace" value="Warriors" />
              </Property>
              <Property name="AmountMin" value="-1" />
              <Property name="AmountMax" value="-1" />
            </Property>
            <Property name="LabelID" value="" />
          </Property>
          <Property value="GcRewardTableItem.xml">
            <Property name="PercentageChance" value="50" />
            <Property name="Reward" value="GcRewardStanding.xml">
              <Property name="Race" value="GcAlienRace.xml">
                <Property name="AlienRace" value="Traders" />
              </Property>
              <Property name="AmountMin" value="-1" />
              <Property name="AmountMax" value="-1" />
            </Property>
            <Property name="LabelID" value="" />
          </Property>
]]
                        },
                        {
                            ["FOREACH_SKW_GROUP"] =
                            {
                                {"Id", "SEC_STDHIGH_WAR",},
                                {"Id", "SEC_STDHIGH_TRA",},
                                {"Id", "SEC_STDHIGH_EXP"},
                            },
                            ["PRECEDING_KEY_WORDS"] = {"GcRewardTableItem.xml",},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"AmountMin", "2",},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id","MB_STAND_GUILD",},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"AmountMin", "2",},
                                {"AmountMax", "3",},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id","MB_STAND_HIGH",},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"AmountMin", "2",},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id","MB_STAND_MED",},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"AmountMin", "1",},
                            }
                        },
                        {
                            ["FOREACH_SKW_GROUP"] =
                            {
                                {"Id", "RS_S1_S2M6",},
                                -- {"Id", "RS_S2_S4M3",},
                                {"Id", "RS_S2_S4M5"},
                                {"Id", "RS_S3_S4M5"},
                            },
                            ["PRECEDING_KEY_WORDS"] = {"GcRewardTableItem.xml","GcRewardTableItem.xml",},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"AmountMin", "1",},
                                {"AmountMax", "3",},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id","RS_S2_S4M3",},
                            ["PRECEDING_KEY_WORDS"] = {"GcRewardTableItem.xml","GcRewardTableItem.xml",},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"AmountMin", "5",},
                                {"AmountMax", "5",},
                            }
                        },
                        {
                            ["FOREACH_SKW_GROUP"] =
                            {
                                {"Id", "RS_S6_PARTY1"},
                                -- {"Id", "RS_S6_PARTY2"},
                                -- {"Id", "RS_S6_PARTY3"},
                                -- {"Id", "RS_S6_PARTY4"},
                                {"Id", "RS_S6_PARTY5"},
                                {"Id", "RS_S6_S3M3"},
                            },
                            ["PRECEDING_KEY_WORDS"] = {"GcRewardTableItem.xml","GcRewardTableItem.xml",},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"AmountMin", "2",},
                                {"AmountMax", "4",},
                            }
                        },
                        {
                            ["FOREACH_SKW_GROUP"] =
                            {
                                {"Id", "RS_S2_S4M1",},
                                {"Id", "RS_S5_S1M3",},
                                -- {"Id", "RS_S9_S1M3"},
                                {"Id", "RS_S10_S1M3"},
                                {"Id", "RS_S11_S1M3"},
                            },
                            ["PRECEDING_KEY_WORDS"] = {"GcRewardTableItem.xml","GcRewardTableItem.xml","GcRewardTableItem.xml",},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"AmountMin", "1",},
                                {"AmountMax", "3",},
                            }
                        },
                        {
                            ["FOREACH_SKW_GROUP"] =
                            {
                                {"Id", "RS_S6_PARTY2",},
                                {"Id", "RS_S6_PARTY3",},
                                {"Id", "RS_S6_PARTY4"},
                            },
                            ["REMOVE"] = "SECTION",
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "METADATA\REALITY\TABLES\EXPEDITIONREWARDTABLE.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id","R_DIPLOMATIC_0","ID","COMPOUND4"},
                            ["SECTION_UP"] = 1,
                            ["ADD_OPTION"] = "ADDafterSECTION",
                            ["ADD"] = ER_TRADE
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id","R_DIPLOMATIC_1"},
                            ["PRECEDING_KEY_WORDS"] = {"GcRewardTableItem.xml",},
                            ["ADD_OPTION"] = "ADDafterSECTION",
                            ["ADD"] = ER_TRADE
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id","R_DIPLOMATIC_2"},
                            ["PRECEDING_KEY_WORDS"] = {"GcRewardTableItem.xml",},
                            ["ADD_OPTION"] = "ADDafterSECTION",
                            ["ADD"] = ER_TRADE
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id","R_DIPLOMATIC_3"},
                            ["PRECEDING_KEY_WORDS"] = {"GcRewardTableItem.xml",},
                            ["ADD_OPTION"] = "ADDafterSECTION",
                            ["ADD"] = ER_TRADE
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id","R_COMBAT_0"},
                            ["PRECEDING_KEY_WORDS"] = {"GcRewardTableItem.xml",},
                            ["ADD_OPTION"] = "ADDafterSECTION",
                            ["ADD"] = ER_WAR
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id","R_COMBAT_1","Reward","GcRewardMoney.xml"},
                            ["SECTION_UP"] = 1,
                            ["ADD_OPTION"] = "ADDafterSECTION",
                            ["ADD"] = ER_WAR
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id","R_COMBAT_2"},
                            ["PRECEDING_KEY_WORDS"] = {"GcRewardTableItem.xml",},
                            ["ADD_OPTION"] = "ADDafterSECTION",
                            ["ADD"] = ER_WAR
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id","R_EXPLORATION_0",},
                            ["PRECEDING_KEY_WORDS"] = {"GcRewardTableItem.xml","GcRewardTableItem.xml","GcRewardTableItem.xml",},
                            ["ADD_OPTION"] = "ADDafterSECTION",
                            ["ADD"] = ER_EXPL
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id","R_EXPLORATION_1","Reward","GcRewardMoney.xml"},
                            ["SECTION_UP"] = 1,
                            ["ADD_OPTION"] = "ADDafterSECTION",
                            ["ADD"] = ER_EXPL
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id","R_EXPLORATION_2","Reward","GcRewardMoney.xml"},
                            ["SECTION_UP"] = 1,
                            ["ADD_OPTION"] = "ADDafterSECTION",
                            ["ADD"] = ER_EXPL
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id","R_EXPLORATION_3","Reward","GcRewardMoney.xml"},
                            ["SECTION_UP"] = 1,
                            ["ADD_OPTION"] = "ADDafterSECTION",
                            ["ADD"] = ER_EXPL
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id","R_MINING_0","Reward","GcRewardMoney.xml"},
                            ["SECTION_UP"] = 1,
                            ["ADD_OPTION"] = "ADDafterSECTION",
                            ["ADD"] = ER_STAND
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id","R_MINING_1","Reward","GcRewardProceduralProduct.xml"},
                            ["SECTION_UP"] = 1,
                            ["ADD_OPTION"] = "ADDafterSECTION",
                            ["ADD"] = ER_STAND
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id","R_MINING_2","ID","ALLOY6"},
                            ["SECTION_UP"] = 1,
                            ["ADD_OPTION"] = "ADDafterSECTION",
                            ["ADD"] = ER_STAND
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id","R_MINING_3","ID","ALLOY6"},
                            ["SECTION_UP"] = 1,
                            ["ADD_OPTION"] = "ADDafterSECTION",
                            ["ADD"] = ER_STAND
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id","R_DIP_EASY_0","ID","EXP_CURIO2"},
                            ["SECTION_UP"] = 1,
                            ["ADD_OPTION"] = "ADDafterSECTION",
                            ["ADD"] = ER_TRADE
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id","R_DIP_EASY_1",},
                            ["PRECEDING_KEY_WORDS"] = {"GcRewardTableItem.xml",},
                            ["ADD_OPTION"] = "ADDafterSECTION",
                            ["ADD"] = ER_TRADE
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id","R_DIP_EASY_2",},
                            ["PRECEDING_KEY_WORDS"] = {"GcRewardTableItem.xml",},
                            ["ADD_OPTION"] = "ADDafterSECTION",
                            ["ADD"] = ER_TRADE
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id","R_DIP_EASY_3",},
                            ["PRECEDING_KEY_WORDS"] = {"GcRewardTableItem.xml",},
                            ["ADD_OPTION"] = "ADDafterSECTION",
                            ["ADD"] = ER_TRADE
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id","R_COM_EASY_0",},
                            ["PRECEDING_KEY_WORDS"] = {"GcRewardTableItem.xml",},
                            ["ADD_OPTION"] = "ADDafterSECTION",
                            ["ADD"] = ER_WAR
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id","R_COM_EASY_1","Reward","GcRewardMoney.xml"},
                            ["SECTION_UP"] = 1,
                            ["ADD_OPTION"] = "ADDafterSECTION",
                            ["ADD"] = ER_WAR
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id","R_COM_EASY_2",},
                            ["PRECEDING_KEY_WORDS"] = {"GcRewardTableItem.xml",},
                            ["ADD_OPTION"] = "ADDafterSECTION",
                            ["ADD"] = ER_WAR
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id","R_EXP_EASY_0",},
                            ["PRECEDING_KEY_WORDS"] = {"GcRewardTableItem.xml","GcRewardTableItem.xml","GcRewardTableItem.xml",},
                            ["ADD_OPTION"] = "ADDafterSECTION",
                            ["ADD"] = ER_EXPL
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id","R_EXP_EASY_1","Reward","GcRewardMoney.xml"},
                            ["SECTION_UP"] = 1,
                            ["ADD_OPTION"] = "ADDafterSECTION",
                            ["ADD"] = ER_EXPL
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id","R_EXP_EASY_2","Reward","GcRewardMoney.xml"},
                            ["SECTION_UP"] = 1,
                            ["ADD_OPTION"] = "ADDafterSECTION",
                            ["ADD"] = ER_EXPL
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id","R_EXP_EASY_3","Reward","GcRewardMoney.xml"},
                            ["SECTION_UP"] = 1,
                            ["ADD_OPTION"] = "ADDafterSECTION",
                            ["ADD"] = ER_EXPL
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id","R_MINE_EASY_0","Reward","GcRewardMoney.xml"},
                            ["SECTION_UP"] = 1,
                            ["ADD_OPTION"] = "ADDafterSECTION",
                            ["ADD"] = ER_STAND
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id","R_MINE_EASY_1","Reward","GcRewardProceduralProduct.xml"},
                            ["SECTION_UP"] = 1,
                            ["ADD_OPTION"] = "ADDafterSECTION",
                            ["ADD"] = ER_STAND
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id","R_MINE_EASY_2","ID","ALLOY6"},
                            ["SECTION_UP"] = 1,
                            ["ADD_OPTION"] = "ADDafterSECTION",
                            ["ADD"] = ER_STAND
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id","R_MINE_EASY_3","ID","ALBUMENPEARL"},
                            ["SECTION_UP"] = 1,
                            ["ADD_OPTION"] = "ADDafterSECTION",
                            ["ADD"] = ER_STAND
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id","R_DIP_WHALE","ID","ALIEN_TECHBOX"},
                            ["SECTION_UP"] = 1,
                            ["ADD_OPTION"] = "ADDafterSECTION",
                            ["ADD"] = ER_TRADE
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id","R_COM_WHALE","ID","ALIEN_TECHBOX"},
                            ["SECTION_UP"] = 1,
                            ["ADD_OPTION"] = "ADDafterSECTION",
                            ["ADD"] = ER_WAR
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id","R_EXP_WHALE","ID","ALIEN_TECHBOX"},
                            ["SECTION_UP"] = 1,
                            ["ADD_OPTION"] = "ADDafterSECTION",
                            ["ADD"] = ER_EXPL
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id","R_MIN_WHALE","ID","ALIEN_TECHBOX"},
                            ["SECTION_UP"] = 1,
                            ["ADD_OPTION"] = "ADDafterSECTION",
                            ["ADD"] = ER_STAND
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "METADATA\SIMULATION\MISSIONS\RECURRINGMISSIONTABLE.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id","R_AF_DAILY_SET",},
                            ["PRECEDING_KEY_WORDS"] = {"GcRewardTableItem.xml",},
                            ["ADD_OPTION"] = "ADDafterSECTION",
                            ["ADD"] =
[[
              <Property value="GcRewardTableItem.xml">
                <Property name="PercentageChance" value="33" />
                <Property name="Reward" value="GcRewardStanding.xml">
                  <Property name="Race" value="GcAlienRace.xml">
                    <Property name="AlienRace" value="Explorers" />
                  </Property>
                  <Property name="AmountMin" value="-1" />
                  <Property name="AmountMax" value="-1" />
                </Property>
                <Property name="LabelID" value="" />
              </Property>
              <Property value="GcRewardTableItem.xml">
                <Property name="PercentageChance" value="33" />
                <Property name="Reward" value="GcRewardStanding.xml">
                  <Property name="Race" value="GcAlienRace.xml">
                    <Property name="AlienRace" value="Traders" />
                  </Property>
                  <Property name="AmountMin" value="-1" />
                  <Property name="AmountMax" value="-1" />
                </Property>
                <Property name="LabelID" value="" />
              </Property>
              <Property value="GcRewardTableItem.xml">
                <Property name="PercentageChance" value="33" />
                <Property name="Reward" value="GcRewardStanding.xml">
                  <Property name="Race" value="GcAlienRace.xml">
                    <Property name="AlienRace" value="Warriors" />
                  </Property>
                  <Property name="AmountMin" value="-1" />
                  <Property name="AmountMax" value="-1" />
                </Property>
                <Property name="LabelID" value="" />
              </Property>
              <Property value="GcRewardTableItem.xml">
                <Property name="PercentageChance" value="20" />
                <Property name="Reward" value="GcRewardFactionStanding.xml">
                  <Property name="Faction" value="GcMissionFaction.xml">
                    <Property name="MissionFaction" value="ExplorerGuild" />
                  </Property>
                  <Property name="AmountMin" value="-1" />
                  <Property name="AmountMax" value="-1" />
                  <Property name="SetToMinBeforeAdd" value="False" />
                </Property>
                <Property name="LabelID" value="" />
              </Property>
              <Property value="GcRewardTableItem.xml">
                <Property name="PercentageChance" value="20" />
                <Property name="Reward" value="GcRewardFactionStanding.xml">
                  <Property name="Faction" value="GcMissionFaction.xml">
                    <Property name="MissionFaction" value="TradeGuild" />
                  </Property>
                  <Property name="AmountMin" value="-1" />
                  <Property name="AmountMax" value="-1" />
                  <Property name="SetToMinBeforeAdd" value="False" />
                </Property>
                <Property name="LabelID" value="" />
              </Property>
              <Property value="GcRewardTableItem.xml">
                <Property name="PercentageChance" value="20" />
                <Property name="Reward" value="GcRewardFactionStanding.xml">
                  <Property name="Faction" value="GcMissionFaction.xml">
                    <Property name="MissionFaction" value="WarriorGuild" />
                  </Property>
                  <Property name="AmountMin" value="-1" />
                  <Property name="AmountMax" value="-1" />
                  <Property name="SetToMinBeforeAdd" value="False" />
                </Property>
                <Property name="LabelID" value="" />
              </Property>
]]
                        },
                    },
                },
            },
        },
    },
}