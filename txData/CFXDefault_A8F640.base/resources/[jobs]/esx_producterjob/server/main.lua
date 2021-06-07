-----------------------------------------
-- Created and modify by L'ile Légale RP
-- SenSi and Kaminosekai
-----------------------------------------
ESX = nil
local PlayersTransforming, PlayersSelling, PlayersHarvesting = {}, {}, {}
local freshpotato, jus = 1, 1

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

if Config.MaxInService ~= -1 then
	TriggerEvent('esx_service:activateService', 'producter', Config.MaxInService)
end

TriggerEvent('esx_phone:registerNumber', 'producter', _U('producter_client'), true, true)
TriggerEvent('esx_society:registerSociety', 'producter', 'Producteur', 'society_producter', 'society_producter', 'society_producter', {type = 'private'})
local function Harvest(source, zone)
	if PlayersHarvesting[source] == true then

		local xPlayer  = ESX.GetPlayerFromId(source)
		if zone == "PotatoFarm" then
			local itemQuantity = xPlayer.getInventoryItem('potato').count
			if itemQuantity >= 100 then
				xPlayer.showNotification(_U('not_enough_place'))
				return
			else
				SetTimeout(1800, function()
					xPlayer.addInventoryItem('potato', 1)
					Harvest(source, zone)
				end)
			end
		end
	end
end

RegisterServerEvent('esx_producterjob:startHarvest')
AddEventHandler('esx_producterjob:startHarvest', function(zone)
	local _source = source
  	
	if PlayersHarvesting[_source] == false then
		TriggerClientEvent('esx:showNotification', _source, '~r~C\'est pas bien de glitch ~w~')
		PlayersHarvesting[_source]=false
	else
		PlayersHarvesting[_source]=true
		TriggerClientEvent('esx:showNotification', _source, _U('potato_taken'))  
		Harvest(_source,zone)
	end
end)

RegisterServerEvent('esx_producterjob:stopHarvest')
AddEventHandler('esx_producterjob:stopHarvest', function()
	local _source = source
	
	if PlayersHarvesting[_source] == true then
		PlayersHarvesting[_source]=false
		TriggerClientEvent('esx:showNotification', _source, 'Vous sortez de la ~r~zone')
	else
		TriggerClientEvent('esx:showNotification', _source, 'Vous pouvez ~g~récolter')
		PlayersHarvesting[_source]=true
	end
end)

-- function : Traitement Potato

local function Transform(source, zone)

	if PlayersTransforming[source] == true then

		local xPlayer  = ESX.GetPlayerFromId(source)
		if zone == "TraitementPotato" then
			local itemQuantity = xPlayer.getInventoryItem('potato').count

			if itemQuantity <= 0 then
				xPlayer.showNotification(_U('not_enough_potato'))
				return
			else
				SetTimeout(1800, function()
					xPlayer.removeInventoryItem('potato', 1)
					xPlayer.addInventoryItem('freshpotato', 1)
			
					Transform(source, zone)
				end)
				-- Decommenter et modifier pour faire en sorte qu'il y ai une chance que l'on tombe sur un objet specifique
				--[[
				local rand = math.random(0,100)
				if (rand >= 98) then
					SetTimeout(1800, function()
						xPlayer.removeInventoryItem('raisin', 1)
						xPlayer.addInventoryItem('grand_cru', 1)
						xPlayer.showNotification(_U('grand_cru'))
						Transform(source, zone)
					end)
				else 

				end
				]]

			end
		end
	end	
end

RegisterServerEvent('esx_producterjob:startTransform')
AddEventHandler('esx_producterjob:startTransform', function(zone)
	local _source = source
  	
	if PlayersTransforming[_source] == false then
		TriggerClientEvent('esx:showNotification', _source, '~r~C\'est pas bien de glitch ~w~')
		PlayersTransforming[_source]=false
	else
		PlayersTransforming[_source]=true
		TriggerClientEvent('esx:showNotification', _source, _U('transforming_in_progress')) 
		Transform(_source,zone)
	end
end)

RegisterServerEvent('esx_producterjob:stopTransform')
AddEventHandler('esx_producterjob:stopTransform', function()
	local _source = source
	
	if PlayersTransforming[_source] == true then
		PlayersTransforming[_source]=false
		TriggerClientEvent('esx:showNotification', _source, 'Vous sortez de la ~r~zone')
	else
		TriggerClientEvent('esx:showNotification', _source, 'Vous pouvez ~g~transformer vos patates')
		PlayersTransforming[_source]=true
	end
end)

-- function : Potato selling 

