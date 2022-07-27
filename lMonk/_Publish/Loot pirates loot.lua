--------------------------------------------------------------------------
local desc = [[
  Replace space pirates & raids loot with a more varied selection
]]------------------------------------------------------------------------
mod_version = 1.52

local function bool(b)
	return (b == true) and 'True' or 'False'
end

local function R_TableItem(item, data, reward)
	local function Amount()
		if not item.x then return '' end
		return [[
			<Property name="AmountMin" value="]]..(item.n or item.x)..[["/>
			<Property name="AmountMax" value="]]..item.x..[["/>]]
	end
	return [[
		<Property value="GcRewardTableItem.xml">
			<Property name="PercentageChance" value="]]..item.c..[["/>
			<Property name="Reward" value="]]..reward..[[">
				]]..data..Amount()..[[
			</Property>
		</Property>]]
end
local function R_Procedural(item)
	local exml = [[
		<Property name="Type" value="GcProceduralProductCategory.xml">
			<Property name="ProceduralProductCategory" value="]]..item.id..[["/>
		</Property>
		<Property name="Rarity" value="GcRarity.xml">
			<Property name="Rarity" value="]]..(item.r or 'Common')..[["/>
		</Property>
	]]
	return R_TableItem(item, exml, 'GcRewardProceduralProduct.xml')
end
local function R_Product(item)
	local exml = [[
		<Property name="ID" value="]]..item.id..[["/>
		<Property name="Silent" value="]]..bool(item.s)..[["/>
	]]
	return R_TableItem(item, exml, 'GcRewardSpecificProduct.xml')
end
local function R_Substance(item)
	local exml = [[
		<Property name="ID" value="]]..item.id..[["/>
		<Property name="HardModeMultiplier" value="1"/>
		<Property name="Silent" value="]]..bool(item.s)..[["/>
	]]
	return R_TableItem(item, exml, 'GcRewardSpecificSubstance.xml')
end
local function R_Money(item)
	local exml = [[
		<Property name="Currency" value="GcCurrency.xml">
			<Property name="Currency" value="]]..item.id..[["/>
		</Property>
	]]
	return R_TableItem(item, exml, 'GcRewardMoney.xml')
end

local E_ = {
	-- ProceduralProductCategoryEnum
	LOT='Loot',
	FRH='FreighterTechHyp',
	FRS='FreighterTechSpeed',
	FRF='FreighterTechFuel',
	FRT='FreighterTechTrade',
	FRC='FreighterTechCombat',
	FRM='FreighterTechMine',
	FRE='FreighterTechExp',
	DBI='DismantleBio',
	DTC='DismantleTech',
	DDT='DismantleData',
	BIO='BioSample',
	BNS='Bones',
	FOS='Fossil',
	SLT='SeaLoot',
	SHR='SeaHorror',
	SPB='SpaceBones',
	SPH='SpaceHorror',
	SLV='Salvage',

	-- MultiItemRewardTypeEnum
	PDT='Product',	SBT='Substance',	PRP='ProcProduct',
	-- PRT='ProcTech', not supported

	-- RarityEnum
	C='Common',		U='Uncommon',		R='Rare',

	-- Money
	UT='Units',		NN='Nanites',		HG='Specials', -- quicksilver
}

