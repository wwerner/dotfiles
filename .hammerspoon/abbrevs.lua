hs.hotkey.bind(hyper,"t",function()
    hs.eventtap.keyStrokes(os.date("%d.%m.%y %X"))
end)

hs.hotkey.bind(hyper,"d",function()
    hs.eventtap.keyStrokes(os.date("%Y-%m-%d"))
end)

hs.hotkey.bind(hyper,"s",function()
    hs.eventtap.keyStrokes("¯\\_(ツ)_/¯")
end)
