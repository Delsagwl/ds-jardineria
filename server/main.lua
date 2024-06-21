QBCore = exports['qb-core']:GetCoreObject()

RegisterServerEvent('ds-jardineria:server:recompensa')
AddEventHandler('ds-jardineria:server:recompensa', function(recompensa)
    local src = source
    local player = QBCore.Functions.GetPlayer(src)

    player.Functions.AddItem('efectivo', recompensa)

    TriggerClientEvent('qb-inventory:client:ItemBox', src, QBCore.Shared.Items['efectivo'], 'add')

    TriggerClientEvent('QBCore:Notify', src, 'Has recibido ' .. recompensa .. ' de efectivo', 'success')
end)
