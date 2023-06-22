NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]  = "MoreCaveCreatures_x3.pak",
["MOD_AUTHOR"]    = "courtykat",
["LUA_AUTHOR"]    = "Babscoole",
["NMS_VERSION"]   = "3.97",
["MODIFICATIONS"] =
    {
        {
            ["MBIN_CHANGE_TABLE"] =
            {
                {
                    ["MBIN_FILE_SOURCE"] = "METADATA\SIMULATION\ECOSYSTEM\CREATUREGENERATIONDATA.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["PRECEDING_KEY_WORDS"] = {"CaveGroupsPerKm",},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Sparse",    "150" },
                                {"Normal",    "300" },
                                {"Dense",     "600" },
                                {"VeryDense", "900" },
                            }
                        },
                    }
                },
            }
        },
    },
}