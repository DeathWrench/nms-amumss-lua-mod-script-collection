NMS_MOD_DEFINITION_CONTAINER = {
    ["MOD_FILENAME"]  = "_DeadlyRecharge.pak",
    ["MOD_AUTHOR"]    = "gh0stwizard",
    ["NMS_VERSION"]   = "4.44",
    ["MODIFICATIONS"] = {
        {
            ["MBIN_CHANGE_TABLE"] = {
                {
                    ["MBIN_FILE_SOURCE"] = "METADATA/REALITY/TABLES/NMS_REALITY_GCTECHNOLOGYTABLE.MBIN",
                    ["EXML_CHANGE_TABLE"] = {
                        -- Minotaur Cannon uses Unstable Plasma as charges
                        {
                            ["SPECIAL_KEY_WORDS"]  = { "ID", "MECH_GUN" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "ChargeMultiplier", "5" },
                            },
                        },
                        {
                            ["SPECIAL_KEY_WORDS"]   = { "ID", "MECH_GUN" },
                            ["PRECEDING_KEY_WORDS"] = { "ChargeBy" },
                            ["CREATE_HOS"]          = "TRUE",
                            ["ADD"]                 = [[
<Property value="NMSString0x10.xml">
    <Property name="Value" value="GRENFUEL1" />
</Property>
]],
                        },
                        -- Disable recharging ship's shield with Sodium
                        {
                            ["FOREACH_SKW_GROUP"] = {
                                { "ID", "SHIPSHIELD",      "Value", "CATALYST1" },
                                { "ID", "SHIPSHIELD",      "Value", "CATALYST2" },
                                { "ID", "SHIPSHIELD_ROBO", "Value", "CATALYST1" },
                                { "ID", "SHIPSHIELD_ROBO", "Value", "CATALYST2" },
                            },
                            ["REPLACE_TYPE"]      = "ALL",
                            ["REMOVE"]            = "SECTION",
                        },
                        -- Disable recharging ANY protection shield with resources
                        {
                            ["FOREACH_SKW_GROUP"] = {
                                { "ID", "T_HOTPROT",  "Value", "HOT1" },
                                { "ID", "T_COLDPROT", "Value", "COLD1" },
                                { "ID", "T_RAD",      "Value", "RADIO1" },
                                { "ID", "T_TOX",      "Value", "TOXIC1" },
                            },
                            ["REPLACE_TYPE"]      = "ALL",
                            ["REMOVE"]            = "SECTION",
                        },
                    }
                }
            }
        }
    }
}
