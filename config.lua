SK = {}

SK.PedData = {
    model = `cs_josef`, 
    coords = vec4(-517.3104, -252.0399, 35.6650, 209.5119), 
  
    target = {
      label = 'Spreek met de dealer', 
      icon = "fa-solid fa-comment" 
    },
  
    blip = {
      enabled = false,
      size = 0.7, 
      sprite = 280, 
      color = 0, 
      title = 'Dealer' 
    }
  }

  SK.Wapens = {
    {
      label = 'Pistol', -- Naam van het wapen in het menu
      name = 'weapon_pistol', -- Spawnnaam van oude geweer
      newlabel = 'Pistol2', -- Naam in het menu van het nieuwe wapen
      newname = 'weapon_pistol2' -- Spawnnaam van het nbieuwe wapen dat je moet krijgen
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