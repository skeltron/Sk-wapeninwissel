local function openwapenmenu()
    local options = {}
    
    for _, wapen in ipairs(SK.Wapens) do
        local wapens = exports.ox_inventory:Search('count', string.upper(wapen.name))
        if wapens and wapens > 0 then
            table.insert(options, {
                title = wapen.label,
                description = wapen.newlabel ~= '' and ('Nieuwe wapen ' .. wapen.newlabel) or 'Wapen inwisselen',
                icon = "fa-solid fa-truck",
                onSelect = function()
                    TriggerServerEvent('sk-wapens:wissel', wapen.name, wapen.newname, wapen.label, wapen.newlabel)
                end
            })
        end
    end
    
    if #options == 0 then
        lib.notify({
            title = 'Fout',
            description = 'Je hebt geen wapens om in te wisselen.',
            type = 'error'
        })
        return
    end

    lib.registerContext({
        id = 'wapens-inwisselen',
        title = 'Wapen Inwisselen',
        menu = 'wapens_main',
        options = options
    })
    
    lib.showContext('wapens-inwisselen')
end

function BuildManagerContext()
    lib.registerContext({
        id = 'wapens_main',
        title = 'Wapens Inwisselen',
        options = {
            {
                title = 'Lijst Bekijken',
                description = 'Klik hier om de wapens in te wisselen.',
                icon = "fa-solid fa-cart-shopping",
                iconColor = SK.ColorPalette.green,
                onSelect = function()
                    openwapenmenu()
                end
            },
        },
    })
    lib.showContext('wapens_main')
end