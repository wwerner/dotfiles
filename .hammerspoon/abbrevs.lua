local random = math.random
local function uuid()
    local template ='xxxxxxxx-xxxx-4xxx-yxxx-xxxxxxxxxxxx'
    return string.gsub(template, '[xy]', function (c)
        local v = (c == 'x') and random(0, 0xf) or random(8, 0xb)
        return string.format('%x', v)
    end)
end

hs.hotkey.bind(hyper,"t","Abbrev: datetime", function()
    hs.eventtap.keyStrokes(os.date("%Y-%m-%dT%X"))
end)

hs.hotkey.bind(hyper,"d", "Abbrev: date",function()
    hs.eventtap.keyStrokes(os.date("%Y-%m-%d"))
end)

hs.hotkey.bind(hyper,"h","Abbrev: shruggie", function()
    hs.eventtap.keyStrokes("¯\\_(ツ)_/¯")
end)

hs.hotkey.bind(hyper,"x","Abbrev: table flip", function()
  hs.eventtap.keyStrokes("(╯°□°)╯︵ ┻━┻")
end)

hs.hotkey.bind(hyper,"u","Abbrev: UUID", function()
  hs.eventtap.keyStrokes(uuid())
end)



-- leader keys, in case I want more GH macros: https://gitmemory.com/issue/Hammerspoon/hammerspoon/1732/658132117
hs.hotkey.bind(hyper,"g","Abbrev: GitHub details block",function()
    hs.eventtap.keyStrokes("<details><summary></summary></details>")
end)

local applicationHotkeys = {
    e = 'Visual Studio Code - Insiders',
    t = 'Kitty',
    b = 'Brave Browser'
  }
  for key, app in pairs(applicationHotkeys) do
    hs.hotkey.bind(hypershift, key, function()
      hs.application.launchOrFocus(app)
    end)
  end
  