
--[[┎──────────────────────────────────────────────────────
	┃ Insert new light object to MBIN - by IMonk
────┸──────────────────────────────────────────────────--]]

function InsertNewLight(T_New)
	-- values from T_New will overwrite the defaults in T
	local T = {
		name = 'Light9',
		--hash = 0,
		tx = 0,
		ty = 0,
		tz = 0,
		rx = 0,
		ry = 0,
		rz = 0,
		sx = 1,
		sy = 1,
		sz = 1,
		fov = 360,
		f = 'quadratic',
		fr = '2.000',
		i = 30000,
		r = '1.000',
		g = '1.000',
		b = '1.000',
		--v = 0
	}
	for k, v in pairs(T_New) do
		T[k] = v
	end
	return [[
	<Property value="TkSceneNodeData.xml">
	  <Property name="Name" value="]] .. T.name .. [[" />
	  <Property name="NameHash" value="0" />
	  <Property name="Type" value="LIGHT" />
	  <Property name="Transform" value="TkTransformData.xml">
	    <Property name="TransX" value="]] .. T.tx .. [[" />
	    <Property name="TransY" value="]] .. T.ty .. [[" />
	    <Property name="TransZ" value="]] .. T.tz .. [[" />
	    <Property name="RotX" value="]] .. T.rx .. [[" />
	    <Property name="RotY" value="]] .. T.ry .. [[" />
	    <Property name="RotZ" value="]] .. T.rz .. [[" />
	    <Property name="ScaleX" value="]] .. T.sx .. [[" />
	    <Property name="ScaleY" value="]] .. T.sy .. [[" />
	    <Property name="ScaleZ" value="]] .. T.sz .. [[" />
	  </Property>
	  <Property name="Attributes">
	    <Property value="TkSceneNodeAttributeData.xml">
	      <Property name="Name" value="FOV" />
	      <Property name="AltID" value="" />
	      <Property name="Value" value="]] .. T.fov .. [[.000000" />
	    </Property>
	    <Property value="TkSceneNodeAttributeData.xml">
	      <Property name="Name" value="FALLOFF" />
	      <Property name="AltID" value="" />
	      <Property name="Value" value="]] .. T.f .. [[" />
	    </Property>
		<Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="FALLOFF_RATE" />
          <Property name="AltID" value="" />
          <Property name="Value" value="]] .. T.fr .. [[" />
        </Property>
	    <Property value="TkSceneNodeAttributeData.xml">
	      <Property name="Name" value="INTENSITY" />
	      <Property name="AltID" value="" />
	      <Property name="Value" value="]] .. T.i .. [[.000000" />
	    </Property>
	    <Property value="TkSceneNodeAttributeData.xml">
	      <Property name="Name" value="COL_R" />
	      <Property name="AltID" value="" />
	      <Property name="Value" value="]] .. T.r .. [[000" />
	    </Property>
	    <Property value="TkSceneNodeAttributeData.xml">
	      <Property name="Name" value="COL_G" />
	      <Property name="AltID" value="" />
	      <Property name="Value" value="]] .. T.g .. [[000" />
	    </Property>
	    <Property value="TkSceneNodeAttributeData.xml">
	      <Property name="Name" value="COL_B" />
	      <Property name="AltID" value="" />
	      <Property name="Value" value="]] .. T.b .. [[000" />
	    </Property>
	    <Property value="TkSceneNodeAttributeData.xml">
	      <Property name="Name" value="COOKIE_IDX" />
	      <Property name="AltID" value="" />
	      <Property name="Value" value="-1" />
	    </Property>
	    <Property value="TkSceneNodeAttributeData.xml">
	      <Property name="Name" value="VOLUMETRIC" />
	      <Property name="AltID" value="" />
	      <Property name="Value" value="0.000000" />
	    </Property>
	    <Property value="TkSceneNodeAttributeData.xml">
	      <Property name="Name" value="MATERIAL" />
	      <Property name="AltID" value="" />
	      <Property name="Value" value="MATERIALS/LIGHT.MATERIAL.MBIN" />
	    </Property>
	  </Property>
	  <Property name="Children" />
        </Property>]]
end



NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"] 			= "ReLight 3.2.pak", 
["MOD_AUTHOR"]				= "Lo2k",
["NMS_VERSION"]				= "3.91",
["MOD_DESCRIPTION"]			= "This mod rework most of the lights placed in NPC building",
["MODIFICATIONS"] 			= 
	{
		{
			["MBIN_CHANGE_TABLE"] 	= 
			{ 
				{  -- FREIGHTER BRIDGE
					["MBIN_FILE_SOURCE"] 	= "MODELS\COMMON\SPACECRAFT\COMMONPARTS\HANGARINTERIORPARTS\BRIDGE.SCENE.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["SPECIAL_KEY_WORDS"]  = {"Name", "pointLight60", "Name", "INTENSITY"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Value",	"60000.000000"},  --original : 50000.000000
							},
						},
						{
							["SPECIAL_KEY_WORDS"]  = {"Name", "pointLight60", "Name", "COL_R"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Value",	"1.000000"}, 
							},
						},					
						{
							["SPECIAL_KEY_WORDS"]  = {"Name", "pointLight60", "Name", "COL_G"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Value",	"0.668880"},  
							},
						},						
						{
							["SPECIAL_KEY_WORDS"]  = {"Name", "pointLight60", "Name", "COL_B"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Value",	"0.360784"}, 
							},
						},
						{
							["SPECIAL_KEY_WORDS"]  = {"Name", "pointLight59", "Name", "INTENSITY"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Value",	"140000.000000"},  --original : 100000.000000
							},
						},
						{
							["SPECIAL_KEY_WORDS"]  = {"Name", "pointLight59", "Name", "COL_R"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Value",	"0.854902"}, 
							},
						},					
						{
							["SPECIAL_KEY_WORDS"]  = {"Name", "pointLight59", "Name", "COL_G"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Value",	"0.858391"},  
							},
						},	
						{
							["SPECIAL_KEY_WORDS"]  = {"Name", "pointLight61"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"TransZ", "-11.220206"},
							},
						},	
						{
							["SPECIAL_KEY_WORDS"]  = {"Name", "pointLight61", "Name", "INTENSITY"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Value",	"30000.000000"},  --original : 40000.000000
							},
						},				
						{
							["SPECIAL_KEY_WORDS"]  = {"Name", "pointLight61", "Name", "COL_G"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Value",	"0.905596"},  
							},
						},						
						{
							["SPECIAL_KEY_WORDS"]  = {"Name", "pointLight61", "Name", "COL_B"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Value",	"0.685000"}, 
							},
						},	
						{
							["SPECIAL_KEY_WORDS"]  = {"Name", "pointLight62"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"TransZ", "14.081081"},
							},
						},							
						{
							["SPECIAL_KEY_WORDS"]  = {"Name", "pointLight62", "Name", "INTENSITY"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Value",	"50000.000000"},  --original : 70000.000000
							},
						},	
						{
							["SPECIAL_KEY_WORDS"]  = {"Name", "pointLight62", "Name", "COL_G"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Value",	"0.808391"}, 
							},
						},						
						{
							["SPECIAL_KEY_WORDS"]  = {"Name", "pointLight62", "Name", "COL_B"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Value",	"1.000000"}, 
							},
						},							
					},
				},
				{
					["MBIN_FILE_SOURCE"] 	= "MODELS\COMMON\SPACECRAFT\COMMONPARTS\HANGARINTERIORPARTS\DOORSFRONT.SCENE.MBIN",   
					["EXML_CHANGE_TABLE"] 	= 
					{	
					--[[
						{  -- cargo hangar left stairs
							["SPECIAL_KEY_WORDS"]  = {"Name", "pointLight70"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"TransY", "11.0848007"},
							},
						},	
						{
							["SPECIAL_KEY_WORDS"]  = {"Name", "pointLight70"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"TransZ", "-10.3616943"},
							},
						},	
						{
							["SPECIAL_KEY_WORDS"]  = {"Name", "pointLight70", "Name", "INTENSITY"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Value",	"30000.000000"}, 
							},
						},
						]]
						{
							["SPECIAL_KEY_WORDS"]  = {"Name", "DefaultColour"},  -- left door light
							["REPLACE_TYPE"] = "ADDAFTERSECTION",
							["ADD"] = InsertNewLight({name='pointLight70z',tx=16.66565, ty=14.0848007, tz=-4.3616943}),
						},
						{
							["SPECIAL_KEY_WORDS"]  = {"Name", "DefaultColour"},  
							["REPLACE_TYPE"] = "ADDAFTERSECTION",
							["ADD"] = InsertNewLight({name='pointLight70b',tx=22.66565, ty=11.0848007, tz=-10.3616943, rx=-45, fov=180, g=0.851000, b=0.745000}),
						},
						{
							["SPECIAL_KEY_WORDS"]  = {"Name", "DefaultColour"},  
							["REPLACE_TYPE"] = "ADDAFTERSECTION",
							["ADD"] = InsertNewLight({name='pointLight70c',tx=22.66565, ty=8.0848007, tz=-15.8616943, g=0.851000, b=0.745000}),
						},
						{
							["SPECIAL_KEY_WORDS"]  = {"Name", "DefaultColour"},  
							["REPLACE_TYPE"] = "ADDAFTERSECTION",
							["ADD"] = InsertNewLight({name='pointLight70d',tx=22.66565, ty=5.3848007, tz=-20.8616943, g=0.851000, b=0.745000}),
						},		
						{
							["SPECIAL_KEY_WORDS"]  = {"Name", "DefaultColour"},  
							["REPLACE_TYPE"] = "ADDAFTERSECTION",
							["ADD"] = InsertNewLight({name='pointLight70e',tx=22.66565, ty=2.6848007, tz=-25.8616943, g=0.851000, b=0.745000}),
						},	
						{
							["SPECIAL_KEY_WORDS"]  = {"Name", "DefaultColour"},  
							["REPLACE_TYPE"] = "ADDAFTERSECTION",
							["ADD"] = InsertNewLight({name='pointLight70f',tx=22.66565, ty=0.000000, tz=-30.8616943, g=0.851000, b=0.745000}),
						},	
						--[[
						{  -- cargo hangar right stairs
							["SPECIAL_KEY_WORDS"]  = {"Name", "pointLight125"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"TransY", "11.0848007"},
							},
						},	
						{
							["SPECIAL_KEY_WORDS"]  = {"Name", "pointLight125"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"TransZ", "-10.3616943"},
							},
						},	
						{
							["SPECIAL_KEY_WORDS"]  = {"Name", "pointLight125", "Name", "INTENSITY"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Value",	"30000.000000"}, 
							},
						},
						]]
						{
							["SPECIAL_KEY_WORDS"]  = {"Name", "DefaultColour"},  -- left door light
							["REPLACE_TYPE"] = "ADDAFTERSECTION",
							["ADD"] = InsertNewLight({name='pointLight125z',tx=-16.66565, ty=14.0848007, tz=-4.3616943}),
						},
						{
							["SPECIAL_KEY_WORDS"]  = {"Name", "DefaultColour"},  
							["REPLACE_TYPE"] = "ADDAFTERSECTION",
							["ADD"] = InsertNewLight({name='pointLight125b',tx=-22.66565, ty=11.0848007, tz=-10.3616943, rx=-45, fov=180, g=0.851000, b=0.745000}),
						},
						{
							["SPECIAL_KEY_WORDS"]  = {"Name", "DefaultColour"},  
							["REPLACE_TYPE"] = "ADDAFTERSECTION",
							["ADD"] = InsertNewLight({name='pointLight125c',tx=-22.66565, ty=8.0848007, tz=-15.8616943, g=0.851000, b=0.745000}),
						},
						{
							["SPECIAL_KEY_WORDS"]  = {"Name", "DefaultColour"},  
							["REPLACE_TYPE"] = "ADDAFTERSECTION",
							["ADD"] = InsertNewLight({name='pointLight125d',tx=-22.66565, ty=5.3848007, tz=-20.8616943, g=0.851000, b=0.745000}),
						},		
						{
							["SPECIAL_KEY_WORDS"]  = {"Name", "DefaultColour"},  
							["REPLACE_TYPE"] = "ADDAFTERSECTION",
							["ADD"] = InsertNewLight({name='pointLight125e',tx=-22.66565, ty=2.6848007, tz=-25.8616943, g=0.851000, b=0.745000}),
						},	
						{
							["SPECIAL_KEY_WORDS"]  = {"Name", "DefaultColour"},  
							["REPLACE_TYPE"] = "ADDAFTERSECTION",
							["ADD"] = InsertNewLight({name='pointLight70f',tx=-22.66565, ty=0.000000, tz=-30.8616943, g=0.851000, b=0.745000}),
						},							
					},
				},
				{    -- FREIGHTER ORANGE LIGHTS
					["MBIN_FILE_SOURCE"] 	= "MODELS\COMMON\SPACECRAFT\COMMONPARTS\HANGARINTERIORPARTS\HANGARINTERIOR.SCENE.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{			
						{  
							["SPECIAL_KEY_WORDS"]  = {"Name", "INTENSITY"},  --pointLight5 to 10
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Value",	"40000.0"},  --original : 40000
							},
						},	
						{
							["SPECIAL_KEY_WORDS"]  = {"Name", "COL_R"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Value",	"0.3"},  
							},
						},							
						{
							["SPECIAL_KEY_WORDS"]  = {"Name", "COL_G"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Value",	"0.5"},  
							},
						},	
						{
							["SPECIAL_KEY_WORDS"]  = {"Name", "COL_B"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Value",	"0.6"},  
							},
						},							
					},
				},
				{    -- FREIGHTER LIGHTS UNDER STAIRS
					["MBIN_FILE_SOURCE"] 	= "MODELS\COMMON\SPACECRAFT\COMMONPARTS\HANGARINTERIORPARTS\HANGARLAYOUT.SCENE.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{			
						{  -- LEFT STAIRS
							["SPECIAL_KEY_WORDS"] = {"Name", "pointLight75",},
							["REMOVE"] 	= "SECTION",
						},	
						{  -- RIGHT STAIRS
							["SPECIAL_KEY_WORDS"] = {"Name", "pointLight70",},
							["REMOVE"] 	= "SECTION",
						},								
					},
				},
				{    -- FREIGHTER LITTLE STAIRS ORANGE LIGHTS
					["MBIN_FILE_SOURCE"] 	= "MODELS\COMMON\SPACECRAFT\INDUSTRIAL\ACCESSORIES\HANGARPARTS\HANGARSTEPS.SCENE.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
						{  -- YELLOW SPOT
							["SPECIAL_KEY_WORDS"]  = {"Name", "pointLight4"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"TransY", "4.6"},  -- original 2.5
							},
						},
						{
							["SPECIAL_KEY_WORDS"]  = {"Name", "pointLight4", "Name", "COL_G"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Value",	"0.851"},  --original : 0.595366
							},
						},	
						{
							["SPECIAL_KEY_WORDS"]  = {"Name", "pointLight4", "Name", "COL_B"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Value",	"0.745"},  --original : 0.352941
							},
						},	
					},
				},
				--[[ doesn't work
				{    -- FREIGHTER STRONG REAR ORANGE LIGHT
					["MBIN_FILE_SOURCE"] 	= "MODELS\COMMON\SPACECRAFT\INDUSTRIAL\ACCESSORIES\HULLBOTTOM.SCENE.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
						{  -- ORANGE SPOT
							["SPECIAL_KEY_WORDS"]  = {"Name", "INTENSITY"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Value", "0.0"},  -- original 83453.234375
							},
						},
					},
				},
				]]--
				{    -- FREIGHTER LANDING PADS
					["MBIN_FILE_SOURCE"] 	= "MODELS\COMMON\SPACECRAFT\INDUSTRIAL\ACCESSORIES\LANDINGPAD_HANGAR.SCENE.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{			
						{  -- TOP AMBIENT LIGHT
							["SPECIAL_KEY_WORDS"] = {"Name", "pointLight1",},
							["REMOVE"] 	= "SECTION",
						},			
						{  -- YELLOW SPOT
							["SPECIAL_KEY_WORDS"] = {"Name", "pointLight2",},
							["REMOVE"] 	= "SECTION",
						},	
						{  -- YELLOW SPOT
							["SPECIAL_KEY_WORDS"] = {"Name", "pointLight3",},
							["REMOVE"] 	= "SECTION",
						},	
						{  -- YELLOW SPOT
							["SPECIAL_KEY_WORDS"] = {"Name", "pointLight4",},
							["REMOVE"] 	= "SECTION",
						},	
						{  -- YELLOW SPOT
							["SPECIAL_KEY_WORDS"] = {"Name", "pointLight5",},
							["REMOVE"] 	= "SECTION",
						},		
--[[						 --It's a lot better with no light at all than with dimmed ones
						{  -- YELLOW SPOT
							["SPECIAL_KEY_WORDS"]  = {"Name", "pointLight2"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"TransY", "0.1"},
								--{"RotY", "225"},	--original : 135, Sadly doesn't give good results with FOV = 180
							},
						},
						{  
							["SPECIAL_KEY_WORDS"]  = {"Name", "pointLight2", "Name", "INTENSITY"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Value",	"20000.0"},  --original : 50000
							},
						},	
						{  -- YELLOW SPOT
							["SPECIAL_KEY_WORDS"]  = {"Name", "pointLight3"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"TransY", "0.1"},
							},
						},
						{ 
							["SPECIAL_KEY_WORDS"]  = {"Name", "pointLight3", "Name", "INTENSITY"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Value",	"20000.0"},  --original : 50000
							},
						},	
						{  -- YELLOW SPOT
							["SPECIAL_KEY_WORDS"]  = {"Name", "pointLight4"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"TransY", "0.1"},
							},
						},
						{ 
							["SPECIAL_KEY_WORDS"]  = {"Name", "pointLight4", "Name", "INTENSITY"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Value",	"20000.0"},  --original : 50000
							},
						},	
						{  -- YELLOW SPOT
							["SPECIAL_KEY_WORDS"]  = {"Name", "pointLight5"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"TransY", "0.1"},
							},
						},	
						{  
							["SPECIAL_KEY_WORDS"]  = {"Name", "pointLight5", "Name", "INTENSITY"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Value",	"20000.0"},  --original : 50000
							},
						},
]]--						
					},
				},
				{ -- FRIGATE REACTOR BLUE LIGHTS
					["MBIN_FILE_SOURCE"] 	= "MODELS\COMMON\SPACECRAFT\FRIGATES\COMMONPARTS\INTERACTIONS\ENGINEREACTOR.SCENE.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{	
						{
							["SPECIAL_KEY_WORDS"]  = {"Name", "BLUEG", "Name", "INTENSITY"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Value",	"70000.000000"},  --original : 50000
							},
						},	
						{
							["SPECIAL_KEY_WORDS"]  = {"Name", "BLUEG", "Name", "COL_R"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Value",	"0.000000"},  --original : 0.679000
							},
						},	
						{
							["SPECIAL_KEY_WORDS"]  = {"Name", "BLUEG", "Name", "COL_G"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Value",	"0.679000"},  --original : 1.000000
							},
						},	
						{
							["SPECIAL_KEY_WORDS"]  = {"Name", "BLUEG", "Name", "COL_B"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Value",	"1.000000"},  --original : 1.000000
							},
						},		
{
							["SPECIAL_KEY_WORDS"]  = {"Name", "BLUE", "Name", "INTENSITY"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Value",	"70000.000000"},  --original : 50000
							},
						},	
						{
							["SPECIAL_KEY_WORDS"]  = {"Name", "BLUE", "Name", "COL_R"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Value",	"0.000000"},  --original : 0.679000
							},
						},	
						{
							["SPECIAL_KEY_WORDS"]  = {"Name", "BLUE", "Name", "COL_G"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Value",	"0.679000"},  --original : 1.000000
							},
						},	
						{
							["SPECIAL_KEY_WORDS"]  = {"Name", "BLUE", "Name", "COL_B"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Value",	"1.000000"},  --original : 1.000000
							},
						},							
					},
				},
				{    -- FRIGATE REACTOR ROOM CENTRAL WHITE LIGHT
					["MBIN_FILE_SOURCE"] 	= "MODELS\COMMON\SPACECRAFT\FRIGATES\COMMONPARTS\SCENES\ENGINEREACTOR.SCENE.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{	
						{
							["SPECIAL_KEY_WORDS"]  = {"Name", "INTENSITY"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Value",	"20000.000000"},  --original : 40000
							},
						},							
					},
				},   
				{  -- Removes pillar lens flare
					["MBIN_FILE_SOURCE"] 	= "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\TRADERPARTS\LAYOUTS\LAYOUTSHOP_1\LIGHTS1_MAT2.MATERIAL.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["SPECIAL_KEY_WORDS"]  = {"Name", "gCustomParams01Vec4"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"y",	"1"},  --original : 3
							},
						},						
					},
				},			
				{  -- Removes lens flare from round passage in interior angle wall and from wall light
					["MBIN_FILE_SOURCE"] 	= {
					"MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\TRADERPARTS\LAYOUTS\LAYOUTSHOP_3\LIGHTS1_MAT2.MATERIAL.MBIN",
					"MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PROPS\WALLLIGHTS\WALLLIGHTA\LIGHTS1_MAT.MATERIAL.MBIN"},
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["SPECIAL_KEY_WORDS"]  = {"Name", "gCustomParams01Vec4"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"y",	"1"},  --original : 3
							},
						},						
					},
				},	
				{  -- Removes Tech shop front lights lens flare from Korvax outposts
					["MBIN_FILE_SOURCE"] 	= "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\SCIENTIFICPARTS\MODULES\WALLMODULE_TECHSHOP\CORRIDORMODULE_STRAIGHT1_LIGHTS1_MAT.MATERIAL.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["SPECIAL_KEY_WORDS"]  = {"Name", "gCustomParams01Vec4"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"y",	"1"},  --original : 3
							},
						},						
					},
				},
				{  -- Removes Guild shop front lights lens flare
					["MBIN_FILE_SOURCE"] 	= "MODELS\SPACE\SPACESTATION\MODULARPARTS\DOCK\SHOPS\GUILDSHOP\CORRIDORMODULE_STRAIGHT1_LIGHTS1_MAT.MATERIAL.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["SPECIAL_KEY_WORDS"]  = {"Name", "gCustomParams01Vec4"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"y",	"1"},  --original : 3
							},
						},						
					},
				},				
				{  -- Removes Map shop front lights lens flare
					["MBIN_FILE_SOURCE"] 	= "MODELS\SPACE\SPACESTATION\MODULARPARTS\DOCK\SHOPS\MAPSHOP\LIGHTS1_MAT6.MATERIAL.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["SPECIAL_KEY_WORDS"]  = {"Name", "gCustomParams01Vec4"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"y",	"1"},  --original : 3
							},
						},						
					},
				},	
				{  -- Removes Suit shop front lights lens flare
					["MBIN_FILE_SOURCE"] 	= "MODELS\SPACE\SPACESTATION\MODULARPARTS\DOCK\SHOPS\SUITSHOP\LIGHTS1_MAT2.MATERIAL.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["SPECIAL_KEY_WORDS"]  = {"Name", "gCustomParams01Vec4"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"y",	"1"},  --original : 3
							},
						},						
					},
				},				
				{  -- Removes Mission shop front lights lens flare
					["MBIN_FILE_SOURCE"] 	= "MODELS\SPACE\SPACESTATION\MODULARPARTS\DOCK\SHOPS\MISSIONSHOP\CORRIDORMODULE_STRAIGHT1_LIGHTS1_MAT.MATERIAL.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["SPECIAL_KEY_WORDS"]  = {"Name", "gCustomParams01Vec4"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"y",	"1"},  --original : 3
							},
						},						
					},
				},	
				{  -- Removes Ship shop front lights lens flare
					["MBIN_FILE_SOURCE"] 	= "MODELS\SPACE\SPACESTATION\MODULARPARTS\DOCK\SHOPS\SHIPSHOP\CORRIDORMODULE_STRAIGHT1_LIGHTS1_MAT.MATERIAL.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["SPECIAL_KEY_WORDS"]  = {"Name", "gCustomParams01Vec4"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"y",	"1"},  --original : 3
							},
						},						
					},
				},
				{  -- Removes Vehicule shop front lights lens flare
					["MBIN_FILE_SOURCE"] 	= "MODELS\SPACE\SPACESTATION\MODULARPARTS\DOCK\SHOPS\VEHICLESHOP\CORRIDORMODULE_STRAIGHT2_LIGHTS1_MAT.MATERIAL.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["SPECIAL_KEY_WORDS"]  = {"Name", "gCustomParams01Vec4"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"y",	"1"},  --original : 3
							},
						},						
					},
				},
				{  -- Removes Weapon shop front lights lens flare
					["MBIN_FILE_SOURCE"] 	= "MODELS\SPACE\SPACESTATION\MODULARPARTS\DOCK\SHOPS\WEAPONSHOP\CORRIDORMODULE_STRAIGHT3_LIGHTS1_MAT.MATERIAL.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["SPECIAL_KEY_WORDS"]  = {"Name", "gCustomParams01Vec4"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"y",	"1"},  --original : 3
							},
						},						
					},
				},
				{
					["MBIN_FILE_SOURCE"] 	= "MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/CRATE/CRATE_WEAPON.SCENE.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["SPECIAL_KEY_WORDS"]  = {"Name", "INTENSITY"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Value",	"7000.0"},  --original : 10000
							},
						},						
					},
				},			
				{
					["MBIN_FILE_SOURCE"] 	= "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\COMMONPARTS\OBSERVATORY\HOLOGRAM.SCENE.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["SPECIAL_KEY_WORDS"]  = {"Name", "pointLight8"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"TransY",	"2.114299"},  --original : 2.614299
							},
						},	
						{
							["SPECIAL_KEY_WORDS"]  = {"Name", "pointLight8", "Name", "FALLOFF"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Value",	"linear"},  --original : quadratic
							},
						},
						{
							["SPECIAL_KEY_WORDS"]  = {"Name", "pointLight8", "Name", "INTENSITY"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Value",	"5000.000000"},  --original : 50000
							},
						},						
					},
				},
				
				{
					["MBIN_FILE_SOURCE"] 	= "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\TRADERPARTS\MODULES\WALLMODULE_TECHSHOP.SCENE.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["SPECIAL_KEY_WORDS"]  = {"Name", "pointLight1", "Name", "COL_R"}, 
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Value",	"0.4"},  --original : 0.0
							},
						},
						{
							["SPECIAL_KEY_WORDS"]  = {"Name", "pointLight1", "Name", "COL_G"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Value",	"0.720000"},  --original : 0.72
							},
						},
						{
							["SPECIAL_KEY_WORDS"]  = {"Name", "pointLight1", "Name", "COL_B"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Value",	"0.0"},  --original : 1.0
							},
						},
						{
							["SPECIAL_KEY_WORDS"]  = {"Name", "pointLight6", "Name", "COL_R"}, 
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Value",	"0.4"},  --original : 0.0
							},
						},
						{
							["SPECIAL_KEY_WORDS"]  = {"Name", "pointLight6", "Name", "COL_G"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Value",	"0.720000"},  --original : 0.72
							},
						},
						{
							["SPECIAL_KEY_WORDS"]  = {"Name", "pointLight6", "Name", "COL_B"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Value",	"0.0"},  --original : 1.0
							},
						},
					},
				},
				{
					["MBIN_FILE_SOURCE"] 	= "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\TRADERPARTS\ROOF_OBSERVATORY.SCENE.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["SPECIAL_KEY_WORDS"]  = {"Name", "COL_R"},  --pointLight1
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Value",	"0.2"},  --original : 0.29
							},
						},
						{
							["SPECIAL_KEY_WORDS"]  = {"Name", "COL_G"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Value",	"0.800000"},  --original : 1.0
							},
						},
						{
							["SPECIAL_KEY_WORDS"]  = {"Name", "COL_B"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Value",	"1.0"},  --original : 0.9
							},
						},
						{
							["SPECIAL_KEY_WORDS"]  = {"Name", "INTENSITY"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Value",	"30000.000000"},  --original : 300000
							},
						},						
					},
				},
				{  --SPACE STATION OBSVERVATION ROOM WINDOW WALL
					["MBIN_FILE_SOURCE"] 	= "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\SCIENTIFICPARTS\WALL_OBSERVATION.SCENE.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["SPECIAL_KEY_WORDS"]  = {"Name", "pointLight25"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"RotY",	"0"},  --original : 180
							},
						},	
						{
							["SPECIAL_KEY_WORDS"]  = {"Name", "pointLight25", "Name", "FOV"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Value",	"180.000000"},  --original : 360.000000
							},
						},
						{
							["SPECIAL_KEY_WORDS"]  = {"Name", "pointLight25", "Name", "INTENSITY"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Value",	"2000.000000"},  --original : 5000.000000
							},
						},
						{
							["SPECIAL_KEY_WORDS"]  = {"Name", "pointLight26"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"RotY",	"0"},  --original : 180
							},
						},	
						{
							["SPECIAL_KEY_WORDS"]  = {"Name", "pointLight26", "Name", "FOV"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Value",	"180.000000"},  --original : 360.000000
							},
						},
						{
							["SPECIAL_KEY_WORDS"]  = {"Name", "pointLight26", "Name", "INTENSITY"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Value",	"2000.000000"},  --original : 5000.000000
							},
						},	
						{
							["SPECIAL_KEY_WORDS"]  = {"Name", "pointLight27"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"RotY",	"0"},  --original : -135
							},
						},	
						{
							["SPECIAL_KEY_WORDS"]  = {"Name", "pointLight27", "Name", "FOV"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Value",	"180.000000"},  --original : 360.000000
							},
						},
						{
							["SPECIAL_KEY_WORDS"]  = {"Name", "pointLight27", "Name", "INTENSITY"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Value",	"2000.000000"},  --original : 5000.000000
							},
						},	
						{
							["SPECIAL_KEY_WORDS"]  = {"Name", "pointLight28"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"RotY",	"0"},  --original : 135
							},
						},	
						{
							["SPECIAL_KEY_WORDS"]  = {"Name", "pointLight28", "Name", "FOV"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Value",	"180.000000"},  --original : 360.000000
							},
						},
						{
							["SPECIAL_KEY_WORDS"]  = {"Name", "pointLight28", "Name", "INTENSITY"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Value",	"2000.000000"},  --original : 4000.000000
							},
						},							
					},
				},
				{  --SPACE STATION OBSVERVATION ROOM WALL
					["MBIN_FILE_SOURCE"] 	= "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\SCIENTIFICPARTS\WALLINTERIOR_BASE.SCENE.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["SPECIAL_KEY_WORDS"]  = {"Name", "pointLight25"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"RotY",	"0"},  --original : 180
							},
						},	
						{
							["SPECIAL_KEY_WORDS"]  = {"Name", "pointLight25", "Name", "FOV"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Value",	"180.000000"},  --original : 360.000000
							},
						},
						{
							["SPECIAL_KEY_WORDS"]  = {"Name", "pointLight25", "Name", "INTENSITY"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Value",	"2000.000000"},  --original : 6000.000000
							},
						},
						{
							["SPECIAL_KEY_WORDS"]  = {"Name", "pointLight26"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"RotY",	"0"},  --original : 180
							},
						},	
						{
							["SPECIAL_KEY_WORDS"]  = {"Name", "pointLight26", "Name", "FOV"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Value",	"180.000000"},  --original : 360.000000
							},
						},
						{
							["SPECIAL_KEY_WORDS"]  = {"Name", "pointLight26", "Name", "INTENSITY"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Value",	"2000.000000"},  --original : 6000.000000
							},
						},	
						{
							["SPECIAL_KEY_WORDS"]  = {"Name", "pointLight27"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"RotY",	"0"},  --original : -135
							},
						},	
						{
							["SPECIAL_KEY_WORDS"]  = {"Name", "pointLight27", "Name", "FOV"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Value",	"180.000000"},  --original : 360.000000
							},
						},
						{
							["SPECIAL_KEY_WORDS"]  = {"Name", "pointLight27", "Name", "INTENSITY"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Value",	"2000.000000"},  --original : 6000.000000
							},
						},	
						{
							["SPECIAL_KEY_WORDS"]  = {"Name", "pointLight28"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"RotY",	"0"},  --original : 135
							},
						},	
						{
							["SPECIAL_KEY_WORDS"]  = {"Name", "pointLight28", "Name", "FOV"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Value",	"180.000000"},  --original : 360.000000
							},
						},
						{
							["SPECIAL_KEY_WORDS"]  = {"Name", "pointLight28", "Name", "INTENSITY"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Value",	"2000.000000"},  --original : 6000.000000
							},
						},							
					},
				},			
				{  --ABANDONED LEFT ROOM LANTERN
					["MBIN_FILE_SOURCE"] 	= "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PROPS\ABANDONED\LIGHT_3.SCENE.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{	
						{  -- main orange light
							["SPECIAL_KEY_WORDS"]  = {"Name", "pointLight6", "Name", "FALLOFF"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Value",	"quadratic"},  --original : quadratic
							},
						},
						{
							["SPECIAL_KEY_WORDS"]  = {"Name", "pointLight6", "Name", "INTENSITY"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Value",	"6000.000000"},  --original : 30000.000000
							},
						},
						{
							["SPECIAL_KEY_WORDS"]  = {"Name", "pointLight6", "Name", "COL_R"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Value",	"1.0"},  --original : 0.86
							},
						},	
						{
							["SPECIAL_KEY_WORDS"]  = {"Name", "pointLight6", "Name", "COL_G"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Value",	"0.488610"},  --original : 0.288610
							},
						},	
						{  -- useless thin top white circle of light
							["SPECIAL_KEY_WORDS"] = {"Name", "pointLight7",},
							["REMOVE"] 	= "SECTION",
						},							
					},
				},				
				{
					["MBIN_FILE_SOURCE"] 	= "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PROPS\EXTERIORPROPS\FLOODLIGHTS.SCENE.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
						{  -- REVERSE LANDING PAD LIGHTS (Lights around landing pad)
							["SPECIAL_KEY_WORDS"] = {"Name", "spotLight1",},
							["REMOVE"] 	= "SECTION",
						},
						{  -- ACTUAL LANDING PAD 4 LIGHTS
							["SPECIAL_KEY_WORDS"]  = {"Name", "pointLight1"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"RotX",	"-20"},  --original : 0
								{"RotY",	"180"},  --original : 0
							},
						},	
						{  
							["SPECIAL_KEY_WORDS"]  = {"Name", "pointLight1", "Name", "FOV"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Value",	"90.000000"},  --original : 360.000000
							},
						},
						{  
							["SPECIAL_KEY_WORDS"]  = {"Name", "pointLight1", "Name", "FALLOFF"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Value",	"linear"},  --original : quadratic
							},
						},	
						{
							["SPECIAL_KEY_WORDS"]  = {"Name", "pointLight1", "Name", "INTENSITY"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Value",	"21000.000000"},  --original : 3000
							},
						},							
					}
				},
				{
					["MBIN_FILE_SOURCE"] 	= "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PROPS\HANGINGDRAPES\ALLWALLDRAPES.SCENE.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
						{  -- Big Hanging Drapes in Space Station
							["SPECIAL_KEY_WORDS"]  = {"Name", "WallFlagLight"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"RotX",	"-110.33453"},  --original : 78.33453
								{"RotY",	"180.831268"},  --original : 167.831268
								{"RotZ",	"90.353279"},  --original : 105.353279
							},
						},	
						{  
							["SPECIAL_KEY_WORDS"]  = {"Name", "WallFlagLight", "Name", "FOV"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Value",	"90.000000"},  --original : 87.187675
							},
						},
						{  
							["SPECIAL_KEY_WORDS"]  = {"Name", "WallFlagLight", "Name", "FALLOFF"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Value",	"linear"},  --original : quadratic
							},
						},								
					}
				},
				{
					["MBIN_FILE_SOURCE"] 	= "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PROPS\INTERACTIVE\HEALTHSTATION.SCENE.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
						{  
							["SPECIAL_KEY_WORDS"]  = {"Name", "pointLight1", "Name", "FOV"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Value",	"180.000000"},  --original : 360.000000
							},
						},
						{  
							["SPECIAL_KEY_WORDS"]  = {"Name", "pointLight1", "Name", "INTENSITY"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Value",	"1000.000000"},  --original : 8000.000000
							},
						},								
					}
				},
				{
					["MBIN_FILE_SOURCE"] 	= "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PROPS\INTERACTIVE\MONEYSTATION.SCENE.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["SPECIAL_KEY_WORDS"] = {"Name", "pointLight1",},
							["REMOVE"] 	= "SECTION",
						},
						{  
							["SPECIAL_KEY_WORDS"]  = {"Name", "pointLight2", "Name", "FOV"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Value",	"180.000000"},  --original : 360.000000
							},
						},
						{  
							["SPECIAL_KEY_WORDS"]  = {"Name", "pointLight2", "Name", "INTENSITY"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Value",	"1000.000000"},  --original : 9000.000000
							},
						},	
						{
							["SPECIAL_KEY_WORDS"]  = {"Name", "pointLight2", "Name", "COL_R"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Value",	"1.000000"},  --original : 0.529412
							},
						},	
						{
							["SPECIAL_KEY_WORDS"]  = {"Name", "pointLight2", "Name", "COL_G"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Value",	"1.000000"},  --original : 0.844715
							},
						},						
					}
				},
				{
					["MBIN_FILE_SOURCE"] 	= "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PROPS\INTERACTIVE\SHIELDSTATION.SCENE.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
						{  
							["SPECIAL_KEY_WORDS"]  = {"Name", "pointLight1"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"TransZ",	"-0.995744"},  --original : -0.495744
							},
						},	
						{  
							["SPECIAL_KEY_WORDS"]  = {"Name", "pointLight1", "Name", "FOV"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Value",	"180.000000"},  --original : 360.000000
							},
						},
						{  
							["SPECIAL_KEY_WORDS"]  = {"Name", "pointLight1", "Name", "INTENSITY"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Value",	"1000.000000"},  --original : 9000.000000
							},
						},	
						{
							["SPECIAL_KEY_WORDS"]  = {"Name", "pointLight1", "Name", "COL_R"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Value",	"1.000000"},  --original : 0.745098
							},
						},	
						{
							["SPECIAL_KEY_WORDS"]  = {"Name", "pointLight1", "Name", "COL_G"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Value",	"1.000000"},  --original : 0.965460
							},
						},						
					}
				},
				{
					["MBIN_FILE_SOURCE"] 	= "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PROPS\INTERACTIVE\STANDINGSTATION.SCENE.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["SPECIAL_KEY_WORDS"]  = {"Name", "Glow"},  --upper blue light
							["REPLACE_TYPE"] = "ADDAFTERSECTION",
							["ADD"] = InsertNewLight({name='BackLight', ty=0.7, tz=-0.5, i=2500, r='1.000', g='1.000', b='0.800'}),  
						},
						{  
							["SPECIAL_KEY_WORDS"]  = {"Name", "pointLight1"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"TransY", "0.7"},
								{"TransZ", "-0.5"},  --original : -0.69005
							},
						},	
						{  
							["SPECIAL_KEY_WORDS"]  = {"Name", "pointLight1", "Name", "INTENSITY"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Value",	"5000.000000"},  --original : 10000.000000
							},
						},	
						{
							["SPECIAL_KEY_WORDS"]  = {"Name", "pointLight1", "Name", "COL_R"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Value",	"0.000000"},  --original : 0.745098
							},
						},	
						{
							["SPECIAL_KEY_WORDS"]  = {"Name", "pointLight1", "Name", "COL_G"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Value",	"0.300000"},  --original : 0.965460
							},
						},		
						{
							["SPECIAL_KEY_WORDS"]  = {"Name", "pointLight1", "Name", "COL_B"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Value",	"1.000000"},  --original : 
							},
						},							
					}
				},
				{
					["MBIN_FILE_SOURCE"] 	= "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PROPS\INTERACTIVE\WEAPONTECHSTATION.SCENE.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["SPECIAL_KEY_WORDS"]  = {"Name", "SUB1WeaponTechStation"},  --back orange light
							["REPLACE_TYPE"] = "ADDAFTERSECTION",
							["ADD"] = InsertNewLight({name='BackLight', ty=0.7, tz=-0.5, i=2500, r='1.000', g='1.000', b='0.800'}),  
						},
						{  
							["SPECIAL_KEY_WORDS"]  = {"Name", "pointLight6"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								--{"TransY", "0.7"},
								--{"TransZ", "-0.5"}, 
								{"ScaleX", "1.0"}, 
								{"ScaleY", "1.0"}, 
								{"ScaleZ", "1.0"}, 
							},
						},	
						{  
							["SPECIAL_KEY_WORDS"]  = {"Name", "pointLight6", "Name", "INTENSITY"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Value",	"5000.000000"},  --original : 15000.000000
							},
						},							
					}
				},
				{
					["MBIN_FILE_SOURCE"] 	= "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PROPS\INTERACTIVE\WORDSTATION.SCENE.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
						{  
							["SPECIAL_KEY_WORDS"]  = {"Name", "pointLight9"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"TransZ",	"-0.916668"},  --original : -0.316668
							},
						},	
						{  
							["SPECIAL_KEY_WORDS"]  = {"Name", "pointLight9", "Name", "FOV"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Value",	"180.000000"},  --original : 360.000000
							},
						},
						{  
							["SPECIAL_KEY_WORDS"]  = {"Name", "pointLight9", "Name", "INTENSITY"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Value",	"1000.000000"},  --original : 8000.000000
							},
						},	
						{
							["SPECIAL_KEY_WORDS"]  = {"Name", "pointLight9", "Name", "COL_G"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Value",	"1.000000"},  --original : 0.551235
							},
						},	
						{
							["SPECIAL_KEY_WORDS"]  = {"Name", "pointLight9", "Name", "COL_B"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Value",	"1.000000"},  --original : 0.411765
							},
						},	
						{  
							["SPECIAL_KEY_WORDS"]  = {"Name", "pointLight8", "Name", "INTENSITY"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Value",	"2000.000000"},  --original : 8000.000000
							},
						},						
					}
				},
				{
					["MBIN_FILE_SOURCE"] 	= "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PROPS\LIGHTS\SMALLLIGHT.SCENE.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["SPECIAL_KEY_WORDS"]  = {"Name", "pointLight4"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"TransZ",	"-0.056227"},  --original : -0.256227
							},
						},	
						{
							["SPECIAL_KEY_WORDS"]  = {"Name", "pointLight4", "Name", "INTENSITY"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Value",	"2500.000000"},  --original : 8000.000000
							},
						},	
						{
							["SPECIAL_KEY_WORDS"]  = {"Name", "pointLight4b"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"TransZ",	"-0.056227"},  --original : -0.256227
							},
						},	
						{
							["SPECIAL_KEY_WORDS"]  = {"Name", "pointLight4b", "Name", "INTENSITY"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Value",	"2500.000000"},  --original : 8000.000000
							},
						},	
						{
							["SPECIAL_KEY_WORDS"]  = {"Name", "pointLight4b", "Name", "INTENSITY"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Value",	"2500.000000"},  --original : 8000.000000
							},
						},	
						{
							["SPECIAL_KEY_WORDS"]  = {"Name", "pointLight4v"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"TransZ",	"-0.056227"},  --original : -0.256227
							},
						},	
						{
							["SPECIAL_KEY_WORDS"]  = {"Name", "pointLight4v", "Name", "INTENSITY"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Value",	"2500.000000"},  --original : 8000.000000
							},
						},
						{  -- TEAL SMALL LIGHT
							["SPECIAL_KEY_WORDS"]  = {"Name", "pointLight4c"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"TransZ",	"-0.156227"},  --original : -0.256227
							},
						},	
						{
							["SPECIAL_KEY_WORDS"]  = {"Name", "pointLight4c", "Name", "INTENSITY"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Value",	"5000.000000"},  --original : 8000.000000
							},
						},
						{
							["SPECIAL_KEY_WORDS"]  = {"Name", "pointLight4c", "Name", "COL_G"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Value",	"1.0"},  --original : 0.6712000
							},
						},							
						{
							["SPECIAL_KEY_WORDS"]  = {"Name", "pointLight4x"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"TransZ",	"-0.056227"},  --original : -0.256227
							},
						},	
						{
							["SPECIAL_KEY_WORDS"]  = {"Name", "pointLight4x", "Name", "INTENSITY"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Value",	"2500.000000"},  --original : 8000.000000
							},
						},	
						{
							["SPECIAL_KEY_WORDS"]  = {"Name", "pointLight4xs"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"TransZ",	"-0.056227"},  --original : -0.256227
							},
						},	
						{
							["SPECIAL_KEY_WORDS"]  = {"Name", "pointLight4xs", "Name", "INTENSITY"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Value",	"2500.000000"},  --original : 8000.000000
							},
						},	
						{
							["SPECIAL_KEY_WORDS"]  = {"Name", "pointLight4xse"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"TransZ",	"-0.056227"},  --original : -0.256227
							},
						},	
						{
							["SPECIAL_KEY_WORDS"]  = {"Name", "pointLight4xse", "Name", "INTENSITY"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Value",	"2500.000000"},  --original : 8000.000000
							},
						},	
						{
							["SPECIAL_KEY_WORDS"]  = {"Name", "pointLight4xsee"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"TransZ",	"-0.056227"},  --original : -0.256227
							},
						},	
						{
							["SPECIAL_KEY_WORDS"]  = {"Name", "pointLight4xsee", "Name", "INTENSITY"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Value",	"2500.000000"},  --original : 8000.000000
							},
						},			
						{
							["SPECIAL_KEY_WORDS"]  = {"Name", "pointLight4xseee"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"TransZ",	"-0.056227"},  --original : -0.256227
							},
						},	
						{
							["SPECIAL_KEY_WORDS"]  = {"Name", "pointLight4xseee", "Name", "INTENSITY"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Value",	"2500.000000"},  --original : 9000.000000
							},
						},							
					},
				},
				{
					["MBIN_FILE_SOURCE"] 	= "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PROPS\LIGHTS\SMALLLIGHT_RED.SCENE.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["SPECIAL_KEY_WORDS"]  = {"Name", "pointLight4"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"TransZ",	"-0.20"},  --original : -0.256227
							},
						},	
						{
							["SPECIAL_KEY_WORDS"]  = {"Name", "pointLight4", "Name", "INTENSITY"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Value",	"5000.000000"},  --original : 8000.000000
							},
						},	
						{
							["SPECIAL_KEY_WORDS"]  = {"Name", "pointLight4", "Name", "COL_G"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Value",	"0.0"},  --original : 0.3
							},
						},											
					},
				},
				{
					["MBIN_FILE_SOURCE"] 	= "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PROPS\LIGHTS\TINYLIGHT.SCENE.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["SPECIAL_KEY_WORDS"]  = {"Name", "pointLight4"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"TransZ",	"-0.05"},  --original : -0.173671
							},
						},	
						{
							["SPECIAL_KEY_WORDS"]  = {"Name", "pointLight4", "Name", "INTENSITY"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Value",	"2500.000000"},  --original : 5000.000000
							},
						},							
						{
							["SPECIAL_KEY_WORDS"]  = {"Name", "pointLight4x"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"TransZ",	"-0.05"},  --original : -0.173671
							},
						},	
						{
							["SPECIAL_KEY_WORDS"]  = {"Name", "pointLight4x", "Name", "INTENSITY"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Value",	"2500.000000"},  --original : 5000.000000
							},
						},
						{
							["SPECIAL_KEY_WORDS"]  = {"Name", "pointLight4c"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"TransZ",	"-0.05"},  --original : -0.173671
							},
						},	
						{
							["SPECIAL_KEY_WORDS"]  = {"Name", "pointLight4c", "Name", "INTENSITY"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Value",	"2500.000000"},  --original : 5000.000000
							},
						},	
						{
							["SPECIAL_KEY_WORDS"]  = {"Name", "pointLight4v"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"TransZ",	"-0.05"},  --original : -0.173671
							},
						},	
						{
							["SPECIAL_KEY_WORDS"]  = {"Name", "pointLight4v", "Name", "INTENSITY"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Value",	"2500.000000"},  --original : 5000.000000
							},
						},
						{
							["SPECIAL_KEY_WORDS"]  = {"Name", "pointLight4b"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"TransZ",	"-0.05"},  --original : -0.173671
							},
						},	
						{
							["SPECIAL_KEY_WORDS"]  = {"Name", "pointLight4b", "Name", "INTENSITY"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Value",	"2500.000000"},  --original : 5000.000000
							},
						},							
					},
				},
				{
					["MBIN_FILE_SOURCE"] 	= "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PROPS\PLANTPOT\PLANTPOT.SCENE.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["SPECIAL_KEY_WORDS"]  = {"Name", "PotLOD0", "Name", "pointLight1"},  --top blue light
							["REPLACE_TYPE"] = "ADDAFTERSECTION",
							["ADD"] = InsertNewLight({name='pointLight2A', ty=0.4, rx=90, fov=180, i=4000, r='0.300', g='0.700'}),  -- <Property name="NameHash" value="4219409884" />
						},
						{
							["SPECIAL_KEY_WORDS"]  = {"Name", "PotLOD1", "Name", "pointLight1"},  --top blue light
							["REPLACE_TYPE"] = "ADDAFTERSECTION",
							["ADD"] = InsertNewLight({name='pointLight2B', ty=0.4, rx=90, fov=180, i=4000, r='0.300', g='0.700'}),  -- <Property name="NameHash" value="4219409884" />
						},	
						{
							["SPECIAL_KEY_WORDS"]  = {"Name", "PotLOD2", "Name", "pointLight1"},  --top blue light
							["REPLACE_TYPE"] = "ADDAFTERSECTION",
							["ADD"] = InsertNewLight({name='pointLight2C', ty=0.4, rx=90, fov=180, i=4000, r='0.300', g='0.700'}),  -- <Property name="NameHash" value="4219409884" />
						},	
						{
							["SPECIAL_KEY_WORDS"]  = {"Name", "pointLight1"},
							["REPLACE_TYPE"] 	= "ALL",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"TransY",	"0.2"},  --original : 0.719586
								{"RotX",	"-90"},  --original : 0
								{"RotY",	"180"},  --original : 0
								{"RotZ",	"90"},  --original : 0
							},
						},	
						{
							["SPECIAL_KEY_WORDS"]  = {"Name", "pointLight1", "Name", "FOV"},
							["REPLACE_TYPE"] 	= "ALL",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Value",	"180.000000"},  --original : 360.000000
							},
						},	
						{
							["SPECIAL_KEY_WORDS"]  = {"Name", "pointLight1", "Name", "INTENSITY"},
							["REPLACE_TYPE"] 	= "ALL",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Value",	"3000.000000"},  --original : 4000.000000
							},
						},					
					},
				},
				{  -- HANGING SHELVE PLANTPOT
					["MBIN_FILE_SOURCE"] 	= "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PROPS\PLANTPOT\PLANTPOT_B.SCENE.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
						{  -- LOD0
							["SPECIAL_KEY_WORDS"] = {"Name", "pointLight1",},
							["REMOVE"] 	= "SECTION",
						},	
						{  -- LOD1
							["SPECIAL_KEY_WORDS"] = {"Name", "pointLight1",},
							["REMOVE"] 	= "SECTION",
						},	
						{
							["SPECIAL_KEY_WORDS"]  = {"Name", "PotLOD3"},  --create a new LOD independant light
							["REPLACE_TYPE"] = "ADDAFTERSECTION",
							["ADD"] = InsertNewLight({name='newLight', ty=0.1,tz=-0.393418, rx=90, fov=180, i=4000, r=0.0, g=1.0; b=0.965}),  
						},
					},
				},
				{
					["MBIN_FILE_SOURCE"] 	= "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PROPS\PLANTPOT\PLANTPOTLSYSPROC.SCENE.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{	
						{
							["SPECIAL_KEY_WORDS"]  = {"Type", "LIGHT"},
							["REPLACE_TYPE"] 	= "ALL",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								--{"TransY",	"0.2"},  --original : 0.015763
								{"RotX",	"-90"},  --original : 0
								{"RotY",	"180"},  --original : 0
								{"RotZ",	"90"},  --original : 0
							},
						},	
						{
							["SPECIAL_KEY_WORDS"]  = {"Name", "FOV"},
							["REPLACE_TYPE"] 	= "ALL",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Value",	"180.000000"},  --original : 360.000000
							},
						},
						{
							["SPECIAL_KEY_WORDS"]  = {"Name", "pointLight12"},  --upper blue light
							["REPLACE_TYPE"] = "ADDAFTERSECTION",
							["ADD"] = InsertNewLight({name='pointLight121', ty=0.2, rx=90, ry=0, rz=-90, fov=180, i=4000, r='0.000', g='0.600', b='1.000'}),  
						},
						{
							["SPECIAL_KEY_WORDS"]  = {"Name", "pointLight12", "Name", "INTENSITY"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Value",	"2500.000000"},  
							},
						},							
						{
							["SPECIAL_KEY_WORDS"]  = {"Name", "pointLight1"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"TransY",	"-0.005763"},  --original : 
								{"RotX",	"90"},  --original : 
								{"RotY",	"0"},  --original : 
								{"RotZ",	"0"},  --original : 
							},
						},	
						{
							["SPECIAL_KEY_WORDS"]  = {"Name", "pointLight1", "Name", "COL_R"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Value",	"0.300000"},  --original : 0.846900
							},
						},	
						{
							["SPECIAL_KEY_WORDS"]  = {"Name", "pointLight1", "Name", "COL_G"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Value",	"0.700000"},  --original : 1.000000
							},
						},	
						{
							["SPECIAL_KEY_WORDS"]  = {"Name", "pointLight1", "Name", "COL_B"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Value",	"1.000000"},  --original : 0.607800
							},
						},
						{
							["SPECIAL_KEY_WORDS"]  = {"Name", "pointLight2"},  --upper blue light
							["REPLACE_TYPE"] = "ADDAFTERSECTION",
							["ADD"] = InsertNewLight({name='pointLight22', ty=0.2, rx=90, ry=0, rz=-90, fov=180, i=4000, r='0.000', g='0.600', b='1.000'}),  
						},
						{
							["SPECIAL_KEY_WORDS"]  = {"Name", "pointLight2", "Name", "COL_R"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Value",	"0.300000"},  --original : 0.846900
							},
						},	
						{
							["SPECIAL_KEY_WORDS"]  = {"Name", "pointLight2", "Name", "COL_G"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Value",	"0.700000"},  --original : 1.000000
							},
						},	
						{
							["SPECIAL_KEY_WORDS"]  = {"Name", "pointLight2", "Name", "COL_B"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Value",	"1.000000"},  --original : 0.607800
							},
						},
						{
							["SPECIAL_KEY_WORDS"]  = {"Name", "pointLight139"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"TransY",	"-0.005763"},  --original : 
								{"RotX",	"90"},  --original : 
								{"RotY",	"0"},  --original : 
								{"RotZ",	"0"},  --original : 
							},
						},	
						{
							["SPECIAL_KEY_WORDS"]  = {"Name", "pointLight139", "Name", "INTENSITY"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Value",	"3500.000000"},  
							},
						},	
						{
							["SPECIAL_KEY_WORDS"]  = {"Name", "pointLight139", "Name", "COL_R"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Value",	"0.300000"},  --original : 0.846900
							},
						},	
						{
							["SPECIAL_KEY_WORDS"]  = {"Name", "pointLight139", "Name", "COL_G"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Value",	"0.700000"},  --original : 1.000000
							},
						},	
						{
							["SPECIAL_KEY_WORDS"]  = {"Name", "pointLight139", "Name", "COL_B"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Value",	"1.000000"},  --original : 0.607800
							},
						},	
						{
							["SPECIAL_KEY_WORDS"]  = {"Name", "pointLight131"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"TransY",	"-0.005763"},  --original : 
								{"RotX",	"90"},  --original : 
								{"RotY",	"0"},  --original : 
								{"RotZ",	"0"},  --original : 
							},
						},		
						{
							["SPECIAL_KEY_WORDS"]  = {"Name", "pointLight131", "Name", "INTENSITY"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Value",	"3000.000000"},  
							},
						},
						{
							["SPECIAL_KEY_WORDS"]  = {"Name", "pointLight131", "Name", "COL_R"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Value",	"0.300000"},  --original : 0.846900
							},
						},	
						{
							["SPECIAL_KEY_WORDS"]  = {"Name", "pointLight131", "Name", "COL_G"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Value",	"0.700000"},  --original : 1.000000
							},
						},	
						{
							["SPECIAL_KEY_WORDS"]  = {"Name", "pointLight131", "Name", "COL_B"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Value",	"1.000000"},  --original : 0.607800
							},
						},
						-- Round pot with yellow light
						{  -- LOD0
							["SPECIAL_KEY_WORDS"] = {"Name", "pointLight134",},
							["REMOVE"] 	= "SECTION",
						},	
						{  -- LOD1
							["SPECIAL_KEY_WORDS"] = {"Name", "pointLight133",},
							["REMOVE"] 	= "SECTION",
						},	
						{  -- LOD2
							["SPECIAL_KEY_WORDS"] = {"Name", "pointLight132",},
							["REMOVE"] 	= "SECTION",
						},	
						{
							["SPECIAL_KEY_WORDS"]  = {"Name", "Pot3LOD3"},  -- LOD independant Light
							["REPLACE_TYPE"] = "ADDAFTERSECTION",
							["ADD"] = InsertNewLight({name='YellowLight', ty=-0.006, sx=0.034934, sy=0.034934, sz=0.034934, i=5000, r='1.000', g='0.9227', b='0.5'}),  
						},					
						{
							["SPECIAL_KEY_WORDS"]  = {"Name", "YellowLight"},  -- LOD independant top blue light
							["REPLACE_TYPE"] = "ADDAFTERSECTION",
							["ADD"] = InsertNewLight({name='BlueTopLight', ty=0.002763, rx=90, ry=0, rz=-90, sx=0.034934, sy=0.034934, sz=0.034934, fov=180, i=4000, r='0.000', g='0.600', b='1.000'}),  
						},
					},
				},
				{
					["MBIN_FILE_SOURCE"] 	= "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PROPS\ROOFMONITOR\ROOFLSYSPROC.SCENE.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{	
						{
							["SPECIAL_KEY_WORDS"]  = {"Name", "INTENSITY"},
							["REPLACE_TYPE"] 	= "ALL",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Value",	"2000.000000"},  --original : 5000.000000
							},
						},													
					},
				},
				{
					["MBIN_FILE_SOURCE"] 	= "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PROPS\STANDINGLIGHTS\STANDINGLIGHT_A.SCENE.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{	
						{
							["SPECIAL_KEY_WORDS"]  = {"Name", "pointLight1", "Name", "FOV"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Value",	"120.000000"},  --original : 360.000000
							},
						},	
						{
							["SPECIAL_KEY_WORDS"]  = {"Name", "pointLight1", "Name", "FALLOFF"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Value",	"linear"},  --original : quadratic
							},
						},	
						{
							["SPECIAL_KEY_WORDS"]  = {"Name", "pointLight1", "Name", "INTENSITY"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Value",	"25000.000000"},  
							},
						},						
					},
				},
				{  -- NPC Double circles stand lights
					["MBIN_FILE_SOURCE"] 	= "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PROPS\STANDINGLIGHTS\STANDINGLIGHTS.SCENE.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{	
						{  -- LOD0
							["SPECIAL_KEY_WORDS"] = {"Name", "pointLight3",},
							["REMOVE"] 	= "SECTION",
						},	
						{  -- LOD1
							["SPECIAL_KEY_WORDS"] = {"Name", "pointLight4",},
							["REMOVE"] 	= "SECTION",
						},	
						{  -- LOD2
							["SPECIAL_KEY_WORDS"] = {"Name", "pointLight5",},
							["REMOVE"] 	= "SECTION",
						},	
						{
							["SPECIAL_KEY_WORDS"]  = {"Name", "LightLOD3"},  --create a new LOD independant light
							["REPLACE_TYPE"] = "ADDAFTERSECTION",
							["ADD"] = InsertNewLight({name='newLight', ty=2.68094, tz =-0.8, fov=120, f = 'linear', i=10000}),  
						},										
					},
				},
				{  -- Removes lens flare double circle lights
					["MBIN_FILE_SOURCE"] 	= {
					"MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PROPS\STANDINGLIGHTS\STANDINGLIGHTS\LIGHTS1_MAT2.MATERIAL.MBIN",},
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["SPECIAL_KEY_WORDS"]  = {"Name", "gCustomParams01Vec4"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"y",	"1"},  --original : 3
							},
						},						
					},
				},	
				{
					["MBIN_FILE_SOURCE"] 	= "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PROPS\TABLE\ROUNDTABLE.SCENE.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{	
						{
							["SPECIAL_KEY_WORDS"]  = {"Name", "pointLight1"},  
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"TransY",	"0.55"},  --original : 0.400297
							},
						},	
						{
							["SPECIAL_KEY_WORDS"]  = {"Name", "pointLight1", "Name", "INTENSITY"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Value",	"5000.000000"},  --original : 5000.000000
							},
						},	
						{
							["SPECIAL_KEY_WORDS"]  = {"Name", "pointLight1B"},  -- round yellow stand
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"TransY",	"0.8"},  --original : 0.350297
							},
						},	
						{
							["SPECIAL_KEY_WORDS"]  = {"Name", "pointLight1B", "Name", "INTENSITY"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Value",	"8000.000000"},  --original : 4000.000000
							},
						},	
						{
							["SPECIAL_KEY_WORDS"]  = {"Name", "pointLight1B", "Name", "COL_G"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Value",	"0.900000"},  --original : 1.000000
							},
						},	
						{
							["SPECIAL_KEY_WORDS"]  = {"Name", "pointLight1B", "Name", "COL_B"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Value",	"0.300000"},  --original : 1.000000
							},
						},	
						{   --hexagonal table with blue light in the stand
							["SPECIAL_KEY_WORDS"]  = {"Name", "pointLight1B1s"},  
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"TransY",	"0.5"},  --original : 1.395906
							},
						},	
						{
							["SPECIAL_KEY_WORDS"]  = {"Name", "pointLight1B1s", "Name", "INTENSITY"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Value",	"9000.000000"},  --original : 4000.000000
							},
						},	
						{
							["SPECIAL_KEY_WORDS"]  = {"Name", "pointLight1B1s", "Name", "COL_R"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Value",	"0.382300"},  --original : 0.88230
							},
						},	
						{
							["SPECIAL_KEY_WORDS"]  = {"Name", "pointLight1B1s", "Name", "COL_G"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Value",	"0.928600"},  --original : 0.858600
							},
						},	
						{
							["SPECIAL_KEY_WORDS"]  = {"Name", "pointLight1B1s", "Name", "COL_B"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Value",	"1.000000"},  --original : 0.743900
							},
						},	
						{
							["SPECIAL_KEY_WORDS"]  = {"Name", "pointLight1B1s1"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"TransY",	"0.55"},  --original : 0.219432
							},
						},	
						{
							["SPECIAL_KEY_WORDS"]  = {"Name", "pointLight1B1s1", "Name", "INTENSITY"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Value",	"5000.000000"},  --original : 4000.000000
							},
						},							
					},
				},
				{    -- Stand Big white light from the first round table
					["MBIN_FILE_SOURCE"] 	= "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PROPS\TABLE\ROUNDTABLE\LIGHTS1_MAT.MATERIAL.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["SPECIAL_KEY_WORDS"]  = {"Name", "gCustomParams01Vec4"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"y",	"1"},  --original : 3
							},
						},	
					},
				},
				{    -- Stand Big white light from the second round table (with moving top light)
					["MBIN_FILE_SOURCE"] 	= "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PROPS\TABLE\ROUNDTABLEPARTS\TABLE_2\LIGHTS1_MAT.MATERIAL.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["SPECIAL_KEY_WORDS"]  = {"Name", "gCustomParams01Vec4"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"y",	"1"},  --original : 3
							},
						},	
					},
				},
				{		
					["MBIN_FILE_SOURCE"] 	= "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PROPS\TABLE\SMALLHEXTABLE.SCENE.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["SPECIAL_KEY_WORDS"] = {"Type", "COLLISION"},
							["REPLACE_TYPE"] = "ADDAFTERSECTION",
							["ADD"] = InsertNewLight({name='pointLight1', ty=0.55, i=4000}),   --<Property name="NameHash" value="4219409884" />
						},
					},
				},  
				{		
					["MBIN_FILE_SOURCE"] 	= "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PROPS\TABLE\SMALLHEXTABLE\LIGHTS1_MAT.MATERIAL.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["SPECIAL_KEY_WORDS"]  = {"Name", "gCustomParams01Vec4"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"y",	"1"},  --original : 3
							},
						},	
					},
				},
				{
					["MBIN_FILE_SOURCE"] 	= "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PROPS\WALLMONITORS\WALLMONITORB.SCENE.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{	
						{
							["SPECIAL_KEY_WORDS"]  = {"Name", "pointLight1", "Name", "INTENSITY"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Value",	"3000.000000"},  --original : 20000.000000
							},
						},								
					},
				},
				{
					["MBIN_FILE_SOURCE"] 	= "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PROPS\WALLMONITORS\WALLMONITORB2.SCENE.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{	
						{
							["SPECIAL_KEY_WORDS"]  = {"Name", "pointLight1sd", "Name", "INTENSITY"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Value",	"3000.000000"},  --original : 10000.000000
							},
						},								
					},
				},
				{
					["MBIN_FILE_SOURCE"] 	= "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PROPS\WALLMONITORS\WALLMONITORB3.SCENE.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{	
						{
							["SPECIAL_KEY_WORDS"]  = {"Name", "pointLight1s", "Name", "INTENSITY"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Value",	"3000.000000"},  --original : 10000.000000
							},
						},								
					},
				},
				{		-- new fibreglass roof
					["MBIN_FILE_SOURCE"] 	= "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\BASICPARTS\MESHES\FIBREGLASS\BASIC_ROOF_TOP0.SCENE.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["SPECIAL_KEY_WORDS"] = {"Name", "RoofTop0LOD3"},
							["REPLACE_TYPE"] = "ADDAFTERSECTION",
							["ADD"] = InsertNewLight({name='pointLight1', i=10000, r=0}),
						},
					},
				}, 
								{		-- new fibreglass roof
					["MBIN_FILE_SOURCE"] 	= "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\BASICPARTS\MESHES\FIBREGLASS\BASIC_ROOF_TOP1.SCENE.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["SPECIAL_KEY_WORDS"] = {"Name", "BRoofTop1LOD3"},
							["REPLACE_TYPE"] = "ADDAFTERSECTION",
							["ADD"] = InsertNewLight({name='pointLight1', i=10000, r=0}),
						},
					},
				}, 
								{		-- new fibreglass roof
					["MBIN_FILE_SOURCE"] 	= "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\BASICPARTS\MESHES\FIBREGLASS\BASIC_ROOF_TOP3.SCENE.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["SPECIAL_KEY_WORDS"] = {"Name", "BRoofTop3LOD3"},
							["REPLACE_TYPE"] = "ADDAFTERSECTION",
							["ADD"] = InsertNewLight({name='pointLight1', i=10000, r=0}),
						},
					},
				}, 
								{		-- new fibreglass roof
					["MBIN_FILE_SOURCE"] 	= "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\BASICPARTS\MESHES\FIBREGLASS\BASIC_ROOF_TOP5.SCENE.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["SPECIAL_KEY_WORDS"] = {"Name", "BRoofTop5LOD3"},
							["REPLACE_TYPE"] = "ADDAFTERSECTION",
							["ADD"] = InsertNewLight({name='pointLight1', i=10000, r=0}),
						},
					},
				}, 
				{		-- new fibreglass roof
					["MBIN_FILE_SOURCE"] 	= "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\BASICPARTS\MESHES\FIBREGLASS\BASIC_ROOF_TOP6.SCENE.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["SPECIAL_KEY_WORDS"] = {"Name", "BRTop6LOD3"},
							["REPLACE_TYPE"] = "ADDAFTERSECTION",
							["ADD"] = InsertNewLight({name='pointLight1', i=10000, r=0}),
						},
					},
				}, 
				{		-- new timber glass round roof
					["MBIN_FILE_SOURCE"] 	= "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\BASICPARTS\MESHES\TIMBER\BASIC_ROOF_TOP0.SCENE.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["SPECIAL_KEY_WORDS"] = {"Name", "GlassLOD2"},
							["REPLACE_TYPE"] = "ADDAFTERSECTION",
							["ADD"] = InsertNewLight({name='pointLight1', i=10000}),
						},
					},
				}, 
				{		-- new timber glass roof
					["MBIN_FILE_SOURCE"] 	= "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\BASICPARTS\MESHES\TIMBER\BASIC_ROOF_TOP1.SCENE.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["SPECIAL_KEY_WORDS"] = {"Name", "Glass_LOD3"},
							["REPLACE_TYPE"] = "ADDAFTERSECTION",
							["ADD"] = InsertNewLight({name='pointLight1', i=10000}),
						},
					},
				}, 
				{		-- new new timber glass roof
					["MBIN_FILE_SOURCE"] 	= "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\BASICPARTS\MESHES\TIMBER\BASIC_ROOF_TOP2.SCENE.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["SPECIAL_KEY_WORDS"] = {"Name", "GlassLOD3"},
							["REPLACE_TYPE"] = "ADDAFTERSECTION",
							["ADD"] = InsertNewLight({name='pointLight1', i=10000}),
						},
					},
				}, 
				{		-- new new timber glass roof
					["MBIN_FILE_SOURCE"] 	= "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\BASICPARTS\MESHES\TIMBER\BASIC_ROOF_TOP4.SCENE.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["SPECIAL_KEY_WORDS"] = {"Name", "polySUrface468LOD3"},
							["REPLACE_TYPE"] = "ADDAFTERSECTION",
							["ADD"] = InsertNewLight({name='pointLight1', i=10000}),
						},
					},
				}, 
				{		-- new timber low roof
					["MBIN_FILE_SOURCE"] 	= "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\BASICPARTS\MESHES\TIMBER\BASIC_ROOF_TOP6.SCENE.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["SPECIAL_KEY_WORDS"] = {"Name", "pSphere33LOD3"},
							["REPLACE_TYPE"] = "ADDAFTERSECTION",
							["ADD"] = InsertNewLight({name='pointLight1', i=10000}),
						},
					},
				}, 
				{		-- new timber carved round roof
					["MBIN_FILE_SOURCE"] 	= "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\BASICPARTS\MESHES\TIMBER\BASIC_ROOF_TOP7.SCENE.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["SPECIAL_KEY_WORDS"] = {"Name", "Base2LOD3"},
							["REPLACE_TYPE"] = "ADDAFTERSECTION",
							["ADD"] = InsertNewLight({name='pointLight1', i=10000}),
						},
					},
				}, 
				{
					["MBIN_FILE_SOURCE"] 	= "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\DECORATION\CEILINGLIGHT.SCENE.MBIN",  -- ring of light
					["EXML_CHANGE_TABLE"] 	= 
					{	
						{
							["SPECIAL_KEY_WORDS"]  = {"Name", "spotLight1"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"TransY",	"1.200000"},  --original : 0.852511
								{"RotX",	"-90"},  --original : 0
							},
						},	
						{
							["SPECIAL_KEY_WORDS"]  = {"Name", "spotLight1", "Name", "FOV"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Value",	"360.000000"},  --original : 40.000000
							},
						},	
						{
							["SPECIAL_KEY_WORDS"]  = {"Name", "spotLight1", "Name", "INTENSITY"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Value",	"20000.000000"},  --original : 1000.000000
							},
						},							
					},
				},
				{
					["MBIN_FILE_SOURCE"] 	= "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\DECORATION\LIGHTBOX.SCENE.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["SPECIAL_KEY_WORDS"] = {"Value", "ConON1_Shape"},
							["LINE_OFFSET"] = "+3",
							["REMOVE"] = "LINE",
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Value", "ConON1_Shape"},
							["LINE_OFFSET"] = "+2",
							["REPLACE_TYPE"] = "",
							--["SECTION_UP"] = 1,
							--["REPLACE_TYPE"] = "ADDAFTERSECTION",
							["ADD"] = [[      <Property name="Children" >
      </Property>]],
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Value", "ConON1_Shape"},
							["LINE_OFFSET"] = "+3",
							["REPLACE_TYPE"] = "",
							["ADD"] = InsertNewLight({name='pointLight1', ty=0.2, i=20000}),
						},
					},
				},
				{
					["MBIN_FILE_SOURCE"] 	= "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\DECORATION\LIGHTTABLE.SCENE.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{	
						{
							["SPECIAL_KEY_WORDS"]  = {"Name", "INTENSITY"},
							["REPLACE_TYPE"] 	= "ALL",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Value",	"0.000000"},  --original : 
							},
						},								
					},
				},
				{
					["MBIN_FILE_SOURCE"] 	= "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\DECORATION\SMALLLIGHT.SCENE.MBIN",  --orange lamp
					["EXML_CHANGE_TABLE"] 	= 
					{	
						{
							["SPECIAL_KEY_WORDS"]  = {"Name", "INTENSITY"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Value",	"25000.000000"},  --original : 30000
							},
						},	
						{
							["SPECIAL_KEY_WORDS"]  = {"Name", "COL_G"},
							["REPLACE_TYPE"] 	= "ALL",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Value",	"0.488610"},  --original : 0.288610
							},
						},							
					},
				},
				{
					["MBIN_FILE_SOURCE"] 	= "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\DECORATION\STANDINGLIGHT1.SCENE.MBIN",  -- rectangular flooding light
					["EXML_CHANGE_TABLE"] 	= 
					{	
						{
							["SPECIAL_KEY_WORDS"]  = {"Name", "pointLight1"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"TransY",	"2.988357"},  --original : 2.65
							},
						},	
						{
							["SPECIAL_KEY_WORDS"]  = {"Name", "pointLight1", "Name", "FOV"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Value",	"120.000000"},  --original : 360.000000
							},
						},	
						{
							["SPECIAL_KEY_WORDS"]  = {"Name", "pointLight1", "Name", "FALLOFF"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Value",	"linear"},  --original : quadratic
							},
						},	
						{
							["SPECIAL_KEY_WORDS"]  = {"Name", "pointLight1", "Name", "INTENSITY"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Value",	"30000.000000"},  --original : 5000.000000
							},
						},							
					},
				},
				{
					["MBIN_FILE_SOURCE"] 	= "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\DECORATION\STANDINGLIGHT2.SCENE.MBIN",  -- circular flooding light
					["EXML_CHANGE_TABLE"] 	= 
					{	
						{
							["SPECIAL_KEY_WORDS"]  = {"Name", "pointLight1"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"TransX",	"0"},  --original :
								{"TransY",	"2.68094"},  --original : 
								{"TransZ",	"-0.8"},  --original : 
							},
						},	
						{
							["SPECIAL_KEY_WORDS"]  = {"Name", "pointLight1", "Name", "FOV"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Value",	"120.000000"},  --original : 360.000000
							},
						},	
						{
							["SPECIAL_KEY_WORDS"]  = {"Name", "pointLight1", "Name", "FALLOFF"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Value",	"linear"},  --original : quadratic
							},
						},	
						{
							["SPECIAL_KEY_WORDS"]  = {"Name", "pointLight1", "Name", "INTENSITY"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Value",	"20000.000000"},  --original : 5000.000000
							},
						},							
					},
				},
				{
					["MBIN_FILE_SOURCE"] 	= "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\DECORATION\STANDINGLIGHT3.SCENE.MBIN",  -- standing light
					["EXML_CHANGE_TABLE"] 	= 
					{	
						{
							["SPECIAL_KEY_WORDS"]  = {"Name", "pointLight2"},
							["INTEGER_TO_FLOAT"] = "FORCE",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"TransZ",	"0.500000"},  --original : 0
							},
						},	
						{
							["SPECIAL_KEY_WORDS"]  = {"Name", "pointLight2", "Name", "INTENSITY"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Value",	"15000.000000"},  --original : 5000.000000
							},
						},	
						{
							["SPECIAL_KEY_WORDS"] = {"Name", "pointLight2"},
							["REPLACE_TYPE"] = "ADDAFTERSECTION",
							["ADD"] = InsertNewLight({name='PointLight2B', ty=2.142282, tz=-0.5, i=15000}),	
						},							
					},
				},
				{
					["MBIN_FILE_SOURCE"] 	= "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\HOLOCOM\HOLOHUB.SCENE.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{	
						{
							["SPECIAL_KEY_WORDS"]  = {"Name", "Light"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"TransY",	"0.300000"},  --original : 1.930022
							},
						},	
						{
							["SPECIAL_KEY_WORDS"]  = {"Name", "INTENSITY"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Value",	"40000.000000"},  --original : 100000.000000 
							},
						},								
						{
							["SPECIAL_KEY_WORDS"] = {"Type", "LIGHT"},
							["REPLACE_TYPE"] = "ADDAFTERSECTION",
							["ADD"] = InsertNewLight({name='Light2', ty=9.3, i=40000, g='0.642', b='0.000'}),
						},
					},
				},
				{
					["MBIN_FILE_SOURCE"] 	= "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\HOLOCOM\HOLOLADDER.SCENE.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{	
						{
							["SPECIAL_KEY_WORDS"]  = {"Name", "Light"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"TransY",	"0.300000"},  --original : 1.930022
							},
						},	
						{
							["SPECIAL_KEY_WORDS"]  = {"Name", "INTENSITY"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Value",	"40000.000000"},  --original : 100000.000000 
							},
						},								
						{
							["SPECIAL_KEY_WORDS"] = {"Type", "LIGHT"},
							["REPLACE_TYPE"] = "ADDAFTERSECTION",
							["ADD"] = InsertNewLight({name='Light2', ty=7, i=40000, g='0.642', b='0.000'}),
						},
					},
				},
				{
					["MBIN_FILE_SOURCE"] 	= "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\TECH\CUSTOMISESTATION.SCENE.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["PRECEDING_KEY_WORDS"] = {"Children"},
							["LINE_OFFSET"] = 0,
							--["REPLACE_TYPE"] = "ADDAFTERSECTION",
							--["SECTION_UP"] = 1,
							["ADD"] = InsertNewLight({name='Light1', ty=2, f='linear', i=10000}),
						},
					},
				},
				{
					["MBIN_FILE_SOURCE"] 	= "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\TECH\SHIPSALVAGETERMINAL.SCENE.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["PRECEDING_KEY_WORDS"] = {"Children"},
							["LINE_OFFSET"] = 0,
							--["SECTION_UP"] = 1,
							["ADD"] = InsertNewLight({name='Light1', ty=1.8, i=30000, g='0.300', b='0.000'}),
						},
					},
				},	
				{
					["MBIN_FILE_SOURCE"] 	= "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\SCIENTIFICPARTS\ROOFINTERIOR_BASE.SCENE.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["PRECEDING_KEY_WORDS"] = {"Children"},
							["LINE_OFFSET"] = 0,
							["ADD"] = InsertNewLight({name='spotLight7', ty=7.0, rx=-90, fov=240, i=35000}),
						},
					},
				},
			
				{
					["MBIN_FILE_SOURCE"] 	= "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\TERMINAL\TERMINAL_SHOP.SCENE.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["SPECIAL_KEY_WORDS"] = {"Name", "pointLight1",},
							["REMOVE"] 	= "SECTION",
						},
					},
				},
				{
					["MBIN_FILE_SOURCE"] 	= "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PROPS\TABLE\CORNERTABLEPARTS\CORNERTABLE_1.SCENE.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["SPECIAL_KEY_WORDS"]  = {"Name", "FALLOFF"},
							["REPLACE_TYPE"] 	= "ALL",
							["VALUE_CHANGE_TABLE"] 	= 
							{	
								{"Value",	"linear"},  --original : quadratic
							},
						},	
						{
							["SPECIAL_KEY_WORDS"]  = {"Name", "INTENSITY"},
							["REPLACE_TYPE"] 	= "ALL",
							["VALUE_CHANGE_TABLE"] 	= 
							{	
								{"Value",	"1500.000000"},  --original : 8000.000000
							},
						},	
					},
				},			
				{
					["MBIN_FILE_SOURCE"] 	= "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PROPS\ROOFMONITOR\ROOFMONITOR.SCENE.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["SPECIAL_KEY_WORDS"]  = {"Name", "pointLight1"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"TransY",	"-2.1"},  --original : -2.004718
								{"TransZ",	"0"},  --original : 0.059593
							},
						},
						{
							["SPECIAL_KEY_WORDS"]  = {"Name", "FALLOFF"},
							["VALUE_CHANGE_TABLE"] 	= 
							{	
								{"Value",	"linear"},  --original : quadratic
							},
						},	
						{
							["SPECIAL_KEY_WORDS"]  = {"Name", "INTENSITY"},
							["VALUE_CHANGE_TABLE"] 	= 
							{	
								{"Value",	"1500.000000"},  --original : 5000.000000
							},
						},	
					},
				},
				{
					["MBIN_FILE_SOURCE"] 	= "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PROPS\WALLLIGHTS\WALLLIGHTA.SCENE.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["SPECIAL_KEY_WORDS"]  = {"Name", "LODDIST2"},
							["VALUE_CHANGE_TABLE"] 	= 
							{	
								{"Value",	"25.000000"},  --original : 15.000000
							},
						},
						{
							["SPECIAL_KEY_WORDS"]  = {"Name", "LODDIST3"},
							["VALUE_CHANGE_TABLE"] 	= 
							{	
								{"Value",	"50.000000"},  --original : 20.000000
							},
						},
						{
							["SPECIAL_KEY_WORDS"]  = {"Name", "FOV"},
							["REPLACE_TYPE"] 	= "ALL",
							["VALUE_CHANGE_TABLE"] 	= 
							{	
								{"Value",	"150.000000"},  --original : 360.000000
							},
						},	
						{
							["SPECIAL_KEY_WORDS"]  = {"Name", "LightLOD0", "Name", "INTENSITY"},
							["VALUE_CHANGE_TABLE"] 	= 
							{	
								{"Value",	"8000.000000"},  --original : 5000.000000
							},
						},	
					},
				},		
				{  -- SHACK INTERIOR WALL DRAPE LIGHTS
					["MBIN_FILE_SOURCE"] 	= "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PROPS\HANGINGDRAPES\TRADERWALLDRAPE.SCENE.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["SPECIAL_KEY_WORDS"]  = {"Name", "WallFlagLight"},
							["INTEGER_TO_FLOAT"] = "FORCE",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								--{"TransX", "-0.014919"},  	--original 0.002193
								--{"TransY", "1.206272"},   	--original 1.490884
								--{"TransZ", "-0.340135"},	--original -0.474377
								{"RotX", "-55.334534"},	--original -83.03872
							},
						},	
						{
							["SPECIAL_KEY_WORDS"]  = {"Name", "WallFlagLight", "Name", "FOV"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Value",	"125.000000"},  --original : 125
							},
						},
						{
							["SPECIAL_KEY_WORDS"]  = {"Name", "WallFlagLight", "Name", "INTENSITY"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Value",	"20000.000000"},  --original : 15000.0
							},
						},
					},
				},
				{  -- SHACK EXTERIOR WALL DRAPE LIGHTS
					["MBIN_FILE_SOURCE"] 	= "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PROPS\HANGINGDRAPES\WALLDRAPE.SCENE.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["SPECIAL_KEY_WORDS"]  = {"Name", "WallFlagLight"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"TransX", "-0.014919"},
								{"TransY", "1.206272"},
								{"TransZ", "-0.340135"},
								{"RotX", "-110.334534"},
								{"RotY", "180.831268"},
								{"RotZ", "90.35328"},
							},
						},	
						{
							["SPECIAL_KEY_WORDS"]  = {"Name", "WallFlagLight", "Name", "FOV"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Value",	"90.000000"},  --original : 107.328094
							},
						},
						{
							["SPECIAL_KEY_WORDS"]  = {"Name", "WallFlagLight", "Name", "INTENSITY"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Value",	"40000.000000"},  --original : 33972.113281
							},
						},
					},
				},
				{  -- ABANDONNED BUILDING TERMINAL
					["MBIN_FILE_SOURCE"] 	= "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\COMMONPARTS\ABANDONEDTERMINAL.SCENE.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["SPECIAL_KEY_WORDS"] = {"Name", "pointLight1",},
							["REMOVE"] 	= "SECTION",
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Name", "pointLight2",},
							["REMOVE"] 	= "SECTION",
						},						
						{
							["SPECIAL_KEY_WORDS"] = {"Name", "pointLight3",},
							["REMOVE"] 	= "SECTION",
						},
					},
				},				
				{  -- MONITOR DESK
					["MBIN_FILE_SOURCE"] 	= "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PROPS\TABLE\MONITORDESK.SCENE.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["SPECIAL_KEY_WORDS"]  = {"Name", "DeskLOD0", "Name", "INTENSITY"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Value",	"3000.000000"},  --original : 5000.000000
							},
						},
						{
							["SPECIAL_KEY_WORDS"]  = {"Name", "DeskLOD1", "Name", "INTENSITY"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Value",	"2500.000000"},  --original : 5000.000000
							},
						},
						{
							["SPECIAL_KEY_WORDS"]  = {"Name", "DeskLOD2", "Name", "INTENSITY"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Value",	"2000.000000"},  --original : 3000.000000
							},
						},
					},
				},				
				{  -- Shack Hangar
					["MBIN_FILE_SOURCE"] 	= "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\SHACK\SHACKTRADER_PARTS\EXTERIORLAYOUTS\LAYOUTA_1.SCENE.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["SPECIAL_KEY_WORDS"]  = {"Name", "pointLight6", "Name", "INTENSITY"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Value",	"50000.000000"},  --original : 100000.000000
							},
						},		
						{
							["SPECIAL_KEY_WORDS"]  = {"Name", "pointLight7", "Name", "INTENSITY"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Value",	"50000.000000"},  --original : 100000.000000
							},
						},	
						{
							["SPECIAL_KEY_WORDS"]  = {"Name", "pointLight8", "Name", "INTENSITY"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Value",	"50000.000000"},  --original : 100000.000000
							},
						},							
					},
				},
				{  -- Shack Hangar
					["MBIN_FILE_SOURCE"] 	= "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\SHACK\SHACKTRADER_PARTS\EXTERIORLAYOUTS\LAYOUTA_3.SCENE.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["SPECIAL_KEY_WORDS"]  = {"Name", "pointLight6", "Name", "INTENSITY"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Value",	"50000.000000"},  --original : 100000.000000
							},
						},		
						{
							["SPECIAL_KEY_WORDS"]  = {"Name", "pointLight7", "Name", "INTENSITY"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Value",	"50000.000000"},  --original : 100000.000000
							},
						},	
						{
							["SPECIAL_KEY_WORDS"]  = {"Name", "pointLight8", "Name", "INTENSITY"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Value",	"50000.000000"},  --original : 100000.000000
							},
						},							
					},
				},
				{
					["MBIN_FILE_SOURCE"] 	= "MODELS\PLANETS\BIOMES\COMMON\RARERESOURCE\CAVE\EGGRESOURCE.SCENE.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["SPECIAL_KEY_WORDS"] = {"Name", "pointLight1",},
							["REMOVE"] 	= "SECTION",
						},	
						{
							["SPECIAL_KEY_WORDS"]  = {"Name", "pointLight2","Name", "INTENSITY"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Value",	"10000.000000"},  --original : 8500
							},
						},
						{
							["SPECIAL_KEY_WORDS"]  = {"Name", "pointLight2", "Name", "COL_R"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Value",	"0.950000"}, 
							},
						},
						{
							["SPECIAL_KEY_WORDS"]  = {"Name", "pointLight2", "Name", "COL_G"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Value",	"1.000000"}, 
							},
						},	
						{
							["SPECIAL_KEY_WORDS"]  = {"Name", "pointLight2", "Name", "COL_B"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Value",	"0.500000"}, 
							},
						},	
					},
				},
				{
					["MBIN_FILE_SOURCE"] 	= "MODELS\SPACE\SPACESTATION\MODULARPARTS\DOCK\BACK_SECTION.SCENE.MBIN",   
					["EXML_CHANGE_TABLE"] 	= 
					{	
						{
							["SPECIAL_KEY_WORDS"]  = {"Name", "LeftPlatformLight", "Name", "INTENSITY"},   --blue lights, light kept to add another light later
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Value",	"0.000000"},  --original : 20000.000000 
							},
						},				
						{
							["SPECIAL_KEY_WORDS"]  = {"Name", "RightPlatformLight", "Name", "INTENSITY"},  --blue lights, light kept to add another light later
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Value",	"0.000000"},  --original : 20000.000000 
							},
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Name", "LeftPlatformLight2",},
							["REMOVE"] 	= "SECTION",
						},					
						{
							["SPECIAL_KEY_WORDS"] = {"Name", "LeftPlatformLight3",},
							["REMOVE"] 	= "SECTION",
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Name", "pointLight313",},  --white pilar lights
							["REMOVE"] 	= "SECTION",
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Name", "pointLight314",},
							["REMOVE"] 	= "SECTION",
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Name", "pointLight315",},  
							["REMOVE"] 	= "SECTION",
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Name", "pointLight316",},
							["REMOVE"] 	= "SECTION",
						},	
						{
							["SPECIAL_KEY_WORDS"]  = {"Name", "pointLight317", "Name", "FOV"},  -- TELEPORTER
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Value",	"160.000000"},  --original : 360.000000 
							},
						},	
						{
							["SPECIAL_KEY_WORDS"]  = {"Name", "pointLight317", "Name", "INTENSITY"},  -- TELEPORTER
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Value",	"50000.000000"},  --original : 70000.000000 
							},
						},	
						{
							["SPECIAL_KEY_WORDS"]  = {"Name", "pointLight317", "Name", "COL_G"},  -- TELEPORTER
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Value",	"0.8"},  --original : 0.692300 
							},
						},							
						{
							["SPECIAL_KEY_WORDS"] = {"Name", "pointLight317"},
							["REPLACE_TYPE"] = "ADDAFTERSECTION",
							["ADD"] = InsertNewLight({name='pointLight317b', tx=-49.132, ty=8.78, tz=139.64, ry=180, fov=160, i=50000, r='0.000', g='0.800'}),					
						},					
						{
							["SPECIAL_KEY_WORDS"]  = {"Name", "pointLight5", "Name", "INTENSITY"},  --Main teal light
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Value",	"38000.000000"},  --original : 60000.000000 
							},
						},		
						{
							["SPECIAL_KEY_WORDS"] = {"Name", "pointLight5"},
							["REPLACE_TYPE"] = "ADDAFTERSECTION",
							["ADD"] = InsertNewLight({name='pointLight5b', ty=17.428, tz=115.92, f='linear', i=38000, r=0.627, g=0.911}),	
						},	
						{
							["SPECIAL_KEY_WORDS"] = {"Name", "pointLight5b"},
							["REPLACE_TYPE"] = "ADDAFTERSECTION",
							["ADD"] = InsertNewLight({name='pointLight5c', ty=17.428, tz=195.92, f='linear', i=38000, r=0.627, g=0.911}),	
						},							
						{
							["SPECIAL_KEY_WORDS"]  = {"Name", "LeftSectionModule", "Name", "pointLight116"},  --wings white lights
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"TransX",	"49.0"}, 
								{"TransY",	"10.7051"}, 
								{"TransZ",	"177.0"}, 
							},
						},	
						{
							["SPECIAL_KEY_WORDS"]  = {"Name", "LeftSectionModule", "Name", "pointLight116", "Name", "INTENSITY"},  
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Value",	"55000.000000"},  
							},
						},	
						{
							["SPECIAL_KEY_WORDS"]  = {"Name", "RightSectionModule", "Name", "pointLight116"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"TransX",	"-49.0"}, 
								{"TransY",	"10.7051"}, 
								{"TransZ",	"177.0"}, 
							},
						},	
						{
							["SPECIAL_KEY_WORDS"]  = {"Name", "RightSectionModule", "Name", "pointLight116", "Name", "INTENSITY"},  
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Value",	"55000.000000"},  
							},
						},	
						{
							["SPECIAL_KEY_WORDS"]  = {"Name", "LeftSectionModule", "Name", "pointLight116"},
							["REPLACE_TYPE"] = "ADDAFTERSECTION",
							["ADD"] = InsertNewLight({name='pointLight116b',tx=49, ty=10.7, tz=169.5, ry=180, i=55000}),
						},
						{
							["SPECIAL_KEY_WORDS"]  = {"Name", "LeftSectionModule", "Name", "pointLight311"},
							["REPLACE_TYPE"] = "ADDAFTERSECTION",
							["ADD"] = InsertNewLight({name='pointLight311b',tx=49, ty=10.7, tz=154.5, ry=180, i=55000}),
						},
						{
							["SPECIAL_KEY_WORDS"]  = {"Name", "RightSectionModule", "Name", "pointLight116"},
							["REPLACE_TYPE"] = "ADDAFTERSECTION",
							["ADD"] = InsertNewLight({name='pointLight116b',tx=-49, ty=10.7, tz=169.5, ry=180, i=55000}),
						},
						{
							["SPECIAL_KEY_WORDS"]  = {"Name", "RightSectionModule", "Name", "pointLight311"},
							["REPLACE_TYPE"] = "ADDAFTERSECTION",
							["ADD"] = InsertNewLight({name='pointLight311b',tx=-49, ty=10.7, tz=154.5, ry=180, i=55000}),
						},
						{
							["SPECIAL_KEY_WORDS"]  = {"Name", "LeftSectionModule", "Name", "pointLight311"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"TransX",	"49.0"}, 
								{"TransY",	"10.7501"}, 
								{"TransZ",	"162.0"}, 
							},
						},	
						{
							["SPECIAL_KEY_WORDS"]  = {"Name", "LeftSectionModule", "Name", "pointLight311", "Name", "INTENSITY"},  
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Value",	"55000.000000"},  
							},
						},	
						{
							["SPECIAL_KEY_WORDS"]  = {"Name", "RightSectionModule", "Name", "pointLight311"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"TransX",	"-49.0"}, 
								{"TransY",	"10.7501"}, 
								{"TransZ",	"162.0"}, 
							},
						},		
						{
							["SPECIAL_KEY_WORDS"]  = {"Name", "RightSectionModule", "Name", "pointLight311", "Name", "INTENSITY"},  
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Value",	"55000.000000"},  
							},
						},	
						{
							["SPECIAL_KEY_WORDS"]  = {"Name", "LeftSectionModule", "Name", "pointLight310"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"TransX",	"49.0"}, 
								{"TransY",	"10.7501"}, 
								{"TransZ",	"147.0"}, 
							},
						},
						{
							["SPECIAL_KEY_WORDS"]  = {"Name", "LeftSectionModule", "Name", "pointLight310", "Name", "INTENSITY"},  
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Value",	"55000.000000"},  
							},
						},							
						{
							["SPECIAL_KEY_WORDS"]  = {"Name", "RightSectionModule", "Name", "pointLight310"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"TransX",	"-49.0"}, 
								{"TransY",	"10.7501"}, 
								{"TransZ",	"147.0"}, 
							},
						},	
						{
							["SPECIAL_KEY_WORDS"]  = {"Name", "RightSectionModule", "Name", "pointLight310", "Name", "INTENSITY"},  
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Value",	"55000.000000"},  
							},
						},								
						{
							["SPECIAL_KEY_WORDS"]  = {"Name", "LeftPlatformLight"},  --middle lights
							["REPLACE_TYPE"] = "ADDAFTERSECTION",
							["ADD"] = InsertNewLight({name='LeftLight1',tx=36, ty=10, tz=145, rx=-90, i=28000}),
						},
						{
							["SPECIAL_KEY_WORDS"]  = {"Name", "LeftLight1"},  --middle lights
							["REPLACE_TYPE"] = "ADDAFTERSECTION",
							["ADD"] = InsertNewLight({name='LeftLight2',tx=39.5, ty=10, tz=145, rx=-90, i=28000}),
						},
						{
							["SPECIAL_KEY_WORDS"]  = {"Name", "LeftLight2"},  --middle lights
							["REPLACE_TYPE"] = "ADDAFTERSECTION",
							["ADD"] = InsertNewLight({name='LeftLight3',tx=36, ty=10, tz=160, rx=-90, i=28000}),
						},
						{
							["SPECIAL_KEY_WORDS"]  = {"Name", "LeftLight3"},  --middle lights
							["REPLACE_TYPE"] = "ADDAFTERSECTION",
							["ADD"] = InsertNewLight({name='LeftLight4',tx=39.5, ty=10, tz=160, rx=-90, i=28000}),
						},		
						{
							["SPECIAL_KEY_WORDS"]  = {"Name", "RightPlatformLight"},  --middle lights
							["REPLACE_TYPE"] = "ADDAFTERSECTION",
							["ADD"] = InsertNewLight({name='RightLight1',tx=-36, ty=10, tz=145, rx=-90, i=28000}),
						},
						{
							["SPECIAL_KEY_WORDS"]  = {"Name", "RightLight1"},  --middle lights
							["REPLACE_TYPE"] = "ADDAFTERSECTION",
							["ADD"] = InsertNewLight({name='RightLight2',tx=-39.5, ty=10, tz=145, rx=-90, i=28000}),
						},
						{
							["SPECIAL_KEY_WORDS"]  = {"Name", "RightLight2"},  --middle lights
							["REPLACE_TYPE"] = "ADDAFTERSECTION",
							["ADD"] = InsertNewLight({name='RightLight3',tx=-36, ty=10, tz=160, rx=-90, i=28000}),
						},
						{
							["SPECIAL_KEY_WORDS"]  = {"Name", "RightLight3"},  --middle lights
							["REPLACE_TYPE"] = "ADDAFTERSECTION",
							["ADD"] = InsertNewLight({name='RightLight4',tx=-39.5, ty=10, tz=160, rx=-90, i=28000}),
						},							
					},
				},
				{  -- SPACE STATION TUNNEL PITS BLUE LIGHTS
					["MBIN_FILE_SOURCE"] 	= "MODELS\SPACE\SPACESTATION\MODULARPARTS\DOCK\PARTS\TUNNELOPENING.SCENE.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
						{  -- LOD0
							["SPECIAL_KEY_WORDS"] = {"Name", "Light",},
							["REMOVE"] 	= "SECTION",
						},	
						{  -- LOD1
							["SPECIAL_KEY_WORDS"] = {"Name", "Light",},
							["REMOVE"] 	= "SECTION",
						},	
						{  -- LOD2
							["SPECIAL_KEY_WORDS"] = {"Name", "Light",},
							["REMOVE"] 	= "SECTION",
						},	
						{  -- LOD3
							["SPECIAL_KEY_WORDS"] = {"Name", "Light",},
							["REMOVE"] 	= "SECTION",
						},	
						{
							["SPECIAL_KEY_WORDS"]  = {"Name", "TunnelLOD3"},  --create a new LOD independant light
							["REPLACE_TYPE"] = "ADDAFTERSECTION",
							["ADD"] = InsertNewLight({name='newLight', ty=-0.316384, ry =-180, i=60000, r=0.0, g=0.6923}),  
						},
					},
				},
				{
					["MBIN_FILE_SOURCE"] 	= "MODELS\SPACE\SPACESTATION\MODULARPARTS\DOCK\LANDINGPAD.SCENE.MBIN",   --landing pad lights
					["EXML_CHANGE_TABLE"] 	= 
					{	
						{
							["SPECIAL_KEY_WORDS"]  = {"Type", "LIGHT"},
							["REPLACE_TYPE"] 	= "ALL",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"TransY",	"30.46178"},  --original : 10.46178
								{"TransZ",	"2.266191"},  --original : 0.266191
							},
						},	
						{
							["SPECIAL_KEY_WORDS"]  = {"Name", "FOV"}, 
							["REPLACE_TYPE"] 	= "ALL",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Value",	"60.000000"},  --original : 90.000000 
							},
						},	
						{
							["SPECIAL_KEY_WORDS"]  = {"Name", "spotLight7", "Name", "INTENSITY"},  
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Value",	"85000.000000"},  
							},
						},	
						{
							["SPECIAL_KEY_WORDS"]  = {"Name", "spotLight8", "Name", "INTENSITY"},  
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Value",	"85000.000000"},  
							},
						},
						{
							["SPECIAL_KEY_WORDS"]  = {"Name", "spotLight9", "Name", "INTENSITY"},  
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Value",	"85000.000000"},  
							},
						},	
						{
							["SPECIAL_KEY_WORDS"]  = {"Name", "spotLight7"},  --counter teal light
							["REPLACE_TYPE"] = "ADDAFTERSECTION",
							["ADD"] = InsertNewLight({name='spotLight7b',tx=0.1, ty=-5.46, tz=2.267, rx=90,sx=20, sy=20, sz=20, fov=180, f='quadratic', i=90000, r='0.000', g='0.828'}),
						},						
					},
				},					
	--[[			{  -- SAVE POINT
					["MBIN_FILE_SOURCE"] 	= "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\TECH\SAVEPOINTPRESCALE.SCENE.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["SPECIAL_KEY_WORDS"]  = {"Name", "joint1"}, 
							["REPLACE_TYPE"] = "ADDAFTERSECTION",
							["ADD"] = InsertNewLight({name='newLight',y=0.5, i=15000, g=0.60, b=0.0}),  
						},
					},
				},
	]]--
				{  -- BLUEPRINT ANALYSER hologram
					["MBIN_FILE_SOURCE"] 	= "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\TECH\PARTS\BPANALYSER\BLUEPRINTANALYSEREFFECT.SCENE.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
						{  -- Folder yellow light
							["SPECIAL_KEY_WORDS"]  = {"Name", "pointLight2", "Name", "INTENSITY"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Value",	"4000.0"},  --original : 1.0
							},
						},
						{  
							["SPECIAL_KEY_WORDS"]  = {"Name", "pointLight2", "Name", "COL_G"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Value",	"1.000000"},  --original : 0.496
							},
						},
						{  --Blue light
							["SPECIAL_KEY_WORDS"]  = {"Name", "pointLight1", "Name", "INTENSITY"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Value",	"8000.0"},  --original : 1.0
							},
						},
						{
							["SPECIAL_KEY_WORDS"]  = {"Name", "pointLight1", "Name", "COL_R"},  --pointLight1
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Value",	"0.0"},  --original : 0.45
							},
						},
						{
							["SPECIAL_KEY_WORDS"]  = {"Name", "pointLight1", "Name", "COL_G"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Value",	"0.400000"},  --original : 0.87
							},
						},
						{
							["SPECIAL_KEY_WORDS"]  = {"Name", "pointLight1", "Name", "COL_B"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Value",	"1.0"},  --original : 1.0
							},
						},
					},
				},
				{  -- BLUEPRINT ANALYSER
					["MBIN_FILE_SOURCE"] 	= "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\TECH\BLUEPRINTANALYSER.SCENE.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{		
						{
							["SPECIAL_KEY_WORDS"]  = {"Name", "Light"}, 
							["REPLACE_TYPE"] = "ADDAFTERSECTION",
							["ADD"] = InsertNewLight({name='newtealLight1',tx=0.0, ty=1.0, tz=0.1, ry=180, fov=145, i=5000,r=0.45, g=0.87, b=1.0}),  
						},
						{
							["SPECIAL_KEY_WORDS"]  = {"Name", "Light"}, 
							["REPLACE_TYPE"] = "ADDAFTERSECTION",
							["ADD"] = InsertNewLight({name='newtealLight2',tx=0.0, ty=1.0, tz=-0.1, fov=145, i=5000, r=0.45, g=0.87, b=1.0}),  
						},
					},
				},
				--[[
				{  -- tiny bulb on top of a plant
					["MBIN_FILE_SOURCE"] 	= "MODELS\PLANETS\BIOMES\CAVE\SMALLPROP\SMALLGLOWPLANT.SCENE.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["SPECIAL_KEY_WORDS"]  = {"Name", "_MedPlant_C"},  --create a new LOD independant light
							["REPLACE_TYPE"] = "ADDAFTERSECTION",
							["ADD"] = InsertNewLight({name='newLight', ty=0.516384, i=60000, r=0.0, g=0.6923}),  
						},
					},
				},
				
				{  -- UNSURE
					["MBIN_FILE_SOURCE"] 	= "MODELS\PLANETS\BIOMES\CAVE\SMALLPROP\SMALLPLANT.SCENE.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["SPECIAL_KEY_WORDS"]  = {"Name", "_SmallPlant_ALOD0"},  --create a new LOD independant light
							["REPLACE_TYPE"] = "ADDAFTERSECTION",
							["ADD"] = InsertNewLight({name='newLight', ty=0.516384, i=20000, r=0.4, g=0.72, b=0.0}),  
						},
					},
				},
				]]--
				{  -- BIG MARROW BULBS
					["MBIN_FILE_SOURCE"] 	= "MODELS\PLANETS\BIOMES\CAVE\MEDIUMPROP\MEDIUMGLOWPLANT.SCENE.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["SPECIAL_KEY_WORDS"]  = {"Name", "_MedPlant_C"},  --create a new LOD independant light
							["REPLACE_TYPE"] = "ADDAFTERSECTION",
							["ADD"] = InsertNewLight({name='newLight', ty=1.0, i=40000, r=0.4, g=0.72, b=0.0}),  
						},
					},
				},				
