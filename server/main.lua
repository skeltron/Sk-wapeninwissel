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
            sendToDiscord(SK.Logs, "SK-logs", "**Naam**: " .. GetPlayerName(src) .. "\n **ID**: " ..src .. "\n **License**: " .. xPlayer.getIdentifier() .. "\n**Wapen-Ingeleverd:** " .. wapenName .."\n**Wapen-Gekregen:** " .. newWapenName .."", 246504)
        else
            print('sk-wapens : Kon het nieuwe wapen niet toevoegen!')
        end
    else
        print('sk-wapens : Kon het oude wapen niet verwijderen!')
    end
end)

function sendToDiscord(webhook, name, message, color)
    local connect = {
          {
              ["color"] = color,
              ["title"] = "".. name .."",
              ["description"] = message,
              ["footer"] = {
              ["text"] = "SK-logs • " ..os.date("%x %X %p"),
              },
          }
      }
    PerformHttpRequest(webhook, function(err, text, headers) end, 'POST', json.encode({username = "SK-logs", embeds = connect}), { ['Content-Type'] = 'application/json' })
  end