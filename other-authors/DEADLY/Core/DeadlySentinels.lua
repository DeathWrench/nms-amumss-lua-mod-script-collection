AMMO_CHANCE = 0
HEAL_CHANCE = 0

NANITES_MIN_MULTI = 1
NANITES_MAX_MULTI = 3

SALVAGED_GLASS_CHANCE = 3

PUGNEUM_SENTINEL_CHANCE = 10
PUGNEUM_SENTINEL_MIN = 20
PUGNEUM_SENTINEL_MAX = 60

ATLANTIDEUM_SENTINEL_CHANCE = 10
ATLANTIDEUM_SENTINEL_MIN = 24
ATLANTIDEUM_SENTINEL_MAX = 64


NMS_MOD_DEFINITION_CONTAINER = {
    ["MOD_FILENAME"]  = "_DeadlySentinels.pak",
    ["MOD_AUTHOR"]    = "gh0stwizard",
    ["NMS_VERSION"]   = "4.46",
    ["MODIFICATIONS"] = {
        {
            ["MBIN_CHANGE_TABLE"] = {
                --
                -- METADATA/REALITY/TABLES/REWARDTABLE.MBIN
                --
                {
                    ["MBIN_FILE_SOURCE"] = "METADATA/REALITY/TABLES/REWARDTABLE.MBIN",
                    ["EXML_CHANGE_TABLE"] = {
                        -- don't show hive
                        {
                            ["SPECIAL_KEY_WORDS"]  = { "Id", "R_SHOW_HIVE", "Event", "DRONE_HIVE_DISABLED" },
                            ["SECTION_UP"]         = 1,
                            ["VALUE_CHANGE_TABLE"] = {
                                { "PercentageChance", 0 }, -- 100
                            }
                        },
                        -- Salvaged Glass chance
                        {
                            ["SPECIAL_KEY_WORDS"]  = { "Id", "DRONE_LOOT", "ID", "SENTINEL_LOOT" },
                            ["SECTION_UP"]         = 1,
                            ["VALUE_CHANGE_TABLE"] = {
                                { "PercentageChance", SALVAGED_GLASS_CHANCE }, -- 66
                            }
                        },
                        --
                        -- Pugneum
                        --
                        {
                            ["SPECIAL_KEY_WORDS"]  = { "Id", "SENTINEL", "Small", "GcRewardTableItemList.xml", "RewardChoice", "GiveAll" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "RewardChoice", "SelectSilent" }, -- GiveAll
                            }
                        },
                        -- Pugneum's drop chance
                        {
                            ["SPECIAL_KEY_WORDS"]  = { "Id", "SENTINEL", "ID", "ROBOT1" },
                            ["SECTION_UP"]         = 1,
                            ["VALUE_CHANGE_TABLE"] = {
                                { "PercentageChance", PUGNEUM_SENTINEL_CHANCE }, -- 100
                            }
                        },
                        -- Pugneum drop amount
                        {
                            ["SPECIAL_KEY_WORDS"]  = { "Id", "SENTINEL", "ID", "ROBOT1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "AmountMin", PUGNEUM_SENTINEL_MIN }, -- 20
                                { "AmountMax", PUGNEUM_SENTINEL_MAX }, -- 60
                            }
                        },
                        -- Atlantideum's drop chance
                        {
                            ["SPECIAL_KEY_WORDS"]  = { "Id", "CORRUPT_LOOT", "ID", "ROBOT2" },
                            ["SECTION_UP"]         = 1,
                            ["VALUE_CHANGE_TABLE"] = {
                                { "PercentageChance", ATLANTIDEUM_SENTINEL_CHANCE }, -- 66
                            }
                        },
                        -- Atlantideum amount
                        {
                            ["SPECIAL_KEY_WORDS"]  = { "Id", "CORRUPT_LOOT", "ID", "ROBOT2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "AmountMin", ATLANTIDEUM_SENTINEL_MIN }, -- 24
                                { "AmountMax", ATLANTIDEUM_SENTINEL_MAX }, -- 64
                            }
                        },
                        -- ammo drop chance
                        {
                            ["FOREACH_SKW_GROUP"]  = {
                                { "Id", "DRONE_LOOT",   "ID", "AMMO" },
                                { "Id", "QUAD_LOOT",    "ID", "AMMO" },
                                { "Id", "MECH_LOOT",    "ID", "AMMO" },
                                { "Id", "WALKER_LOOT",  "ID", "AMMO" },
                                { "Id", "SPIDER_LOOT",  "ID", "AMMO" },
                                { "Id", "CORRUPT_LOOT", "ID", "AMMO" },
                            },
                            ["SECTION_UP"]         = 1,
                            ["VALUE_CHANGE_TABLE"] = {
                                { "PercentageChance", AMMO_CHANCE }, -- 100
                            }
                        },
                        -- nanites drop amount
                        {
                            ["FOREACH_SKW_GROUP"]  = {
                                { "Id", "DRONE_LOOT",   "Currency", "Nanites" },
                                { "Id", "QUAD_LOOT",    "Currency", "Nanites" },
                                { "Id", "MECH_LOOT",    "Currency", "Nanites" },
                                { "Id", "WALKER_LOOT",  "Currency", "Nanites" },
                                { "Id", "SPIDER_LOOT",  "Currency", "Nanites" },
                                { "Id", "CORRUPT_LOOT", "Currency", "Nanites" },
                                { "Id", "POLICELOOT",   "Currency", "Nanites" },
                            },
                            ["SECTION_UP"]         = 1,
                            ["MATH_OPERATION"]     = "*",
                            ["VALUE_CHANGE_TABLE"] = {
                                { "AmountMin", NANITES_MIN_MULTI },
                                { "AmountMax", NANITES_MAX_MULTI },
                            }
                        },
                        -- healing
                        {
                            ["FOREACH_SKW_GROUP"]  = {
                                { "Id", "DRONE_LOOT",   "Reward", "GcRewardShield.xml" },
                                { "Id", "DRONE_LOOT",   "Reward", "GcRewardRefreshHazProt.xml" },
                                { "Id", "DRONE_LOOT",   "Reward", "GcRewardHealth.xml" },
                                { "Id", "QUAD_LOOT",    "Reward", "GcRewardShield.xml" },
                                { "Id", "QUAD_LOOT",    "Reward", "GcRewardRefreshHazProt.xml" },
                                { "Id", "QUAD_LOOT",    "Reward", "GcRewardHealth.xml" },
                                { "Id", "MECH_LOOT",    "Reward", "GcRewardShield.xml" },
                                { "Id", "MECH_LOOT",    "Reward", "GcRewardRefreshHazProt.xml" },
                                { "Id", "MECH_LOOT",    "Reward", "GcRewardHealth.xml" },
                                { "Id", "WALKER_LOOT",  "Reward", "GcRewardShield.xml" },
                                { "Id", "WALKER_LOOT",  "Reward", "GcRewardRefreshHazProt.xml" },
                                { "Id", "WALKER_LOOT",  "Reward", "GcRewardHealth.xml" },
                                { "Id", "SPIDER_LOOT",  "Reward", "GcRewardShield.xml" },
                                { "Id", "SPIDER_LOOT",  "Reward", "GcRewardRefreshHazProt.xml" },
                                { "Id", "SPIDER_LOOT",  "Reward", "GcRewardHealth.xml" },
                                { "Id", "CORRUPT_LOOT", "Reward", "GcRewardShield.xml" },
                                { "Id", "CORRUPT_LOOT", "Reward", "GcRewardRefreshHazProt.xml" },
                                { "Id", "CORRUPT_LOOT", "Reward", "GcRewardHealth.xml" },
                            },
                            ["SECTION_UP"]         = 1,
                            ["VALUE_CHANGE_TABLE"] = {
                                { "PercentageChance", HEAL_CHANCE },
                            }
                        },
                    }
                },
            }
        }
    }
}
