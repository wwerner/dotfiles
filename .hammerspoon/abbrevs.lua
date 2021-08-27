hs.hotkey.bind(hyper,"t",": datetime", function()
    hs.eventtap.keyStrokes(os.date("%Y-%m-%dT%X"))
end)

hs.hotkey.bind(hyper,"d", ": date",function()
    hs.eventtap.keyStrokes(os.date("%Y-%m-%d"))
end)

hs.hotkey.bind(hyper,"s",": shruggie", function()
    hs.eventtap.keyStrokes("¯\\_(ツ)_/¯")
end)

-- leader keys, in case I want more GH macros: https://gitmemory.com/issue/Hammerspoon/hammerspoon/1732/658132117
hs.hotkey.bind(hyper,"g",": GitHub details block",function()
    hs.eventtap.keyStrokes("<details><summary></summary></details>")
end)

local applicationHotkeys = {
    c = 'Visual Studio Code - Insiders',
    t = 'Kitty',
    b = 'Brave Browser'
  }
  for key, app in pairs(applicationHotkeys) do
    hs.hotkey.bind(hypershift, key, function()
      hs.application.launchOrFocus(app)
    end)
  end
