replaceDO =
[[
    <Property name="DetailObjects">
    </Property>
]]

replaceCGDesc =
[[
      <Property name="Descriptors">
        <Property value="TkResourceDescriptorData.xml">
          <Property name="Id" value="_LUSHGRASS_7" />
          <Property name="Name" value="_lushgrass_7" />
          <Property name="ReferencePaths" />
          <Property name="Chance" value="0" />
          <Property name="Children" />
        </Property>
        <Property value="TkResourceDescriptorData.xml">
          <Property name="Id" value="_LUSHGRASS_1" />
          <Property name="Name" value="_lushgrass_1" />
          <Property name="ReferencePaths" />
          <Property name="Chance" value="0" />
          <Property name="Children" />
        </Property>
        <Property value="TkResourceDescriptorData.xml">
          <Property name="Id" value="_LUSHGRASS_3" />
          <Property name="Name" value="_lushgrass_3" />
          <Property name="ReferencePaths" />
          <Property name="Chance" value="0" />
          <Property name="Children" />
        </Property>
        <Property value="TkResourceDescriptorData.xml">
          <Property name="Id" value="_LUSHGRASS_6" />
          <Property name="Name" value="_lushgrass_6" />
          <Property name="ReferencePaths" />
          <Property name="Chance" value="0" />
          <Property name="Children" />
        </Property>
        <Property value="TkResourceDescriptorData.xml">
          <Property name="Id" value="_LUSHGRASS_5" />
          <Property name="Name" value="_lushgrass_5" />
          <Property name="ReferencePaths" />
          <Property name="Chance" value="0" />
          <Property name="Children" />
        </Property>
        <Property value="TkResourceDescriptorData.xml">
          <Property name="Id" value="_LUSHGRASS_4" />
          <Property name="Name" value="_lushgrass_4" />
          <Property name="ReferencePaths" />
          <Property name="Chance" value="0" />
          <Property name="Children" />
        </Property>
        <Property value="TkResourceDescriptorData.xml">
          <Property name="Id" value="_LUSHGRASS_8" />
          <Property name="Name" value="_lushgrass_8" />
          <Property name="ReferencePaths" />
          <Property name="Chance" value="0" />
          <Property name="Children" />
        </Property>
        <Property value="TkResourceDescriptorData.xml">
          <Property name="Id" value="_LUSHGRASS_2" />
          <Property name="Name" value="_lushgrass_2" />
          <Property name="ReferencePaths" />
          <Property name="Chance" value="0" />
          <Property name="Children" />
        </Property>
      </Property>
]]

