SK = {}

SK.Logs = '' -- Webhook toevoegen voor logs

SK.PedData = {
    model = `cs_josef`, -- Npc model
    coords = vec4(-517.3104, -252.0399, 35.6650, 209.5119),  -- Coords van waar de npc staat 
  
    target = {
      label = 'Spreek met de dealer', -- Tekst van het ox_target menu
      icon = "fa-solid fa-comment"  -- Icoontje van het ox_target menu
    },
  
    blip = {
      enabled = false, -- Blip = true is aanzetten : blip = false is uitzetten
      size = 0.7, -- Blip groote op de map
      sprite = 280, -- Blip icoontje
      color = 0, -- Blips kleur
      title = 'Dealer'  -- Blip naam
    }
  }

  SK.Wapens = {
    {
      label = 'Pistol', -- Naam van het wapen in het menu
      name = 'weapon_pistol', -- Spawnnaam van het oude wapen
      newlabel = 'Pistol2', -- Naam in het menu van het nieuwe wapen
      newname = 'weapon_pistol2' -- Spawnnaam van het nieuwe wapen dat je moet krijgen
    },
    {
      label = 'Ak', 
      name = 'weapon_assaultrifle', 
      newlabel = 'Ak2',
      newname = 'weapon_assaultrifle2'
    },
  }
  
  SK.ColorPalette = {
    red = '#cf4030',
    green = '#479423',
    blue = '#3789bb',
    yellow = '#fdd041',
    orange = '#f7931a'
  }