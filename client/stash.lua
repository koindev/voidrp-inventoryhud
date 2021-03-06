local stashSecondaryInventory = {
    type = 'stash',
    owner = ''
}

Citizen.CreateThread(function()
    Citizen.Wait(0)
    for k, v in pairs(Config.Stash) do
        local marker = {
            name = k,
            type = v.markerType or 1,
            coords = v.coords,
            colour = v.markerColour or { r = 55, b = 255, g = 55 },
            size = v.size or vector3(0.5, 0.5, 1.0),
            action = function()
                stashSecondaryInventory.owner = k
                openInventory(stashSecondaryInventory)
            end,
            shouldDraw = function()
                return ESX.PlayerData.job.name == v.job or v.job == 'all'
            end,
            msg = v.msg or 'Depoyu Açın ~INPUT_CONTEXT~',
        }
        TriggerEvent('voidrp-base:registerMarker', marker)
    end
end)
