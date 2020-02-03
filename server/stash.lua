Citizen.CreateThread(function()
    TriggerEvent('voidrp-inventoryhud:RegisterInventory', {
        name = 'stash',
        label = 'Depo',
        slots = 100
    })
end)

Citizen.CreateThread(function()
    TriggerEvent('voidrp-inventoryhud:RegisterInventory', {
        name = 'motel',
        label = 'Motel',
        slots = 80
    })
end)