function AddTheGrass(grassName)
return [[
      <Property value="GcObjectSpawnData.xml">
        <Property name="DebugName" value="" />
        <Property name="Type" value="Instanced" />
        <Property name="Resource" value="GcResourceElement.xml">
          <Property name="Filename" value="MODELS/PLANETS/BIOMES/COMMON/GRASS/]] .. grassName .. [[.SCENE.MBIN" />
          <Property name="ResHandle" value="GcResource.xml">
            <Property name="ResourceID" value="0" />
          </Property>
          <Property name="Seed" value="GcSeed.xml">
            <Property name="Seed" value="0" />
            <Property name="UseSeedValue" value="False" />
          </Property>
          <Property name="AltId" value="" />
          <Property name="ProceduralTexture" value="TkProceduralTextureChosenOptionList.xml">
            <Property name="Samplers">
              <Property value="TkProceduralTextureChosenOptionSampler.xml">
                <Property name="Options">
                  <Property value="TkProceduralTextureChosenOption.xml">
                    <Property name="Layer" value="BASE" />
                    <Property name="Group" value="" />
                    <Property name="Palette" value="TkPaletteTexture.xml">
                      <Property name="Palette" value="Plant" />
                      <Property name="ColourAlt" value="Primary" />
                    </Property>
                    <Property name="OverrideColour" value="True" />
                    <Property name="Colour" value="Colour.xml">
                      <Property name="R" value="0.42" />
                      <Property name="G" value="0.53" />
                      <Property name="B" value="0.239" />
                      <Property name="A" value="1" />
                    </Property>
                    <Property name="OptionName" value="" />
                  </Property>
                </Property>
              </Property>
            </Property>
          </Property>
        </Property>
        <Property name="AltResources" />
        <Property name="ExtraTileTypes" />
        <Property name="Placement" value="GRASS" />
        <Property name="Seed" value="GcSeed.xml">
          <Property name="Seed" value="0" />
          <Property name="UseSeedValue" value="False" />
        </Property>
        <Property name="PlacementPriority" value="Low" />
        <Property name="LargeObjectCoverage" value="AlwaysPlace" />
        <Property name="OverlapStyle" value="All" />
        <Property name="MinHeight" value="-1" />
        <Property name="MaxHeight" value="128" />
        <Property name="RelativeToSeaLevel" value="True" />
        <Property name="MinAngle" value="0" />
        <Property name="MaxAngle" value="75" />
        <Property name="MatchGroundColour" value="True" />
        <Property name="GroundColourIndex" value="Auto" />
        <Property name="SwapPrimaryForSecondaryColour" value="False" />
        <Property name="SwapPrimaryForRandomColour" value="False" />
        <Property name="AlignToNormal" value="True" />
        <Property name="MinScale" value="0.8" />
        <Property name="MaxScale" value="1.0" />
        <Property name="MinScaleY" value="1.3" />
        <Property name="MaxScaleY" value="1.3" />
        <Property name="SlopeScaling" value="1" />
        <Property name="PatchEdgeScaling" value="0.1" />
        <Property name="MaxXZRotation" value="0" />
        <Property name="AutoCollision" value="False" />
        <Property name="CollideWithPlayer" value="False" />
        <Property name="CollideWithPlayerVehicle" value="False" />
        <Property name="DestroyedByPlayerVehicle" value="True" />
        <Property name="DestroyedByPlayerShip" value="True" />
        <Property name="DestroyedByTerrainEdit" value="True" />
        <Property name="InvisibleToCamera" value="True" />
        <Property name="CreaturesCanEat" value="False" />
        <Property name="ShearWindStrength" value="0.75" />
        <Property name="DestroyedByVehicleEffect" value="VEHICLECRASH" />
        <Property name="QualityVariantData" value="GcObjectSpawnDataVariant.xml">
          <Property name="ID" value="STANDARD" />
          <Property name="Coverage" value="1" />
          <Property name="FlatDensity" value="0.21" />
          <Property name="SlopeDensity" value="0.21" />
          <Property name="SlopeMultiplier" value="2.5" />
          <Property name="MaxRegionRadius" value="17998" />
          <Property name="MaxImposterRadius" value="18" />
          <Property name="FadeOutStartDistance" value="17998" />
          <Property name="FadeOutEndDistance" value="17998" />
          <Property name="FadeOutOffsetDistance" value="0" />
          <Property name="LodDistances">
            <Property value="0" />
            <Property value="0" />
            <Property value="0" />
            <Property value="0" />
            <Property value="0" />
          </Property>
        </Property>
        <Property name="QualityVariants">
          <Property value="GcObjectSpawnDataVariant.xml">
            <Property name="ID" value="STANDARD" />
            <Property name="Coverage" value="1" />
            <Property name="FlatDensity" value="0.23" />
            <Property name="SlopeDensity" value="0.23" />
            <Property name="SlopeMultiplier" value="3" />
            <Property name="MaxRegionRadius" value="9" />
            <Property name="MaxImposterRadius" value="18" />
            <Property name="FadeOutStartDistance" value="63" />
            <Property name="FadeOutEndDistance" value="81" />
            <Property name="FadeOutOffsetDistance" value="5" />
            <Property name="LodDistances">
              <Property value="0" />
              <Property value="16" />
              <Property value="30" />
              <Property value="50" />
              <Property value="1000" />
            </Property>
          </Property>
          <Property value="GcObjectSpawnDataVariant.xml">
            <Property name="ID" value="ULTRA" />
            <Property name="Coverage" value="1" />
            <Property name="FlatDensity" value="0.23" />
            <Property name="SlopeDensity" value="0.23" />
            <Property name="SlopeMultiplier" value="3" />
            <Property name="MaxRegionRadius" value="5" />
            <Property name="MaxImposterRadius" value="18" />
            <Property name="FadeOutStartDistance" value="126" />
            <Property name="FadeOutEndDistance" value="144" />
            <Property name="FadeOutOffsetDistance" value="10" />
            <Property name="LodDistances">
              <Property value="0" />
              <Property value="16" />
              <Property value="30" />
              <Property value="50" />
              <Property value="1000" />
            </Property>
          </Property>
        </Property>
      </Property>
]]
end

