

local hotkey = require "hs.hotkey"

-- enter fullscreen mode for the focused container
hotkey.bind(hyper, "f", function () hs.execute("chunkc tiling::window --toggle fullscreen", true) end)

-- change focus between tiling / floating windows
hotkey.bind(hyper, ",", function () hs.execute("chunkc tiling::window --toggle float", true) end)

-- change layout of desktop
hotkey.bind(hyper, "b", function () hs.execute("chunkc tiling::desktop --layout bsp", true) end)
hotkey.bind(hyper, "m", function () hs.execute("chunkc tiling::desktop --layout monocle", true) end)

-- kill focused window
hotkey.bind(mash, "x", function () hs.execute("chunkc tiling::window --close", true) end)

-- change focus
hotkey.bind(mash, "h", function () hs.execute("chunkc tiling::window --focus west", true) end)
hotkey.bind(mash, "i", function () hs.execute("chunkc tiling::window --focus south", true) end)
hotkey.bind(mash, "j", function () hs.execute("chunkc tiling::window --focus north", true) end)
hotkey.bind(mash, "k", function () hs.execute("chunkc tiling::window --focus east", true) end)

hotkey.bind(mash, "p", function () hs.execute("chunkc tiling::window --focus prev", true) end)
hotkey.bind(mash, "n", function () hs.execute("chunkc tiling::window --focus next", true) end)

-- move focused window
hotkey.bind(hyper, "h", function () hs.execute("chunkc tiling::window --warp west", true) end)
hotkey.bind(hyper, "i", function () hs.execute("chunkc tiling::window --warp south", true) end)
hotkey.bind(hyper, "j", function () hs.execute("chunkc tiling::window --warp north", true) end)
hotkey.bind(hyper, "k", function () hs.execute("chunkc tiling::window --warp east", true) end)

-- move focused container to workspace
hotkey.bind(hyper, "1", function () hs.execute("chunkc tiling::window --send-to-desktop 1", true) end)
hotkey.bind(hyper, "2", function () hs.execute("chunkc tiling::window --send-to-desktop 2", true) end)
hotkey.bind(hyper, "3", function () hs.execute("chunkc tiling::window --send-to-desktop 3", true) end)
hotkey.bind(hyper, "4", function () hs.execute("chunkc tiling::window --send-to-desktop 4", true) end)
hotkey.bind(hyper, "5", function () hs.execute("chunkc tiling::window --send-to-desktop 5", true) end)

hotkey.bind(hypershift, "up", function () hs.execute("chunkc tiling::window --send-to-desktop $(chunkc get _last_active_desktop)", true) end)
hotkey.bind(hypershift, "right", function () hs.execute("chunkc tiling::window --send-to-desktop next", true) end)
hotkey.bind(hypershift, "left", function () hs.execute("chunkc tiling::window --send-to-desktop prev", true) end)
 