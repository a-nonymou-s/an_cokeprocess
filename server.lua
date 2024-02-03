local QBCore = exports['qb-core']:GetCoreObject()

RegisterServerEvent('an_cokeprocess:server:process', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    if Player.Functions.RemoveItem("coke_brick", 1) then
        Player.Functions.AddItem("cokebaggy", math.random(15,25))
        TriggerClientEvent('QBCore:Notify', src, "Coke Process Succeeded", "success")
        QBCore.Functions.Notify("Success", "success")
    else
        TriggerClientEvent('QBCore:Notify', src, "No Coke Brick Found", "error")
        QBCore.Functions.Notify("No Coke Brick", "error")
    end
end)
