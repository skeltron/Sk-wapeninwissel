RegisterNetEvent('sk-wapens:wissel', function(wapenName, newWapenName, wapenLabel, newWapenLabel)
    local src = source
    local xPlayer = ESX.GetPlayerFromId(src)

    if not xPlayer then
        print('sk-wapens : Speler niet gevonden!')
        return
    end

    local verwijderd = exports.ox_inventory:RemoveItem(src, wapenName, 1)

    if verwijderd then
        local toevoegen = exports.ox_inventory:AddItem(src, newWapenName, 1)

        if toevoegen then
            TriggerClientEvent('ox_lib:notify', src, {
                title = 'Succes',
                description = 'Je hebt ' .. wapenLabel .. ' ingewisseld voor ' .. newWapenLabel .. '.',
                type = 'success'
            })
        else
            print('sk-wapens : Kon het nieuwe wapen niet toevoegen!')
        end
    else
        print('sk-wapens : Kon het oude wapen niet verwijderen!')
    end
end)