function AddSecondaryGrass(grassName)
return [[
      <Property value="GcObjectSpawnData.xml">
        <Property name="DebugName" value="" />
        <Property name="Type" value="Instanced" />
        <Property name="Resource" value="GcResourceElement.xml">
          <Property name="Filename" value="MODELS/PLANETS/BIOMES/COMMON/GRASS/]] .. grassName .. [[.SCENE.MBIN" />
          <Property name="ResHandle" value="GcResource.xml">
            <Property name="ResourceID" value="0" />
          </Property>
          <Property name="Seed" value="GcSeed.xml">
            <Property name="Seed" value="0" />
            <Property name="UseSeedValue" value="False" />
          </Property>
          <Property name="AltId" value="" />
          <Property name="ProceduralTexture" value="TkProceduralTextureChosenOptionList.xml">
            <Property name="Samplers">
            </Property>
          </Property>
        </Property>
        <Property name="AltResources" />
        <Property name="ExtraTileTypes" />
        <Property name="Placement" value="GRASSCLUMP" />
        <Property name="Seed" value="GcSeed.xml">
          <Property name="Seed" value="0" />
          <Property name="UseSeedValue" value="False" />
        </Property>
        <Property name="PlacementPriority" value="Low" />
        <Property name="LargeObjectCoverage" value="AlwaysPlace" />
        <Property name="OverlapStyle" value="All" />
        <Property name="MinHeight" value="-1" />
        <Property name="MaxHeight" value="128" />
        <Property name="RelativeToSeaLevel" value="True" />
        <Property name="MinAngle" value="0" />
        <Property name="MaxAngle" value="75" />
        <Property name="MatchGroundColour" value="True" />
        <Property name="GroundColourIndex" value="Auto" />
        <Property name="SwapPrimaryForSecondaryColour" value="False" />
        <Property name="SwapPrimaryForRandomColour" value="False" />
        <Property name="AlignToNormal" value="True" />
        <Property name="MinScale" value="1.2" />
        <Property name="MaxScale" value="1.4" />
        <Property name="MinScaleY" value="1" />
        <Property name="MaxScaleY" value="1" />
        <Property name="SlopeScaling" value="1" />
        <Property name="PatchEdgeScaling" value="0.1" />
        <Property name="MaxXZRotation" value="0" />
        <Property name="AutoCollision" value="False" />
        <Property name="CollideWithPlayer" value="False" />
        <Property name="CollideWithPlayerVehicle" value="False" />
        <Property name="DestroyedByPlayerVehicle" value="True" />
        <Property name="DestroyedByPlayerShip" value="True" />
        <Property name="DestroyedByTerrainEdit" value="True" />
        <Property name="InvisibleToCamera" value="True" />
        <Property name="CreaturesCanEat" value="False" />
        <Property name="ShearWindStrength" value="0.75" />
        <Property name="DestroyedByVehicleEffect" value="VEHICLECRASH" />
        <Property name="QualityVariantData" value="GcObjectSpawnDataVariant.xml">
          <Property name="ID" value="STANDARD" />
          <Property name="Coverage" value="1" />
          <Property name="FlatDensity" value="0.2" />
          <Property name="SlopeDensity" value="0.2" />
          <Property name="SlopeMultiplier" value="1" />
          <Property name="MaxRegionRadius" value="17998" />
          <Property name="MaxImposterRadius" value="18" />
          <Property name="FadeOutStartDistance" value="17998" />
          <Property name="FadeOutEndDistance" value="17998" />
          <Property name="FadeOutOffsetDistance" value="0" />
          <Property name="LodDistances">
            <Property value="0" />
            <Property value="0" />
            <Property value="0" />
            <Property value="0" />
            <Property value="0" />
          </Property>
        </Property>
        <Property name="QualityVariants">
          <Property value="GcObjectSpawnDataVariant.xml">
            <Property name="ID" value="STANDARD" />
            <Property name="Coverage" value="1" />
            <Property name="FlatDensity" value="0.22" />
            <Property name="SlopeDensity" value="0.22" />
            <Property name="SlopeMultiplier" value="3" />
            <Property name="MaxRegionRadius" value="9" />
            <Property name="MaxImposterRadius" value="18" />
            <Property name="FadeOutStartDistance" value="63" />
            <Property name="FadeOutEndDistance" value="81" />
            <Property name="FadeOutOffsetDistance" value="5" />
            <Property name="LodDistances">
              <Property value="0" />
              <Property value="16" />
              <Property value="30" />
              <Property value="50" />
              <Property value="1000" />
            </Property>
          </Property>
          <Property value="GcObjectSpawnDataVariant.xml">
            <Property name="ID" value="ULTRA" />
            <Property name="Coverage" value="1" />
            <Property name="FlatDensity" value="0.22" />
            <Property name="SlopeDensity" value="0.22" />
            <Property name="SlopeMultiplier" value="3" />
            <Property name="MaxRegionRadius" value="5" />
            <Property name="MaxImposterRadius" value="18" />
            <Property name="FadeOutStartDistance" value="126" />
            <Property name="FadeOutEndDistance" value="144" />
            <Property name="FadeOutOffsetDistance" value="10" />
            <Property name="LodDistances">
              <Property value="0" />
              <Property value="16" />
              <Property value="30" />
              <Property value="50" />
              <Property value="1000" />
            </Property>
          </Property>
        </Property>
      </Property>
]]
end


NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"] 			= "LASAGNA_HybridGrass_All_v3.0.pak",
["MOD_AUTHOR"]				= "AGhostlyPepper aka Lasagna",
["NMS_VERSION"]				= "",
["MODIFICATIONS"] 			= 
	{
		{
			["PAK_FILE_SOURCE"] 	= "NMSARC.515F1D3.pak",
			["MBIN_CHANGE_TABLE"] 	= 
			{ 
			

				{
					["MBIN_FILE_SOURCE"] 	= 
					{
						"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\WEIRD\ELBUBBLE\ELBUBBLEOBJECTSDEAD.MBIN",
						"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\WEIRD\BONESPIRE\BONESPIREOBJECTSDEAD.MBIN",
						"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\WEIRD\FRACTALCUBE\FRACTCUBEOBJECTSDEAD.MBIN",
						"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\WEIRD\HEXAGON\HEXAGONOBJECTSDEAD.MBIN",
						"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\WEIRD\HOUDINIPROPS\HOUDINIPROPSOBJECTS.MBIN",
						"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\WEIRD\IRRISHELLS\IRRISHELLSOBJECTSDEAD.MBIN",
						"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\WEIRD\MSTRUCTURES\MSTRUCTOBJECTSDEAD.MBIN",
						"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\WEIRD\SHARDS\SHARDSOBJECTSDEAD.MBIN",
						"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\WEIRD\WIRECELLS\WIRECELLSOBJECTSDEAD.MBIN",
						"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\WEIRD\BEAMSTONE\BEAMSOBJECTSDEAD.MBIN",
						"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\WEIRD\CONTOUR\CONTOUROBJECTSDEAD.MBIN",
						"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\WEIRD\HYDROGARDEN\HYDROGARDENOBJECTSDEAD.MBIN",
						
						
					},
					["EXML_CHANGE_TABLE"] 	=
					{


						--REMOVE GRASS
						{						
							["SPECIAL_KEY_WORDS"] = {"Filename","MODELS/PLANETS/BIOMES/COMMON/GRASS/NEWLUSHGRASS.SCENE.MBIN"},
							["SECTION_UP"] = 1,
							["REPLACE_TYPE"] 	= "ALL",
							["REMOVE"] = "SECTION",
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Filename","MODELS/PLANETS/BIOMES/COMMON/GRASS/BUBBLELUSHGRASS.SCENE.MBIN"},
							["SECTION_UP"] = 1,
							["REPLACE_TYPE"] 	= "ALL",
							["REMOVE"] = "SECTION",
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Filename","MODELS/PLANETS/BIOMES/COMMON/GRASS/NEWCROSSGRASS.SCENE.MBIN"},
							["SECTION_UP"] = 1,
							["REPLACE_TYPE"] 	= "ALL",
							["REMOVE"] = "SECTION",
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Filename","MODELS/PLANETS/BIOMES/TOXIC/SMALL/TOXICGRASS.SCENE.MBIN"},
							["SECTION_UP"] = 1,
							["REPLACE_TYPE"] 	= "ALL",
							["REMOVE"] = "SECTION",
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Filename","MODELS/PLANETS/BIOMES/BARREN/HQ/FOLIAGE/BARRENGRASSLARGE.SCENE.MBIN"},
							["SECTION_UP"] = 1,
							["REPLACE_TYPE"] 	= "ALL",
							["REMOVE"] = "SECTION",
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Filename","MODELS/PLANETS/BIOMES/BARREN/HQ/FOLIAGE/BARRENGRASSSMALL.SCENE.MBIN"},
							["SECTION_UP"] = 1,
							["REPLACE_TYPE"] 	= "ALL",
							["REMOVE"] = "SECTION",
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Filename","MODELS/PLANETS/BIOMES/BARREN/PLANTS/SCRUBGRASS.SCENE.MBIN"},
							["SECTION_UP"] = 1,
							["REPLACE_TYPE"] 	= "ALL",
							["REMOVE"] = "SECTION",
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Filename","MODELS/PLANETS/BIOMES/COMMON/GRASS/NEWSCRUBGRASS.SCENE.MBIN"},
							["SECTION_UP"] = 1,
							["REPLACE_TYPE"] 	= "ALL",
							["REMOVE"] = "SECTION",
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Filename","MODELS/PLANETS/BIOMES/HQFROZEN/FOLIAGE/FROZENBUSHYGRASS.SCENE.MBIN"},
							["SECTION_UP"] = 1,
							["REPLACE_TYPE"] 	= "ALL",
							["REMOVE"] = "SECTION",
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Filename","MODELS/PLANETS/BIOMES/HQFROZEN/FOLIAGE/FROZENGRASSLARGE.SCENE.MBIN"},
							["SECTION_UP"] = 1,
							["REPLACE_TYPE"] 	= "ALL",
							["REMOVE"] = "SECTION",
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Filename","MODELS/PLANETS/BIOMES/COMMON/GRASS/TALLGRASSBILLBOARD.SCENE.MBIN"},
							["SECTION_UP"] = 1,
							["REPLACE_TYPE"] 	= "ALL",
							["REMOVE"] = "SECTION",
						},


						--ADD GRASS
								
						{
							["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",},
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = AddTheGrass("CROSSGRASS")..
							AddSecondaryGrass("NEWCROSSGRASS"),
						},
							

					},
				},
				
				
				
				
				{
					["MBIN_FILE_SOURCE"] 	= 
					{
						"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\LUSH\LUSHINFESTEDOBJECTS.MBIN",
						"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\LUSH\LUSHOBJECTSDEAD.MBIN",
						"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\LUSH\LUSHOBJECTSFULL.MBIN",
						"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\LUSH\LUSHOBJECTSLOW.MBIN",
						"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\LUSH\LUSHROCKYOBJECTS.MBIN",
						"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\LUSH\LUSHROCKYWEIRDOBJECTS.MBIN",
						"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\LUSH\LUSHULTRAOBJECTS.MBIN",
						-- "METADATA\SIMULATION\SOLARSYSTEM\BIOMES\DEAD\DEADBIGPROPSOBJECTSFULL.MBIN",
						-- "METADATA\SIMULATION\SOLARSYSTEM\BIOMES\DEAD\DEADBIGPROPSOBJECTSVAR1.MBIN",
						-- "METADATA\SIMULATION\SOLARSYSTEM\BIOMES\DEAD\DEADBIGPROPSOBJECTSVAR2.MBIN",
						-- "METADATA\SIMULATION\SOLARSYSTEM\BIOMES\DEAD\DEADBIGPROPSOBJECTSVAR3.MBIN",
						"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\FROZEN\FROZENBIGPROPSOBJECTSFULL.MBIN",
						"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\HUGEPROPS\HUGEROCK\HUGEROCKBIOME.MBIN",
						"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\HUGEPROPS\HUGEROCK\HUGEROCKOBJECTSFULL.MBIN",
						"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\HUGEPROPS\HUGETOXIC\HUGETOXICBIOME.MBIN",
						"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\HUGEPROPS\HUGETOXIC\HUGETOXICOBJECTSFULL.MBIN",
						"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\HUGEPROPS\HUGEUWPLANT\HUGEUWPLANTOBJECTS.MBIN",
						"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\TOXIC\TOXICBIGPROPSOBJECTSFULL.MBIN",

						"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\BARREN\BARRENINFESTEDOBJECTS.MBIN",
						"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\BARREN\BARRENROCKYOBJECTS.MBIN",
						"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\DEAD\FROZENDEADOBJECTS.MBIN",
						"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\FROZEN\FROZENROCKYOBJECTS.MBIN",
						"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\FROZEN\FROZENROCKYWEIRDOBJECTS.MBIN",
						"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\SCORCHED\SCORCHEDSHIELDTREEOBJECTS.MBIN",
						"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\TOXIC\TOXICEGGSMOONOBJECTS.MBIN",
						"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\TOXIC\TOXICINFESTEDOBJECTS.MBIN",
						"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\TOXIC\TOXICSPORESOBJECTS.MBIN",

						-- "METADATA\SIMULATION\SOLARSYSTEM\BIOMES\LUSH\ULTRAEXTERNALOBJECTS.MBIN",

						-- "METADATA\SIMULATION\SOLARSYSTEM\BIOMES\OBJECTS\RARE\PHYSICSPROPS.MBIN",--
						-- "METADATA\SIMULATION\SOLARSYSTEM\BIOMES\OBJECTS\RARE\FLOATINGPHYSICS.MBIN",
						-- "METADATA\SIMULATION\SOLARSYSTEM\BIOMES\DEAD\DEADOBJECTSDEAD.MBIN",

						-- "METADATA\SIMULATION\SOLARSYSTEM\BIOMES\OBJECTS\ROCK\DEAD.MBIN",
						-- "METADATA\SIMULATION\SOLARSYSTEM\BIOMES\OBJECTS\ROCK\FULL.MBIN",
						-- "METADATA\SIMULATION\SOLARSYSTEM\BIOMES\OBJECTS\ROCK\LOW.MBIN",
						-- "METADATA\SIMULATION\SOLARSYSTEM\BIOMES\OBJECTS\ROCK\MID.MBIN",
						
						-- "METADATA\SIMULATION\SOLARSYSTEM\BIOMES\OBJECTS\BEACH\FULL.MBIN",
						-- "METADATA\SIMULATION\SOLARSYSTEM\BIOMES\OBJECTS\LEVELONEOBJECTS\FULL.MBIN",
						-- "METADATA\SIMULATION\SOLARSYSTEM\BIOMES\OBJECTS\LEVELONEOBJECTS\FULLSAFE.MBIN",
						-- "METADATA\SIMULATION\SOLARSYSTEM\BIOMES\OBJECTS\MOUNTAIN\FULL.MBIN",
						-- "METADATA\SIMULATION\SOLARSYSTEM\BIOMES\OBJECTS\MOUNTAIN\MOUNTAINROCKGRASS.MBIN",
						-- "METADATA\SIMULATION\SOLARSYSTEM\BIOMES\OBJECTS\MOUNTAIN\MOUNTAINROCKSCRUB.MBIN",

						"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\BARREN\BARRENBIGPROPSOBJECTSFULL.MBIN",
						"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\HUGEPROPS\HUGERING\HUGERINGBIOME.MBIN",
						"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\HUGEPROPS\HUGERING\HUGERINGOBJECTSFULL.MBIN",
						"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\HUGEPROPS\HUGESCORCHED\HUGESCORCHBIOME.MBIN",

						"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\BARREN\BARRENCORALOBJECTS.MBIN",
						"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\BARREN\BARRENHIVESOBJECTS.MBIN",
						"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\BARREN\BARRENOBJECTSMID.MBIN",
						"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\DEAD\FROZENDEADWEIRDOBJECTS.MBIN",
						"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\LUSH\LUSHOBJECTSMID.MBIN",

						"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\SCORCHED\SCORCHEDALIENOBJECTS.MBIN",
						"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\SCORCHED\SCORCHEDOBJECTSDEAD.MBIN",
						"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\SCORCHED\SCORCHEDOBJECTSMID.MBIN",
						"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\SCORCHED\SCORCHEDOBJECTSLOW.MBIN",
						"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\TOXIC\TOXICTENTACLESOBJECTS.MBIN",
						"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\TOXIC\TOXICOBJECTSLOW.MBIN",
						"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\TOXIC\TOXICOBJECTSMID.MBIN",

						"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\BARREN\BARRENOBJECTSDEAD.MBIN",
						"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\BARREN\BARRENOBJECTSLOW.MBIN",
						"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\FROZEN\FROZENOBJECTSDEAD.MBIN",
						"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\FROZEN\FROZENOBJECTSLOW.MBIN",
						"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\FROZEN\FROZENOBJECTSMID.MBIN",
						"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\FROZEN\FROZENHQOBJECTSMID.MBIN",

						"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\HUGEPROPS\HUGESCORCHED\HUGESCORCHOBJECTSFULL.MBIN",
						"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\SCORCHED\SCORCHBIGPROPSOBJECTSFULL.MBIN",

						"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\TOXIC\TOXICOBJECTSDEAD.MBIN",
						"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\LUSH\LUSHBIGPROPSOBJECTSFULL.MBIN",

						"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\LUSH\LUSHHQOBJECTSFULL.MBIN",

						"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\LUSH\LUSHBUBBLEOBJECTS.MBIN",

						"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\SWAMP\SWAMPOBJECTSFULL.MBIN",

						"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\SCORCHED\SCORCHCORALOBJECTS.MBIN",

						"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\BARREN\BARRENHQOBJECTSFULL.MBIN",

						"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\LUSH\LUSHHQTENTACLEOBJECTSFULL.MBIN",

						"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\BARREN\BARRENOBJECTSFULL.MBIN",
						"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\RADIOACTIVE\RADIOACTIVEALIENOBJECTS.MBIN",
						"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\RADIOACTIVE\RADIOSPIKECRYSTALSOBJECTS.MBIN",
						"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\RADIOACTIVE\RADIOACTIVEOBJECTSDEAD.MBIN",
						"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\RADIOACTIVE\RADIOACTIVEOBJECTSLOW.MBIN",
						"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\RADIOACTIVE\RADIOACTIVEOBJECTSMID.MBIN",
						"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\RADIOACTIVE\RADIOSPIKEPOTATOOBJECTS.MBIN",
						"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\RADIOACTIVE\RADIOACTIVEGLOWOBJECTS.MBIN",
						"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\RADIOACTIVE\RADIOBIGPROPSOBJECTS.MBIN",
						"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\LAVA\LAVAOBJECTSFULL.MBIN",
						"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\TOXIC\TOXICEGGSOBJECTS.MBIN",
						"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\TOXIC\TOXICOBJECTSFULL.MBIN",
						"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\FROZEN\FROZENPILLAROBJECTS.MBIN",

						"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\RADIOACTIVE\RADIOACTIVEOBJECTSFULL.MBIN",
						"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\FROZEN\FROZENOBJECTSFULL.MBIN",
						"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\SCORCHED\SCORCHEDOBJECTSFULL.MBIN",
						
						
					},
					["EXML_CHANGE_TABLE"] 	=
					{






						--REMOVE DetailObjects
						
						{
							["PRECEDING_KEY_WORDS"] = {"Objects","DetailObjects",},
							["ADD"] = replaceDO,
							["REPLACE_TYPE"] = "ADDAFTERSECTION",
						},
						{
							["PRECEDING_KEY_WORDS"] = {"Objects","DetailObjects",},
							["REMOVE"] = "SECTION"
						},
						
						
						
						--REMOVE rare tall grass (i.e. rockylushbiome)
						{
							["SPECIAL_KEY_WORDS"] = {"Filename","MODELS/PLANETS/BIOMES/COMMON/GRASS/TALLGRASSBILLBOARD.SCENE.MBIN"},
							["SECTION_UP"] = 1,
							["REPLACE_TYPE"] 	= "ALL",
							["REMOVE"] = "SECTION",
						},


						--ADD GRASS
								
						{
							["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",},
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = AddTheGrass("CROSSGRASS")..
							AddSecondaryGrass("NEWCROSSGRASS"),
						},
							

					},
				},
				
				
				
				
				
				{
					["MBIN_FILE_SOURCE"] 	= 
					{
						"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\LUSH\LUSHROOMAOBJECTS.MBIN",
						"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\LUSH\LUSHROOMBOBJECTS.MBIN",
						
					},
					["EXML_CHANGE_TABLE"] 	=
					{



						--REMOVE DetailObjects
						
						{
							["PRECEDING_KEY_WORDS"] = {"Objects","DetailObjects",},
							["ADD"] = replaceDO,
							["REPLACE_TYPE"] = "ADDAFTERSECTION",
						},
						{
							["PRECEDING_KEY_WORDS"] = {"Objects","DetailObjects",},
							["REMOVE"] = "SECTION"
						},
						
						
						
						--REMOVE rare tall grass (i.e. rockylushbiome)
						{
							["SPECIAL_KEY_WORDS"] = {"Filename","MODELS/PLANETS/BIOMES/COMMON/GRASS/TALLGRASSBILLBOARD.SCENE.MBIN"},
							["SECTION_UP"] = 1,
							["REPLACE_TYPE"] 	= "ALL",
							["REMOVE"] = "SECTION",
						},


						--ADD GRASS
								
						{
							["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",},
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = AddTheGrass("BUBBLELUSHGRASS")..
							AddSecondaryGrass("BUBBLELUSHGRASS"),
						},
							

					},
				},
				
				
				
				{
					["MBIN_FILE_SOURCE"] 	= 
					{
						"MODELS\PLANETS\BIOMES\COMMON\GRASS\NEWCROSSGRASS.DESCRIPTOR.MBIN",
					},
					["EXML_CHANGE_TABLE"] 	=
					{



						--REMOVE new grass_curly option (no old version of this model)
						
						{
							["SPECIAL_KEY_WORDS"] = {"Id","_GRASS_CURLY",},
							["REMOVE"] = "SECTION"
						},

					},
				},
				
				
				
				{
					["MBIN_FILE_SOURCE"] 	= 
					{
						"MODELS\PLANETS\BIOMES\COMMON\GRASS\CROSSGRASS.DESCRIPTOR.MBIN",
					},
					["EXML_CHANGE_TABLE"] 	=
					{


						--Reorder descriptor to match newcrossgrass
						{
							["PRECEDING_KEY_WORDS"] = {"Descriptors",},
							["ADD"] = replaceCGDesc,
							["REPLACE_TYPE"] = "ADDAFTERSECTION",
						},
						{
							["PRECEDING_KEY_WORDS"] = {"Descriptors",},
							["REMOVE"] = "SECTION"
						},

					},
				},
				
				


				--Replace 2 hazard plants with shield plants
				{
					["MBIN_FILE_SOURCE"] 	= 
					{
						--"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\OBJECTS\PLANT\TENTACLEPLANT.MBIN",
						"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\OBJECTS\PLANT\FLYTRAPPLANT.MBIN",
						"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\OBJECTS\PLANT\SPOREVENTPLANT.MBIN",
						
					},
					["EXML_CHANGE_TABLE"] 	=
					{

						{
							["REPLACE_TYPE"] 		= "",
							["VALUE_CHANGE_TABLE"] 	=
							{			
								{ "Filename",	"MODELS\PLANETS\BIOMES\COMMON\INTERACTIVEFLORA\SHIELDPLANT1.SCENE.MBIN" },
							}
						},	

					},
				},
				
				
				{
					["MBIN_FILE_SOURCE"] 	= 
					{
						"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\OBJECTS\PLANT\FULLSAFE.MBIN",
					},
					["EXML_CHANGE_TABLE"] 	=
					{

						{
							["SPECIAL_KEY_WORDS"] = {"Filename","MODELS/PLANETS/BIOMES/COMMON/INTERACTIVE/SPOREVENT.SCENE.MBIN"},
							["VALUE_CHANGE_TABLE"] 	=
							{			
								{ "Filename",	"MODELS\PLANETS\BIOMES\COMMON\INTERACTIVEFLORA\SHIELDPLANT1.SCENE.MBIN" },
							}
						},	
						{
							["SPECIAL_KEY_WORDS"] = {"Filename","MODELS/PLANETS/BIOMES/COMMON/INTERACTIVEFLORA/VENUSFLYTRAP.SCENE.MBIN"},
							["VALUE_CHANGE_TABLE"] 	=
							{			
								{ "Filename",	"MODELS\PLANETS\BIOMES\COMMON\INTERACTIVEFLORA\SHIELDPLANT1.SCENE.MBIN" },
							}
						},	

					},
				},


				
			}
		},
    }
}
--NOTE: ANYTHING NOT in table NMS_MOD_DEFINITION_CONTAINER IS IGNORED AFTER THE SCRIPT IS LOADED
--IT IS BETTER TO ADD THINGS AT THE TOP IF YOU NEED TO
--DON'T ADD ANYTHING PAST THIS POINT HERE