QBCore = exports['qb-core']:GetCoreObject()

CreateThread(function()
    exports['qb-target']:AddBoxZone("cokeprocess", vector3(2328.25, 2569.92, 46.68), 4, 4, {
        name="cokeprocess",
        heading=0,
        minZ=45.02,
        maxZ=48.05 }, {
        options = {
            {
                event = "an_cokeprocess:client:startprocess",
                icon = "fas fa-cog",
                label = "Process Coke",
                duty = false,
            },
        },
        distance = 1.5 
    })
end)
RegisterNetEvent('an_cokeprocess:client:startprocess', function()
    QBCore.Functions.Progressbar('brickproc', 'Processing Coke Brick', 5000, false, true, {
        disableMovement = true,
        disableCarMovement = true,
        disableMouse = false,
        disableCombat = true
        }, {}, {}, {}, function()
            TriggerServerEvent('an_cokeprocess:server:process')
        end, function()
            QBCore.Functions.Notify("Canceled..", "error")
    end)
end)