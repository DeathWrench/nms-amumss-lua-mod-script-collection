NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]  = "_09_POD_FrigatesOnlyInSpacev4.05.pak",
["MOD_AUTHOR"]    = "PodcastPrimate",
["LUA_AUTHOR"]    = "Babscoole",
["NMS_VERSION"]   = "4.05",
["MODIFICATIONS"] =
    {
        {
            ["MBIN_CHANGE_TABLE"] =
            {
                {
                    ["MBIN_FILE_SOURCE"] = "METADATA\REALITY\TABLES\FRIGATEFLYBYTABLE.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"FrigateFlybyType", "AmbientGroup"},
                            ["SECTION_ACTIVE"] = {1,2,3,4,5,6,7,8,9,},
                            ["SECTION_UP"] = 1,
                            ["REMOVE"] = "SECTION"
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"FrigateFlybyType", "ScriptedGroup"},
                            ["REPLACE_TYPE"] = "ALL",
                            ["SECTION_UP"] = 1,
                            ["REMOVE"] = "SECTION"
                        },
                    }
                },
            }
        }
    }
}