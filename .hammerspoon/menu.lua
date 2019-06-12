wifiWatcher = nil
function ssidChanged()
local wifiName = hs.wifi.currentNetwork()
if wifiName then
wifiMenu:setTitle(wifiName)
else 
wifiMenu:setTitle("Wifi OFF")
end
end
wifiMenu = hs.menubar.newWithPriority(2147483645)
ssidChanged()
wifiWatcher = hs.wifi.watcher.new(ssidChanged):start()