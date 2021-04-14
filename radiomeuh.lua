local meuhIcon = hs.image.imageFromPath("Assets/meuh.png")

local function sendMeuhAlert(content)
    return hs.notify.new():setIdImage(meuhIcon):subTitle(content):send()
end

local function onTaskEnded()
    sendMeuhAlert("RadioMeuh stopped")
end

local meuhTask = hs.task.new(
    "/usr/local/bin/ffplay",
    onTaskEnded,
    {"-nodisp", "https://radiomeuh2.ice.infomaniak.ch/radiomeuh2-128.mp3"}
)

local Meuh = {}

function Meuh.switch()
    if meuhTask:isRunning() then
        meuhTask:terminate()
    else
        sendMeuhAlert("Starting RadioMeuh")
        meuhTask:start()
    end
end

return Meuh