RegisterCommand('search', function(source, args, raw)
    TriggerClientEvent('voidrp-inventoryhud:search', source)
end)

RegisterCommand('steal', function(source, args, raw)
    TriggerClientEvent('voidrp-inventoryhud:steal', source)
end)

ESX.RegisterServerCallback('voidrp-inventoryhud:getIdentifier', function(source, cb, serverid)
    cb(ESX.GetPlayerFromId(serverid).identifier)
end)

RegisterServerEvent('voidrp-inventoryhud:StealCash')
AddEventHandler('voidrp-inventoryhud:StealCash', function(data)
    local player = ESX.GetPlayerFromId(source)
    local target = ESX.GetPlayerFromIdentifier(data.target)
    if player and target then
        if Config.Steal.cash then
            player.addMoney(target.getMoney())
            target.setMoney(0)
        end
        if Config.Steal.black_money then
            player.addAccountMoney('black_money', target.getAccount('black_money').money)
            target.setAccountMoney('black_money', 0)
        end
        TriggerClientEvent('voidrp-inventoryhud:refreshInventory', source)
        TriggerClientEvent('voidrp-inventoryhud:refreshInventory', target.source)
    end
end)

RegisterServerEvent('voidrp-inventoryhud:SeizeCash')
AddEventHandler('voidrp-inventoryhud:SeizeCash', function(data)
    local player = ESX.GetPlayerFromId(source)
    local target = ESX.GetPlayerFromIdentifier(data.target)
    if player and target then
        if Config.Seize.cash then
            player.addMoney(target.getMoney())
            target.setMoney(0)
        end
        if Config.Seize.black_money then
            player.addAccountMoney('black_money', target.getAccount('black_money').money)
            target.setAccountMoney('black_money', 0)
        end
        TriggerClientEvent('voidrp-inventoryhud:refreshInventory', source)
        TriggerClientEvent('voidrp-inventoryhud:refreshInventory', target.source)
    end
end)