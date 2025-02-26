local npcscheck

local function createnpcscheck()
  local pedData = SK.PedData

  RequestModel(pedData.model)
  while not HasModelLoaded(pedData.model) do
    Wait(1)
    RequestModel(pedData.model)
  end

  npcscheck = CreatePed(1, pedData.model, pedData.coords.x, pedData.coords.y, pedData.coords.z - 1, pedData. coords.w, false, false)
  FreezeEntityPosition(npcscheck, true)
  SetEntityInvincible(npcscheck, true)
  SetBlockingOfNonTemporaryEvents(npcscheck, true)

end

Citizen.CreateThread(function()
  createnpcscheck()

  exports.ox_target:addLocalEntity(npcscheck, {
    {
      distance = 1.5,
      name = 'wapens_main',
      icon = SK.PedData.target.icon,
      label = SK.PedData.target.label,
      onSelect = function ()
        BuildManagerContext()
      end
    }
  })

  if SK.PedData.blip.enabled then
    local blipData = SK.PedData.blip
    local blip = AddBlipForCoord(SK.PedData.coords.xyz)
    SetBlipSprite(blip, blipData.sprite)
    SetBlipDisplay(blip, 4)
    SetBlipScale(blip, blipData.size)
    SetBlipColour(blip, blipData.color)
    BeginTextCommandSetBlipName("STRING")
    AddTextComponentString(blipData.title)
    EndTextCommandSetBlipName(blip)
  end

end)
