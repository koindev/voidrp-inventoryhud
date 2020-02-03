local drops = {}

Citizen.CreateThread(function()
    TriggerEvent('voidrp-inventoryhud:RegisterInventory', {
        name = 'drop',
        label = 'Drop',
        slots = 10
    })
end)

MySQL.ready(function()
    if Config.DeleteDropsOnStart then
        MySQL.Async.execute('DELETE FROM voidrp_inventory WHERE type = \'drop\'')
    end
end)

Citizen.CreateThread(function()
    Citizen.Wait(0)
    MySQL.Async.fetchAll('SELECT * FROM voidrp_inventory WHERE type = \'drop\'', {}, function(results)
        for k, v in pairs(results) do
            drops[v.owner] = json.decode(v.data)
        end
        TriggerClientEvent('voidrp-inventoryhud:updateDrops', -1, drops)
    end)
end)

RegisterServerEvent('voidrp-inventoryhud:savedInventory')
AddEventHandler('voidrp-inventoryhud:savedInventory', function(identifier, type, data)
    if type == 'drop' then
        drops[identifier] = data
        TriggerClientEvent('voidrp-inventoryhud:updateDrops', -1, drops)
    end
end)

RegisterServerEvent('voidrp-inventoryhud:createdInventory')
AddEventHandler('voidrp-inventoryhud:createdInventory', function(identifier, type, data)
    if type == 'drop' then
        drops[identifier] = data
        TriggerClientEvent('voidrp-inventoryhud:updateDrops', -1, drops)
    end
end)

RegisterServerEvent('voidrp-inventoryhud:deletedInventory')
AddEventHandler('voidrp-inventoryhud:deletedInventory', function(identifier, type)
    if type == 'drop' then
        drops[identifier] = nil
        TriggerClientEvent('voidrp-inventoryhud:updateDrops', -1, drops)
    end
end)