local function Sell(source, zone)

	if PlayersSelling[source] == true then
		local xPlayer  = ESX.GetPlayerFromId(source)
		
		if zone == 'SellFarm' then
			if xPlayer.getInventoryItem('freshpotato').count <= 0 then
				freshpotato = 0
			else
				freshpotato = 1
			end
		
			if freshpotato == 0 then
				xPlayer.showNotification(_U('no_product_sale'))
				return
			elseif xPlayer.getInventoryItem('freshpotato').count <= 0 then
				xPlayer.showNotification(_U('no_potato_sale'))
				freshpotato = 0
				return
			else
				if (freshpotato == 1) then
					SetTimeout(1100, function()
						local money = math.random(30,35)
						local moneyForPlayer = 10
						xPlayer.removeInventoryItem('freshpotato', 1)
						local societyAccount = nil

						TriggerEvent('esx_addonaccount:getSharedAccount', 'society_producter', function(account)
							societyAccount = account
						end)
						societyAccount.addMoney(money)
						-------- infos a prendre ----------
						--[[
						TriggerEvent('esx_addonaccount:getSharedAccount', 'society_producter', function(account)
							societyAccount = account
						end)
						if societyAccount ~= nil then
							societyAccount.addMoney(money)
							TriggerClientEvent('esx:showNotification', xPlayer.source, _U('player_earned') .. moneyForPlayer)
						end 
						]]
						xPlayer.addAccountMoney('bank', moneyForPlayer)
						Sell(source,zone)
					end)
				end
			end
		end
	end
end

RegisterServerEvent('esx_producterjob:startSell')
AddEventHandler('esx_producterjob:startSell', function(zone)
	local _source = source

	if PlayersSelling[_source] == false then
		TriggerClientEvent('esx:showNotification', _source, '~r~C\'est pas bien de glitch ~w~')
		PlayersSelling[_source]=false
	else
		PlayersSelling[_source]=true
		TriggerClientEvent('esx:showNotification', _source, _U('sale_in_prog'))
		Sell(_source, zone)
	end
end)

RegisterServerEvent('esx_producterjob:stopSell')
AddEventHandler('esx_producterjob:stopSell', function()
	local _source = source
	
	if PlayersSelling[_source] == true then
		PlayersSelling[_source]=false
		TriggerClientEvent('esx:showNotification', _source, 'Vous sortez de la ~r~zone')
		
	else
		TriggerClientEvent('esx:showNotification', _source, 'Vous pouvez ~g~vendre')
		PlayersSelling[_source]=true
	end
end)

RegisterServerEvent('esx_producterjob:getStockItem')
AddEventHandler('esx_producterjob:getStockItem', function(itemName, count)
	local xPlayer = ESX.GetPlayerFromId(source)

	TriggerEvent('esx_addoninventory:getSharedInventory', 'society_producter', function(inventory)
		local item = inventory.getItem(itemName)

		if item.count >= count then
			inventory.removeItem(itemName, count)
			xPlayer.addInventoryItem(itemName, count)
		else
			xPlayer.showNotification(_U('quantity_invalid'))
		end

		xPlayer.showNotification(_U('have_withdrawn') .. count .. ' ' .. item.label)
	end)
end)

ESX.RegisterServerCallback('esx_producterjob:getStockItems', function(source, cb)

	TriggerEvent('esx_addoninventory:getSharedInventory', 'society_producter', function(inventory)
		cb(inventory.items)
	end)
end)

RegisterServerEvent('esx_producterjob:putStockItems')
AddEventHandler('esx_producterjob:putStockItems', function(itemName, count)
	local xPlayer = ESX.GetPlayerFromId(source)

	TriggerEvent('esx_addoninventory:getSharedInventory', 'society_producter', function(inventory)
		local item = inventory.getItem(itemName)

		if item.count >= 0 then
			xPlayer.removeInventoryItem(itemName, count)
			inventory.addItem(itemName, count)
		else
			xPlayer.showNotification(_U('quantity_invalid'))
		end

		xPlayer.showNotification(_U('added') .. count .. ' ' .. item.label)
	end)
end)

ESX.RegisterServerCallback('esx_producterjob:getPlayerInventory', function(source, cb)
	local xPlayer    = ESX.GetPlayerFromId(source)
	local items      = xPlayer.inventory

	cb({
		items      = items
	})
end)

--[[
ESX.RegisterUsableItem('jus_raisin', function(source)
	local xPlayer = ESX.GetPlayerFromId(source)

	xPlayer.removeInventoryItem('jus_raisin', 1)

	TriggerClientEvent('esx_status:add', source, 'hunger', 40000)
	TriggerClientEvent('esx_status:add', source, 'thirst', 120000)
	TriggerClientEvent('esx_basicneeds:onDrink', source)
	xPlayer.showNotification(_U('used_jus'))
end)

ESX.RegisterUsableItem('grand_cru', function(source)
	local xPlayer = ESX.GetPlayerFromId(source)

	xPlayer.removeInventoryItem('grand_cru', 1)

	TriggerClientEvent('esx_status:add', source, 'drunk', 400000)
	TriggerClientEvent('esx_basicneeds:onDrink', source)
	xPlayer.showNotification(_U('used_grand_cru'))
end)
]]
