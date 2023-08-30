local modfilename = "SpaceStationTweaks"
local lua_author  = "Silent"
local lua_version = "v1.8"
local mod_author  = "Silent369"
local nms_version = "4.42"
local maintenance = mod_author
local description = [[

Beautify Landing Pads at the various Space Stations within the game.
Also includes subtle animations to some of the pad glowing textures.

]]

--Created:
--MATERIALS\PAD_LIGHT.MATERIAL.MBIN
--MODELS\SPACE\SPACESTATION\MODULARPARTS\DOCK\LANDINGPAD\GLOW_ORA_MAT.MATERIAL.MBIN
--MODELS\SPACE\SPACESTATION\MODULARPARTS\DOCK\LANDINGPADABAN\GLOW_RED_MAT.MATERIAL.MBIN

--Modifies:
--MODELS\SPACE\SPACESTATION\MODULARPARTS\DOCK\LANDINGPAD.SCENE.MBIN
--MODELS\SPACE\SPACESTATION\MODULARPARTS\DOCK\LANDINGPADABAN.SCENE.MBIN
--MODELS\SPACE\SPACESTATION\MODULARPARTS\DOCK\ANIMS\LANDINGPAD_CLOSE.ANIM.MBIN
--MODELS\SPACE\SPACESTATION\MODULARPARTS\DOCK\ANIMS\LANDINGPAD_OPEN.ANIM.MBIN
--MODELS\SPACE\SPACESTATION\MODULARPARTS\DOCK\BACK_SECTION\ENTITIES\LEFTSECTIONTRIGGER.ENTITY.MBIN
--MODELS\SPACE\SPACESTATION\MODULARPARTS\DOCK\BACK_SECTION\ENTITIES\RIGHTSECTIONTRIGGER.ENTITY.MBIN

--Modifies
--TEXTURES\SPACE\SPACESTATION\SSRFLOOR.MASKS.DDS
--TEXTURES\SPACE\SPACESTATION\STATIONLANES.DDS
--TEXTURES\SPACE\SPACESTATION\STATIONLANESABAN.DDS
--TEXTURES\SPACE\SPACESTATION\INTERIOR\METALHORIZONTALPATTERN.DDS

_LightIntensitySpt = "35000.000000"
_LightVolumetricSp = "0.000000"
_LightScalesMulti  = 0.6  --Pad Light Spot Width
_LightHeightMulti  = 1.8  --Pad Light Spot Height
_PadsAdjustAnimate = 0.6  --Pad Animation Height
_LocatorAdjPirates = 0.7  --Pad Locator Adjust (Must be +1 increment more than _PadsAdjustAnimate value)
_LocatorAdjStation = 0.7  --Pad Locator Adjust (Must be +1 increment more than _PadsAdjustAnimate value)

_RedS = 0.8
_GrnS = 0.2
_BluS = 0
_AlpS = 0.8

_RedP = 0.8
_GrnP = 0.1
_BluP = 0
_AlpP = 0.8

_LodDistances =
[[
  <Property name="LodDistances">
    <Property value="75" />
    <Property value="150" />
    <Property value="300" />
    <Property value="600" />
    <Property value="900" />
  </Property>
]]

_MaterialFlags =
[[
    <Property value="TkMaterialFlags.xml">
      <Property name="MaterialFlag" value="_F01_DIFFUSEMAP" />
    </Property>
    <Property value="TkMaterialFlags.xml">
      <Property name="MaterialFlag" value="_F07_UNLIT" />
    </Property>
    <Property value="TkMaterialFlags.xml">
      <Property name="MaterialFlag" value="_F09_TRANSPARENT" />
    </Property>
    <Property value="TkMaterialFlags.xml">
      <Property name="MaterialFlag" value="_F10_NORECEIVESHADOW" />
    </Property>
    <Property value="TkMaterialFlags.xml">
      <Property name="MaterialFlag" value="_F14_UVSCROLL" />
    </Property>
    <Property value="TkMaterialFlags.xml">
      <Property name="MaterialFlag" value="_F22_TRANSPARENT_SCALAR" />
    </Property>
    <Property value="TkMaterialFlags.xml">
      <Property name="MaterialFlag" value="_F34_GLOW" />
    </Property>
    <Property value="TkMaterialFlags.xml">
      <Property name="MaterialFlag" value="_F27_VBTANGENT" />
    </Property>
    <Property value="TkMaterialFlags.xml">
      <Property name="MaterialFlag" value="_F29_VBCOLOUR" />
    </Property>
]]

