Config = {}

Config.SoundAlert = false

Config.CrateDrops = {
	[1] = { x = 1450.8375, y = -843.1746, z = 112.3484, hash = {'prop_box_wood02a_pu', 'hei_prop_carrier_cargo_03a', 'hei_prop_carrier_cargo_04a', 'hei_prop_carrier_cargo_05a'} },
	[2] = { x = -1633.2772, y = 1006.2593, z = 153.5418, hash = {'prop_box_wood02a_pu', 'hei_prop_carrier_cargo_03a', 'hei_prop_carrier_cargo_04a', 'hei_prop_carrier_cargo_05a'} },
	[3] = { x = -2276.5688, y = -254.1768, z = 61.4962, hash = {'prop_box_wood02a_pu', 'hei_prop_carrier_cargo_03a', 'hei_prop_carrier_cargo_04a', 'hei_prop_carrier_cargo_05a'} },
	[4] = { x = -1449.0895, y = -1271.3337, z = 3.3773, hash = {'prop_box_wood02a_pu', 'hei_prop_carrier_cargo_03a', 'hei_prop_carrier_cargo_04a', 'hei_prop_carrier_cargo_05a'} },
	[5] = { x = -405.4167, y = -2724.9417, z = 6.0002, hash = {'prop_box_wood02a_pu', 'hei_prop_carrier_cargo_03a', 'hei_prop_carrier_cargo_04a', 'hei_prop_carrier_cargo_05a'} },
}

Config.PlaneSht = {
	[1] = { x = 1433.3782, y = -853.6286, z = 112.1242, plane = 'apa_mp_apa_crashed_usaf_01a' },
	[2] = { x = -1650.5477, y = 1004.4904, z = 152.9064, plane = 'apa_mp_apa_crashed_usaf_01a' },
	[3] = { x = -2271.2024, y = -235.6659, z = 66.8189, plane = 'apa_mp_apa_crashed_usaf_01a' },
	[4] = { x = -1450.8055, y = -1286.6951, z = 3.8366, plane = 'apa_mp_apa_crashed_usaf_01a' },
	[5] = { x = -406.9281, y = -2738.7947, z = 6.0002, plane = 'apa_mp_apa_crashed_usaf_01a' },
}

Config.Crates =  {
	[1] = 'hei_prop_carrier_cargo_04a', 
	[2] = 'prop_drop_crate_01_set2',
    [3] = 'ex_prop_crate_expl_sc',
	[4] = 'ex_prop_crate_closed_bc'
}

Config.Planes =  {
	[1] = 'apa_mp_apa_crashed_usaf_01a', 
}

-- Items die kunnen spawnen per blauw haakje (random)
Config.Weapon = {
	InventoryReward = {
		{
			{'weapon_m1911', 1},
			{'ammo-9', 400},
			{'weapon_switchblade', 1},
		},
		{
			{'weapon_spas12', 1},
			{'ammo-shotgun', 40},
		},
        {
			{'weapon_ak47', 1},
			{'ammo-rifle', 400},
		},
        {
			{'weapon_ak47u', 1},
			{'ammo-rifle', 400},
		},
        {
			{'weapon_ump45', 1},
			{'ammo-45', 400},
		},
		{
			{'weapon_smithwesson', 1},
			{'ammo-9', 200},
			{'weapon_tri-dagger', 1},
		}
	}
}