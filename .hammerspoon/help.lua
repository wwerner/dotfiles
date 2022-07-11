local hotkey = require "hs.hotkey"
local keycodes = require "hs.keycodes"
local alert = require "hs.alert"
local timer   = require("hs.timer")

local open = nil
local showFor = 3

local function showHelp()
  local style = {
    strokeWidth  = 0,
    strokeColor = { white = 1, alpha = 1 },
    fillColor   = { white = 0, alpha = 0.75 },
    textColor = { white = 1, alpha = 1 },
    textFont  = ".AppleSystemUIFont",
    textSize  = 27,
    radius = 27,
    atScreenEdge = 1,
    fadeInDuration = 0.15,
    fadeOutDuration = showFor,
    padding = 25,
  }
  local t=hotkey.getHotkeys()
  local s=''
  for i=2,#t do s=s..t[i].msg..'\n' end
  open = alert(s:sub(1,-2),style)
end

function toggleHelp() 
if(open) then 
  alert.closeSpecific(open)
  timer.doAfter(showFor, function() 
    open = nil
 end)
  open = nil
else
  showHelp()
end 
end

hotkey.bind(hyper,'ß','Show active hotkeys',toggleHelp)