local new_reward = {
	{
	---	pirate attack loot - easy level ---
		id			= 'PIRATELOOT_EASY',
		choice		= 'SelectAlways',
		rewardlist	= {
			--id					Min		Max		%		function
			{id='SHIPCHARGE',				x=1,	c=80,	f=R_Product},
			{id='TRA_ALLOY1',		n=1,	x=2,	c=40,	f=R_Product},
			{id='TRA_ENERGY1',		n=1,	x=2,	c=40,	f=R_Product},
			{id='TRA_EXOTICS1',		n=1,	x=2,	c=40,	f=R_Product},
			{id='ILLEGAL_PROD3',	n=1,	x=2,	c=40,	f=R_Product},
			{id=E_.DBI,				r=E_.C,			c=30,	f=R_Procedural},
			{id=E_.DTC,				r=E_.C,			c=30,	f=R_Procedural},
			{id=E_.UT,				n=18000,x=30000,c=80,	f=R_Money},
		}
	},{
	---	pirate attack loot - normal level ---
		id			= 'PIRATELOOT',
		choice 		= 'SelectAlways',
		zeroseed 	= true,
		replacement	= true,
		rewardlist	= {
			--id					Min		Max		%		function
			{id='SHIPCHARGE',		n=1,	x=2,	c=80,	f=R_Product},
			{id='SCRAP_GOODS',				x=1,	c=90,	f=R_Product},
			{id='SCRAP_TECH',				x=1,	c=90,	f=R_Product},
			{id='SCRAP_WEAP',				x=1,	c=90,	f=R_Product},
			{id='TRA_ALLOY3',		n=1,	x=3,	c=40,	f=R_Product},
			{id='TRA_ENERGY3',		n=1,	x=3,	c=40,	f=R_Product},
			{id='TRA_COMPONENT3',	n=1,	x=3,	c=40,	f=R_Product},
			{id='TRA_MINERALS3',	n=1,	x=3,	c=40,	f=R_Product},
			{id='ILLEGAL_PROD4',	n=1,	x=2,	c=30,	f=R_Product},
			{id='AF_METAL',			n=100,	x=130,	c=30,	f=R_Substance},
			{id=E_.DBI,				r=E_.U,			c=30,	f=R_Procedural},
			{id=E_.DTC,				r=E_.U,			c=30,	f=R_Procedural},
			{id=E_.NN,				n=100,	x=250,	c=100,	f=R_Money},
		}
	},{
	---	 pirate attack loot - hard level ---
		id			= 'PIRATELOOT_HARD',
		choice		= 'SelectAlways',
		zeroseed	= true,
		rewardlist	= {
			--id					Min		Max		%		function
			{id='SHIPCHARGE',		n=1,	x=3,	c=80,	f=R_Product},
			{id='WATER2',			n=260,	x=360,	c=40,	f=R_Substance},
			{id='EX_GREEN',			n=150,	x=250,	c=40,	f=R_Substance},
			{id='EX_BLUE',			n=120,	x=220,	c=40,	f=R_Substance},
			{id='AF_METAL',			n=110,	x=180,	c=40,	f=R_Substance},
			{id='SCRAP_GOODS',				x=1,	c=40,	f=R_Product},
			{id='SCRAP_TECH',				x=1,	c=40,	f=R_Product},
			{id='SCRAP_WEAP',				x=1,	c=40,	f=R_Product},
			{id='TRA_ENERGY4',		n=1,	x=3,	c=50,	f=R_Product},
			{id='TRA_ALLOY4',		n=1,	x=3,	c=50,	f=R_Product},
			{id='TRA_EXOTICS4',		n=1,	x=3,	c=50,	f=R_Product},
			{id='TRA_TECH4',		n=1,	x=3,	c=50,	f=R_Product},
			{id='ILLEGAL_PROD5',	n=1,	x=2,	c=30,	f=R_Product},
			{id='GEODE_RARE',				x=1,	c=20,	f=R_Product},
			{id=E_.DBI,				r=E_.R,			c=20,	f=R_Procedural},
			{id=E_.DTC,				r=E_.R,			c=20,	f=R_Procedural},
			{id=E_.NN,				n=300,	x=400,	c=100,	f=R_Money},
		}
	},{
	---	 pirate attack loot - building raid ---
		id			= 'RAIDLOOT',
		choice		= 'SelectAlways',
		rewardlist	= {
			--id					Min		Max		%		function
			{id='SHIPCHARGE',				x=1,	c=80,	f=R_Product},
			{id='SCRAP_GOODS',				x=1,	c=40,	f=R_Product},
			{id='SCRAP_TECH',				x=1,	c=40,	f=R_Product},
			{id='ILLEGAL_PROD2',	n=1,	x=4,	c=30,	f=R_Product},
			{id='WATER2',			n=260,	x=280,	c=30,	f=R_Substance},
			{id='GEODE_RARE',				x=1,	c=20,	f=R_Product},
			{id=E_.DBI,				r=E_.U,			c=20,	f=R_Procedural},
			{id=E_.DTC,				r=E_.U,			c=20,	f=R_Procedural},
			{id=E_.UT,				n=25000,x=35000,c=80,	f=R_Money},
		}
	}
}
function new_reward:AddTableEntry(rte)
	local function getRewardsList(list)
		local exml = {}
		table.insert(exml, '<Property name="List">')
		for _,rwd in pairs(list) do
			table.insert(exml, rwd.f(rwd))
		end
		table.insert(exml, '</Property>')
		return table.concat(exml)
	end
	return [[
		<Property value="GcGenericRewardTableEntry.xml">
			<Property name="Id" value="]]..rte.id..[["/>
			<Property name="List" value="GcRewardTableItemList.xml">
				<Property name="RewardChoice" value="]]..rte.choice..[["/>
				<Property name="OverrideZeroSeed" value="]]..bool(rte.zeroseed)..[["/>
				]]..getRewardsList(rte.rewardlist)..[[
			</Property>
		</Property>]]