_gUVScrollStepS =
[[
    <Property value="TkMaterialUniform.xml">
      <Property name="Name" value="gUVScrollStepVec4" />
      <Property name="Values" value="Vector4f.xml">
        <Property name="x" value="-0.3" />
        <Property name="y" value="0" />
        <Property name="z" value="0.3" />
        <Property name="t" value="0" />
      </Property>
      <Property name="ExtendedValues" />
    </Property>
]]

_gUVScrollStepP =
[[
    <Property value="TkMaterialUniform.xml">
      <Property name="Name" value="gUVScrollStepVec4" />
      <Property name="Values" value="Vector4f.xml">
        <Property name="x" value="0" />
        <Property name="y" value="-0.03" />
        <Property name="z" value="0.03" />
        <Property name="t" value="0" />
      </Property>
      <Property name="ExtendedValues" />
    </Property>
]]

_gDiffuseMapS =
[[
  <Property name="Samplers">
    <Property value="TkMaterialSampler.xml">
      <Property name="Name" value="gDiffuseMap" />
      <Property name="Map" value="TEXTURES/SPACE/SPACESTATION/PIRATES/PANNINGCIRCUIT2.DDS" />
      <Property name="IsCube" value="False" />
      <Property name="UseCompression" value="True" />
      <Property name="UseMipMaps" value="True" />
      <Property name="IsSRGB" value="True" />
      <Property name="MaterialAlternativeId" value="" />
      <Property name="TextureAddressMode" value="Wrap" />
      <Property name="TextureFilterMode" value="Trilinear" />
      <Property name="Anisotropy" value="0" />
    </Property>
  </Property>
]]

_gDiffuseMapP =
[[
  <Property name="Samplers">
    <Property value="TkMaterialSampler.xml">
      <Property name="Name" value="gDiffuseMap" />
      <Property name="Map" value="TEXTURES/SPACE/SPACESTATION/PIRATES/PANNINGCIRCUIT.DDS" />
      <Property name="IsCube" value="False" />
      <Property name="UseCompression" value="True" />
      <Property name="UseMipMaps" value="True" />
      <Property name="IsSRGB" value="True" />
      <Property name="MaterialAlternativeId" value="" />
      <Property name="TextureAddressMode" value="Wrap" />
      <Property name="TextureFilterMode" value="Trilinear" />
      <Property name="Anisotropy" value="0" />
    </Property>
  </Property>
]]

