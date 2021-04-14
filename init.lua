HYPER = {"cmd", "alt", "ctrl"}

-- From https://www.hammerspoon.org/go/#smartreload
-- Reload configuration on save and display a fading hammerspoon logo
hs.loadSpoon("ReloadConfiguration"):start()
hs.loadSpoon("FadeLogo"):start()
--

-- https://www.hammerspoon.org/Spoons/DeepLTranslate.html
hs.loadSpoon("DeepLTranslate"):bindHotkeys({
    translate = { HYPER, "C" },
})
--

-- Radio meuh controls
local meuh = require('radiomeuh')
hs.hotkey.bind( HYPER, "M", meuh.switch)
--

-- Launches iTerm
hs.hotkey.bind({"ctrl", "cmd"}, "T", function()
    hs.application.open("com.googlecode.iterm2")
end)
--

-- Launches VSCodium in Pablo
hs.hotkey.bind( HYPER, "P", function()
    hs.execute("/Applications/VSCodium.app/Contents/MacOS/Electron ~/Workspace/Pablo/pablo_flutter/")
end)

-- Launches VSCodium in iode mitm
hs.hotkey.bind( HYPER, "I", function()
    hs.execute("/Applications/VSCodium.app/Contents/MacOS/Electron ~/Workspace/iode/mitm-app/")
end)