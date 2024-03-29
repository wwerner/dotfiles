require('watcher')
require('position')

local tiling = require "hs.tiling"
local hotkey = require "hs.hotkey"

hotkey.bind(hyper, "c", "WM: cycle layout", function() tiling.cycleLayout() end)
hotkey.bind(hyper, "j", "WM: next", function() tiling.cycle(1) end)
hotkey.bind(hyper, "k", "WM: previous", function() tiling.cycle(-1) end)
hotkey.bind(hyper, "s", "WM: swap", function() tiling.cycle(1); tiling.promote() end)
hotkey.bind(hyper, "space", "WM: promote", function() tiling.promote() end)
-- hotkey.bind(mash, "f", function() tiling.goToLayout("fullscreen") end)

hotkey.bind(hyper,"1", "WM: vertical separation ratio 1", function() tiling.setMainVertical(0.10) end)
hotkey.bind(hyper,"2", "WM: vertical separation ratio 2", function() tiling.setMainVertical(0.25) end)
hotkey.bind(hyper,"3", "WM: vertical separation ratio 3", function() tiling.setMainVertical(0.5) end)
hotkey.bind(hyper,"4", "WM: vertical separation ratio 4", function() tiling.setMainVertical(0.75) end)
hotkey.bind(hyper,"5", "WM: vertical separation ratio 5", function() tiling.setMainVertical(0.90) end)

tiling.set('layouts', {
  'gp-vertical', 
  'main-vertical-variable'
  -- , 'fullscreen'
  -- , 'main-vertical' 
  -- , 'gp-vertical-variable'
})