--[[				
				{
					["MBIN_FILE_SOURCE"] 	= "MODELS\SPACE\SPACESTATION\MODULARPARTS\DOCK\SHOPS\MISSIONSHOP.SCENE.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["SPECIAL_KEY_WORDS"]  = {"Name", "LODDIST1"},
							["VALUE_CHANGE_TABLE"] 	= 
							{	
								{"Value",	"50.000000"},  --original : 5.000000
							},
						},
						{
							["SPECIAL_KEY_WORDS"]  = {"Name", "LODDIST2"},
							["VALUE_CHANGE_TABLE"] 	= 
							{	
								{"Value",	"100.000000"},  --original : 10.000000
							},
						},
						{
							["SPECIAL_KEY_WORDS"]  = {"Name", "LODDIST3"},
							["VALUE_CHANGE_TABLE"] 	= 
							{	
								{"Value",	"200.000000"},  --original : 13.000000
							},
						},
						{
							["SPECIAL_KEY_WORDS"]  = {"Name", "pointLight1"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"TransX",	"-2.0"},  --original : -0.410532
								{"TransY",	"0.6"},  --original : 2.384698
								{"TransZ",	"0.7"},  --original : 7.774412
							},
						},	
						{
							["SPECIAL_KEY_WORDS"]  = {"Name", "pointLight1","Name", "FALLOFF"},

							["VALUE_CHANGE_TABLE"] 	= 
							{	
								{"Value",	"linear"},  --original : quadratic
							},
						},	
						{
							["SPECIAL_KEY_WORDS"]  = {"Name", "pointLight1", "Name", "INTENSITY"}, 

							["VALUE_CHANGE_TABLE"] 	= 
							{	
								{"Value",	"6000.000000"},  --original : 5000.000000
							},
						},	
						{
							["SPECIAL_KEY_WORDS"]  = {"Name", "pointLight1","Name", "COL_R"},
							["VALUE_CHANGE_TABLE"] 	= 
							{	
								{"Value",	"1.000000"},  --original : 
							},
						},	
						{
							["SPECIAL_KEY_WORDS"]  = {"Name", "pointLight1", "Name", "COL_G"}, 
							["VALUE_CHANGE_TABLE"] 	= 
							{	
								{"Value",	"1.000000"},  --original : 
							},
						},	
						{
							["SPECIAL_KEY_WORDS"]  = {"Name", "pointLight2", "Name", "INTENSITY"}, 

							["VALUE_CHANGE_TABLE"] 	= 
							{	
								{"Value",	"3000.000000"},  --original : 4000.000000
							},
						},	
						{
							["SPECIAL_KEY_WORDS"] = {"Name", "pointLight3",},
							["REMOVE"] 	= "SECTION",
						},
						{
							["SPECIAL_KEY_WORDS"]  = {"Name", "pointLight4"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"TransX",	"-2.188342"},  --original : -2.088342
							},
						},
						{
							["SPECIAL_KEY_WORDS"]  = {"Name", "pointLight4","Name", "FALLOFF"},

							["VALUE_CHANGE_TABLE"] 	= 
							{	
								{"Value",	"linear"},  --original : quadratic
							},
						},	
						{
							["SPECIAL_KEY_WORDS"]  = {"Name", "pointLight4", "Name", "INTENSITY"}, 

							["VALUE_CHANGE_TABLE"] 	= 
							{	
								{"Value",	"1500.000000"},  --original : 5000.000000
							},
						},	
						{
							["SPECIAL_KEY_WORDS"]  = {"Name", "pointLight4","Name", "COL_R"},
							["VALUE_CHANGE_TABLE"] 	= 
							{	
								{"Value",	"1.000000"},  --original : 
							},
						},	
						{
							["SPECIAL_KEY_WORDS"]  = {"Name", "pointLight4", "Name", "COL_G"}, 
							["VALUE_CHANGE_TABLE"] 	= 
							{	
								{"Value",	"0.620000"},  --original : 
							},
						},	
						{
							["SPECIAL_KEY_WORDS"]  = {"Name", "pointLight4", "Name", "COL_B"}, 
							["VALUE_CHANGE_TABLE"] 	= 
							{	
								{"Value",	"0.000000"},  --original : 
							},
						},	
						{
							["SPECIAL_KEY_WORDS"] = {"Name", "LeftOrange",},
							["REMOVE"] 	= "SECTION",
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Name", "pointLight5",},
							["REMOVE"] 	= "SECTION",
						},
						{
							["SPECIAL_KEY_WORDS"]  = {"Name", "pointLight6","Name", "FALLOFF"},

							["VALUE_CHANGE_TABLE"] 	= 
							{	
								{"Value",	"linear"},  --original : quadratic
							},
						},	
						{
							["SPECIAL_KEY_WORDS"]  = {"Name", "pointLight6", "Name", "INTENSITY"}, 

							["VALUE_CHANGE_TABLE"] 	= 
							{	
								{"Value",	"1500.000000"},  --original : 5000.000000
							},
						},	
						{
							["SPECIAL_KEY_WORDS"] = {"Name", "pointLight7",},
							["REMOVE"] 	= "SECTION",
						},
						{
							["SPECIAL_KEY_WORDS"]  = {"Name", "pointLight8", "Name", "INTENSITY"}, 

							["VALUE_CHANGE_TABLE"] 	= 
							{	
								{"Value",	"3000.000000"},  --original : 4000.000000
							},
						},	
						{
							["SPECIAL_KEY_WORDS"]  = {"Name", "pointLight9", "Name", "INTENSITY"}, 

							["VALUE_CHANGE_TABLE"] 	= 
							{	
								{"Value",	"3000.000000"},  --original : 4000.000000
							},
						},	
						{
							["SPECIAL_KEY_WORDS"]  = {"Name", "MidWhite"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"TransX",	"2.0"},  
								{"TransY",	"0.6"}, 
								{"TransZ",	"0.7"},  
							},
						},	
						{
							["SPECIAL_KEY_WORDS"]  = {"Name", "MidWhite","Name", "FALLOFF"},

							["VALUE_CHANGE_TABLE"] 	= 
							{	
								{"Value",	"linear"},  --original : quadratic
							},
						},	
						{
							["SPECIAL_KEY_WORDS"]  = {"Name", "MidWhite", "Name", "INTENSITY"}, 

							["VALUE_CHANGE_TABLE"] 	= 
							{	
								{"Value",	"6000.000000"},  --original : 13000.000000
							},
						},
					},
				},
]]--				
				{  -- Removes Hover bike lights lens flare
					["MBIN_FILE_SOURCE"] 	= "MODELS\COMMON\VEHICLES\BIKE\BIKEPRES\LIGHTS_ENGINEGLOW_MAT.MATERIAL.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["SPECIAL_KEY_WORDS"]  = {"Name", "gCustomParams01Vec4"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"y",	"1"},  --original : 15
							},
						},						
					},
				},	
			}
		}
	}	
}


  