end

local function AddNewRewardsToChangeTable()
	local T = {}
	local rewards = ''
	for _,rwd in ipairs(new_reward) do
		if rwd.replacement then
			table.insert(T, {
				SPECIAL_KEY_WORDS	= {'Id', rwd.id},
				REMOVE				= 'Section'
			})
		end
		rewards = rewards..new_reward:AddTableEntry(rwd)
	end
	table.insert(T, {
		PRECEDING_KEY_WORDS	= 'GenericTable',
		ADD					= rewards
	})	
	return T
end

NMS_MOD_DEFINITION_CONTAINER = {
	MOD_FILENAME 		= '_MOD.lMonk.Loot pirates loot.'..mod_version..'.pak',
	MOD_AUTHOR			= 'lMonk',
	NMS_VERSION			= 3.97,
	MOD_DESCRIPTION		= desc,
	MODIFICATIONS 		= {{
	MBIN_CHANGE_TABLE	= {
	{
		MBIN_FILE_SOURCE	= 'METADATA/REALITY/TABLES/REWARDTABLE.MBIN',
		EXML_CHANGE_TABLE	= AddNewRewardsToChangeTable()
	},
	{
		MBIN_FILE_SOURCE	= 'METADATA/SIMULATION/SPACE/AISPACESHIPATTACKDATATABLE.MBIN',
		EXML_CHANGE_TABLE	= {
			{
				PRECEDING_FIRST		= true,
				PRECEDING_KEY_WORDS = 'Definitions',
				SPECIAL_KEY_WORDS	= {'Id', 'PIRATE_EASY'},
				VALUE_CHANGE_TABLE	= {
					{'Reward',		'PIRATELOOT_EASY'}
				}
			},
			{
				PRECEDING_FIRST		= true,
				PRECEDING_KEY_WORDS = 'Definitions',
				SPECIAL_KEY_WORDS	= {'Id', 'PIRATE'},
				VALUE_CHANGE_TABLE	= {
					{'Reward',		'PIRATELOOT'}
				}
			},
			{
				PRECEDING_FIRST		= true,
				PRECEDING_KEY_WORDS = 'Definitions',
				SPECIAL_KEY_WORDS	= {'Id', 'PIRATE_HARD'},
				VALUE_CHANGE_TABLE	= {
					{'Reward',		'PIRATELOOT_HARD'}
				}
			},
			{
				PRECEDING_FIRST		= true,
				PRECEDING_KEY_WORDS = 'Definitions',
				SPECIAL_KEY_WORDS	= {'Id', 'RAID_BUILDING'},
				VALUE_CHANGE_TABLE	= {
					{'Reward',		'RAIDLOOT'}
				}
			},
			{
				PRECEDING_FIRST		= true,
				PRECEDING_KEY_WORDS = 'Definitions',
				SPECIAL_KEY_WORDS	= {'Id', 'RAID_DOGFIGHT'},
				VALUE_CHANGE_TABLE	= {
					{'Reward',		'RAIDLOOT'}
				}
			},
			{
				PRECEDING_FIRST		= true,
				PRECEDING_KEY_WORDS = 'Definitions',
				SPECIAL_KEY_WORDS	= {'Id', 'POLICE'},
				VALUE_CHANGE_TABLE	= {
					{'Reward',		'POLICELOOT'}
				}
			},
			{
				PRECEDING_FIRST		= true,
				PRECEDING_KEY_WORDS = 'Definitions',
				SPECIAL_KEY_WORDS	= {'Id', 'PLANET_FLYBY'},
				VALUE_CHANGE_TABLE	= {
					{'Reward',		'PIRATELOOT_EASY'}
				}
			}
		}
	}
}}}}