NMS_MOD_DEFINITION_CONTAINER =
{
    ["MOD_FILENAME"]         = string.format("_%s%s.pak", modfilename, lua_version),
    ["LUA_AUTHOR"]           = lua_author,
    ["MOD_AUTHOR"]           = mod_author,
    ["NMS_VERSION"]          = nms_version,
    ["MOD_DESCRIPTION"]      = description,
    ["MOD_MAINTENANCE"]      = maintenance,
    ["MODIFICATIONS"]        =
    {
        {
            ["MBIN_CHANGE_TABLE"] =
            {
                    --|----------------------------------------------------------------------------------------
                    --| Create New Light Material
                    --|----------------------------------------------------------------------------------------

                {   --Create Light Material
                    ["MBIN_FILE_SOURCE"] =
                    {
                        {
                            "MATERIALS/LIGHT.MATERIAL.MBIN",
                            "MATERIALS/PAD_LIGHT.MATERIAL.MBIN",
                            "REMOVE"
                        }
                    }
                },
                {   --Edit Light Material
                    ["MBIN_FILE_SOURCE"]    = {"MATERIALS\PAD_LIGHT.MATERIAL.MBIN"},
                    ["EXML_CHANGE_TABLE"]   =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"]  = {"Name", "Light"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"CastShadow",     "True"},  --Original "False"
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"]  = {"Name", "gHSVOverlay"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Anisotropy",     "0"},  --Original "2"
                            }
                        },
                    }
                },
                {   --Insert Light Material
                    ["MBIN_FILE_SOURCE"]    =
                    {
                        "MODELS\SPACE\SPACESTATION\MODULARPARTS\DOCK\LANDINGPAD.SCENE.MBIN",
                        "MODELS\SPACE\SPACESTATION\MODULARPARTS\DOCK\LANDINGPADABAN.SCENE.MBIN"
                    },
                    ["EXML_CHANGE_TABLE"]   =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"]  = {"Type", "LIGHT", "Name", "MATERIAL"},
                            ["REPLACE_TYPE"]       = "ALL",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Value",          "MATERIALS/PAD_LIGHT.MATERIAL.MBIN"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"]  = {"Type", "LIGHT", "Name", "FOV"},
                            ["REPLACE_TYPE"]       = "ALL",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Value",          "95"},
                            }
                        },
                    }
                },

                    --|----------------------------------------------------------------------------------------
                    --| Create New Glow Material (Space Stations)
                    --|----------------------------------------------------------------------------------------

                {   --Create Orange Glow Material
                    ["MBIN_FILE_SOURCE"] =
                    {
                        {
                            "MODELS\SPACE\SPACESTATION\MODULARPARTS\DOCK\LANDINGPAD\GLOW_MAT.MATERIAL.MBIN",
                            "MODELS\SPACE\SPACESTATION\MODULARPARTS\DOCK\LANDINGPAD\GLOW_ORA_MAT.MATERIAL.MBIN",
                            "REMOVE"
                        },
                    }
                },
                {   --Edit Orange Glow Material
                    ["MBIN_FILE_SOURCE"]    = {"MODELS\SPACE\SPACESTATION\MODULARPARTS\DOCK\LANDINGPAD\GLOW_ORA_MAT.MATERIAL.MBIN"},
                    ["EXML_CHANGE_TABLE"]   =
                    {
                        {
                            ["PRECEDING_KEY_WORDS"] = {"TkMaterialFlags.xml"},
                            ["REPLACE_TYPE"]        = "ALL",
                            ["REMOVE"]              = "SECTION"
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Flags"},
                            ["LINE_OFFSET"]         = "+0",
                            ["ADD"]                 = _MaterialFlags,
                        },
                        {
                            ["SPECIAL_KEY_WORDS"]   = {"Name", "gMaterialColourVec4"},
                            ["INTEGER_TO_FLOAT"]    = "FORCE",
                            ["VALUE_CHANGE_TABLE"]  =
                            {
                                {"x",               _RedS}, --R
                                {"y",               _GrnS}, --G
                                {"z",               _BluS}, --B
                                {"t",               _AlpS}, --A
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"]   = {"Name", "gMaterialSFXColVec4"},
                            ["ADD_OPTION"]          = "ADDafterSECTION",
                            ["ADD"]                 = _gUVScrollStepS,
                        },
                        {
                            ["SPECIAL_KEY_WORDS"]   = {"ShaderMillDataHash", "0"},
                            ["LINE_OFFSET"]         = "-1",
                            ["REMOVE"]              = "LINE",
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Uniforms"},
                            ["ADD_OPTION"]          = "ADDafterSECTION",
                            ["ADD"]                 = _gDiffuseMapS,
                        },
                    }
                },
                {   --Insert Orange Glow Material
                    ["MBIN_FILE_SOURCE"]    =
                    {
                        "MODELS\SPACE\SPACESTATION\MODULARPARTS\DOCK\LANDINGPAD.SCENE.MBIN",
                    },
                    ["EXML_CHANGE_TABLE"]   =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"]  = {"Name", "Markings1_DUP1", "Transform", "TkTransformData.xml"},
                            ["INTEGER_TO_FLOAT"]   = "FORCE",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"ScaleX",         "0.97"},
                                {"ScaleY",         "0.97"},
                                {"ScaleZ",         "0.97"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"]  = {"Name", "SUB1SSR1pad", "Name", "MATERIAL"},
                            ["REPLACE_TYPE"]       = "ALL",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Value",          "MODELS\SPACE\SPACESTATION\MODULARPARTS\DOCK\LANDINGPAD\GLOW_ORA_MAT.MATERIAL.MBIN"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"]  = {"Name", "SUB1SSR0pad", "Name", "MATERIAL"},
                            ["REPLACE_TYPE"]       = "ALL",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Value",          "MODELS\SPACE\SPACESTATION\MODULARPARTS\DOCK\LANDINGPAD\GLOW_ORA_MAT.MATERIAL.MBIN"},
                            }
                        },
                    }
                },
                {   --Landing Pad Material
                    ["MBIN_FILE_SOURCE"]  =
                    {
                        "MODELS\SPACE\SPACESTATION\MODULARPARTS\DOCK\LANDINGPAD\WALL_SECTION_FLOORTILE_GLOW_MAT1.MATERIAL.MBIN",
                    },
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"]  = {"Name", "Wall_Section_FloorTile_Glow_Mat1"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Class",           "Opaque"}, --Original "Glow"
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"]  = {"MaterialFlag", "_F34_GLOW"},
                            ["REMOVE"]             = "SECTION"
                        },
                        --{
                        --    ["SPECIAL_KEY_WORDS"]  = {"Name", "gMaterialColourVec4"},
                        --    ["INTEGER_TO_FLOAT"]   = "FORCE",
                        --    ["VALUE_CHANGE_TABLE"] =
                        --    {
                        --        {"x",              "0.09"},
                        --        {"y",              "0.09"},
                        --        {"z",              "0.09"},
                        --        {"t",              "0.09"},
                        --    }
                        --},
                    }
                },

                    --|----------------------------------------------------------------------------------------
                    --| Modify Landing Pads (Space Station)
                    --|----------------------------------------------------------------------------------------

                {
                    ["MBIN_FILE_SOURCE"] =
                    {
                        "MODELS\SPACE\SPACESTATION\MODULARPARTS\DOCK\LANDINGPAD.SCENE.MBIN"
                    },
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"]  = {"Name", "Dock", "Type", "LOCATOR", "Transform", "TkTransformData.xml"},
                            ["MATH_OPERATION"]     = "*",
                            ["SECTION_ACTIVE"]     = {1,},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"TransY",         _LocatorAdjStation}, --0.4719
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"]  = {"Name", "EXIT", "Type", "LOCATOR", "Transform", "TkTransformData.xml"},
                            ["MATH_OPERATION"]     = "*",
                            ["SECTION_ACTIVE"]     = {1,},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"TransY",         _LocatorAdjStation}, --0.459369
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"]  = {"Type", "LIGHT", "Name", "INTENSITY"},
                            ["REPLACE_TYPE"]       = "ALL",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Value",          _LightIntensitySpt}, --30000.000000
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"]  = {"Type", "LIGHT", "Name", "VOLUMETRIC"},
                            ["REPLACE_TYPE"]       = "ALL",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Value",          _LightVolumetricSp}, --0.000000
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"]  = {"Type", "LIGHT", "Name", "COL_R"},
                            ["REPLACE_TYPE"]       = "ALL",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Value",          "1.000000"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"]  = {"Type", "LIGHT", "Name", "COL_G"},
                            ["REPLACE_TYPE"]       = "ALL",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Value",          "1.000000"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"]  = {"Type", "LIGHT", "Name", "COL_B"},
                            ["REPLACE_TYPE"]       = "ALL",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Value",          "1.000000"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"]  = {"Type", "LIGHT", "Transform", "TkTransformData.xml"},
                            ["MATH_OPERATION"]     = "*",
                            ["REPLACE_TYPE"]       = "ALL",
                            ["INTEGER_TO_FLOAT"]   = "FORCE",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"TransY",         _LightHeightMulti},
                                {"ScaleX",         _LightScalesMulti},
                                {"ScaleY",         _LightScalesMulti},
                                {"ScaleZ",         _LightScalesMulti},
                            }
                        },
                    }
                },

                    --|----------------------------------------------------------------------------------------
                    --| Create New Glow Material (Pirate Station)
                    --|----------------------------------------------------------------------------------------

                {   --Create Red Glow Material
                    ["MBIN_FILE_SOURCE"] =
                    {
                        {
                            "MODELS\SPACE\SPACESTATION\MODULARPARTS\DOCK\LANDINGPADABAN\GLOW_MAT.MATERIAL.MBIN",
                            "MODELS\SPACE\SPACESTATION\MODULARPARTS\DOCK\LANDINGPADABAN\GLOW_RED_MAT.MATERIAL.MBIN",
                            "REMOVE"
                        }
                    }
                },
                {   --Edit Red Glow Material
                    ["MBIN_FILE_SOURCE"]    = {"MODELS\SPACE\SPACESTATION\MODULARPARTS\DOCK\LANDINGPADABAN\GLOW_RED_MAT.MATERIAL.MBIN",},
                    ["EXML_CHANGE_TABLE"]   =
                    {
                        {
                            ["VALUE_CHANGE_TABLE"]  =
                            {
                                {"Class",          "GlowTranslucent"}, --Original "Glow"
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"TkMaterialFlags.xml"},
                            ["REPLACE_TYPE"]        = "ALL",
                            ["REMOVE"]              = "SECTION"
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Flags"},
                            ["LINE_OFFSET"]         = "+0",
                            ["ADD"]                 = _MaterialFlags,
                        },
                        {
                            ["SPECIAL_KEY_WORDS"]  = {"Name", "gMaterialColourVec4"},
                            ["INTEGER_TO_FLOAT"]   = "FORCE",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"x",              _RedP}, --R
                                {"y",              _GrnP}, --G
                                {"z",              _BluP}, --B
                                {"t",              _AlpP}, --A
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"]   = {"Name", "gMaterialSFXColVec4"},
                            ["ADD_OPTION"]          = "ADDafterSECTION",
                            ["ADD"]                 = _gUVScrollStepP,
                        },
                        {
                            ["SPECIAL_KEY_WORDS"]   = {"ShaderMillDataHash", "0"},
                            ["LINE_OFFSET"]         = "-1",
                            ["REMOVE"]              = "LINE",
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Uniforms"},
                            ["ADD_OPTION"]          = "ADDafterSECTION",
                            ["ADD"]                 = _gDiffuseMapP,
                        },
                    }
                },
                {   --Insert Red Glow Material
                    ["MBIN_FILE_SOURCE"]    =
                    {
                        "MODELS\SPACE\SPACESTATION\MODULARPARTS\DOCK\LANDINGPADABAN.SCENE.MBIN",
                    },
                    ["EXML_CHANGE_TABLE"]   =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"]  = {"Name", "Markings", "Transform", "TkTransformData.xml"},
                            ["INTEGER_TO_FLOAT"]   = "FORCE",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"ScaleX",         "0.97"},
                                {"ScaleY",         "0.97"},
                                {"ScaleZ",         "0.97"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"]  = {"Name", "Markings1_DUP", "Transform", "TkTransformData.xml"},
                            ["INTEGER_TO_FLOAT"]   = "FORCE",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"ScaleX",         "0.97"},
                                {"ScaleY",         "0.97"},
                                {"ScaleZ",         "0.97"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"]  = {"Name", "SUB1SSR1pad", "Name", "MATERIAL"},
                            ["REPLACE_TYPE"]       = "ALL",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Value",          "MODELS\SPACE\SPACESTATION\MODULARPARTS\DOCK\LANDINGPADABAN\GLOW_RED_MAT.MATERIAL.MBIN"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"]  = {"Name", "SUB1SSR0pad", "Name", "MATERIAL"},
                            ["REPLACE_TYPE"]       = "ALL",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Value",          "MODELS\SPACE\SPACESTATION\MODULARPARTS\DOCK\LANDINGPADABAN\GLOW_RED_MAT.MATERIAL.MBIN"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"]  = {"Name", "Markings", "Name", "MATERIAL"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Value",          "MODELS\SPACE\SPACESTATION\MODULARPARTS\DOCK\LANDINGPAD\WALL_SECTION_FLOORTILE_GLOW_MAT1.MATERIAL.MBIN"}, --Original "MODELS\SPACE\SPACESTATION\MODULARPARTS\DOCK\LANDINGPADABAN\FLOORTILE_GLOW_MAT.MATERIAL.MBIN"
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"]  = {"Name", "Markings1_DUP", "Name", "MATERIAL"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Value",          "MODELS\SPACE\SPACESTATION\MODULARPARTS\DOCK\LANDINGPAD\WALL_SECTION_FLOORTILE_GLOW_MAT1.MATERIAL.MBIN"}, --Original "MODELS\SPACE\SPACESTATION\MODULARPARTS\DOCK\LANDINGPADABAN\FLOORTILE_GLOW_MAT.MATERIAL.MBIN"
                            }
                        },
                    }
                },
                    --|----------------------------------------------------------------------------------------
                    --| Modify Landing Pads (Pirate Station)
                    --|----------------------------------------------------------------------------------------
                {
                    ["MBIN_FILE_SOURCE"] =
                    {
                        "MODELS\SPACE\SPACESTATION\MODULARPARTS\DOCK\LANDINGPADABAN.SCENE.MBIN"
                    },
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"]  = {"Name", "Dock", "Type", "LOCATOR", "Transform", "TkTransformData.xml"},
                            ["MATH_OPERATION"]     = "*",
                            ["SECTION_ACTIVE"]     = {1,},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"TransY",          _LocatorAdjPirates},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"]  = {"Name", "EXIT", "Type", "LOCATOR", "Transform", "TkTransformData.xml"},
                            ["MATH_OPERATION"]     = "*",
                            ["SECTION_ACTIVE"]     = {1,},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"TransY",         _LocatorAdjStation}, --0.459369
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"]  = {"Type", "LIGHT", "Name", "INTENSITY"},
                            ["REPLACE_TYPE"]       = "ALL",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Value",          _LightIntensitySpt}, --30000.000000
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"]  = {"Type", "LIGHT", "Name", "COL_R"},
                            ["REPLACE_TYPE"]       = "ALL",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Value",          "1.000000"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"]  = {"Type", "LIGHT", "Name", "COL_G"},
                            ["REPLACE_TYPE"]       = "ALL",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Value",          "1.000000"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"]  = {"Type", "LIGHT", "Name", "COL_B"},
                            ["REPLACE_TYPE"]       = "ALL",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Value",          "1.000000"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"]  = {"Type", "LIGHT", "Transform", "TkTransformData.xml"},
                            ["MATH_OPERATION"]     = "*",
                            ["REPLACE_TYPE"]       = "ALL",
                            ["INTEGER_TO_FLOAT"]   = "FORCE",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"TransY",          _LightHeightMulti},
                                {"ScaleX",          _LightScalesMulti},
                                {"ScaleY",          _LightScalesMulti},
                                {"ScaleZ",          _LightScalesMulti},
                            }
                        },
                    }
                },

                    --|----------------------------------------------------------------------------------------
                    --| Adjust PAD Animations
                    --|----------------------------------------------------------------------------------------

                {
                  ["MBIN_FILE_SOURCE"]    =
                  {
                      "MODELS\SPACE\SPACESTATION\MODULARPARTS\DOCK\ANIMS\LANDINGPAD_OPEN.ANIM.MBIN",
                      "MODELS\SPACE\SPACESTATION\MODULARPARTS\DOCK\ANIMS\LANDINGPAD_CLOSE.ANIM.MBIN"
                  },
                  ["EXML_CHANGE_TABLE"]   =
                  {
                      {
                          ["PRECEDING_KEY_WORDS"] = {"TkAnimNodeFrameData.xml", "Translations", "Vector3f.xml"},
                          ["MATH_OPERATION"]      = "*",
                          ["REPLACE_TYPE"]        = "ALL",
                          ["VALUE_CHANGE_TABLE"]  =
                          {
                              {"x",               _PadsAdjustAnimate},
                              {"y",               _PadsAdjustAnimate},
                              {"z",               _PadsAdjustAnimate},
                          }
                      },
                  }
                },

                    --|----------------------------------------------------------------------------------------
                    --| Modify Station LOD for both LEFTSECTIONTRIGGER / RIGHTSECTIONTRIGGER entities.
                    --| This seems to work just fine as from the gantry we see the shops active opposite.
                    --| (They're not fully loaded at this point but MUCH less pop-in when you approach).
                    --|----------------------------------------------------------------------------------------

                {
                    ["MBIN_FILE_SOURCE"] =
                    {
                        "MODELS\SPACE\SPACESTATION\MODULARPARTS\DOCK\BACK_SECTION\ENTITIES\LEFTSECTIONTRIGGER.ENTITY.MBIN",
                    },
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"StateID", "LEFTOFF"},
                            ["REMOVE"]            = "SECTION"
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"State", "LEFTOFF"},
                            ["REMOVE"]            = "SECTION"
                        },
                        {
                          ["PRECEDING_KEY_WORDS"] = "LodDistances",
                          ["REMOVE"]              = "SECTION"
                        },
                        {
                          ["PRECEDING_KEY_WORDS"] = {"Components"},
                          ["ADD_OPTION"]          = "ADDafterSECTION",
                          ["ADD"]                 = _LodDistances,
                        }
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] =
                    {
                        "MODELS\SPACE\SPACESTATION\MODULARPARTS\DOCK\BACK_SECTION\ENTITIES\RIGHTSECTIONTRIGGER.ENTITY.MBIN",
                    },
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"StateID", "RIGHTOFF"},
                            ["REMOVE"]            = "SECTION"
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"State", "RIGHTOFF"},
                            ["REMOVE"]            = "SECTION"
                        },
                        {
                          ["PRECEDING_KEY_WORDS"] = "LodDistances",
                          ["REMOVE"]              = "SECTION"
                        },
                        {
                          ["PRECEDING_KEY_WORDS"] = {"Components"},
                          ["ADD_OPTION"]          = "ADDafterSECTION",
                          ["ADD"]                 = _LodDistances,
                        }
                    }
                },
            },
        },
    }
}

