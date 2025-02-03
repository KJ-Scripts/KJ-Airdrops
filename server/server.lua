local Kebab = { -- Put your license here
    'license:1a7cd7d0c89d22c6393a45dcdc19d5656615df07',  -- License van speler (in dit geval Kebab de owner van KJ Scripts)
}

function isAllowed(player)
    local allowed = false
    for i,id in ipairs(Kebab) do
        for x,pid in ipairs(GetPlayerIdentifiers(player)) do
            if string.lower(pid) == string.lower(id) then
                allowed = true
            end
        end
    end
    return allowed
end

RegisterCommand("airdrop", function(source, args)
	local src = source
	local xPlayer = ESX.GetPlayerFromId(src)
	
	if isAllowed(src) then
		StartCrate()
		TriggerClientEvent('ox_lib:notify', xPlayer.source, { title = 'AIRDROP', description = 'Je hebt de airdrop gestart!', position = 'center-right', type = 'success', duration = 10000 })
	else
		TriggerClientEvent('ox_lib:notify', xPlayer.source, { title = 'AIRDROP', description = 'Je hebt hier niet de juiste permissies voor!', position = 'center-right', type = 'error', duration = 10000 })
	end  
end, true)  

local Crate = false
local TakenCrate = true
local ox_inventory = exports.ox_inventory

CreateThread(function()
	while true do
		Wait(2 * 60 * 60 * 1000)
		StartCrate()
	end
end)

function StartCrate()
	if Crate then
		return
	end

	local crateid = math.random(1, #Config.CrateDrops)
    TriggerClientEvent("KJAirdrop:StartDropCrate", -1, Config.CrateDrops[crateid])
    TriggerClientEvent("KJAirdrop:PlaneDrop", -1, Config.PlaneSht[crateid])
	TriggerClientEvent("KJAirdrop:smoke", -1)
	Crate = true
    TakenCrate = false

	SetTimeout(17 * 60 * 1000, function() -- Set to 17 mits ung timer bago mawala ung crate pag walang kumukuha
        if not TakenCrate then
            TriggerClientEvent("KJAirdrop:AddExplosion", -1)  -- Kung gusto mo alisin ung sumasabog Comment mo to or remove mo line
            Sabotagecrate()
        end
    end)
end

function Sabotagecrate()
    Crate = false
    TriggerClientEvent("KJAirdrop:ResetCrate", -1, Config.CrateDrops[crate])
    TriggerClientEvent("KJAirdrop:ResetCrate", -1, Config.PlaneSht[crate])   
end

RegisterServerEvent('KJAirdrop:PickUpCrate', function(bool)
    local src = source
	
    if not Crate and TakenCrate then
        return
    end

	TakenCrate = false
	if bool then
		local rewardId = generateShipmentRewardIndex()
		local mystash = ox_inventory:CreateTemporaryStash({
			label = 'Airdrop',
			slots = #Config.Weapon.InventoryReward[rewardId],
			maxWeight = calculateInventoryWeight(Config.Weapon.InventoryReward[rewardId]),
			items = Config.Weapon.InventoryReward[rewardId]
		})
		TriggerClientEvent('ox_inventory:openInventory', src, 'stash', mystash)
	end

	Wait(3000) -- Wacht om het object weg te halen
	TriggerClientEvent("KJAirdrop:ResetCrate", -1, Config.CrateDrops[crate])
    TriggerClientEvent("KJAirdrop:ResetCrate", -1, Config.PlaneSht[crate])    
end)

function generateShipmentRewardIndex()
	return math.random(1, #Config.Weapon.InventoryReward)
end

function calculateInventoryWeight(data)
	local weight = 0
	for i = 1, #data do
		local item = data[i]
		local itemData = ox_inventory:Items(item[1])
		if itemData then 
			weight += itemData.weight * item[2]
		end
	end
	return weight
end