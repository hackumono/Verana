function prepareShutdown(minutes)
    if(minutes <= 0) then
        doSetGameState(GAMESTATE_SHUTDOWN)
    else
        if(minutes == 1) then
            doBroadcastMessage("Server is going down in " .. minutes .. " minute, please log out now!")
        elseif(minutes <= 3) then
            doBroadcastMessage("Server is going down in " .. minutes .. " minutes, please log out.")
        else
            doBroadcastMessage("Server is going down in " .. minutes .. " minutes.")
        end
        shutdownEvent = addEvent(prepareShutdown, 60000, minutes - 1)
    end
end
function onTime()

local shutdownEvent = 0

    param = 5 -- how many minutes before it will be announced
    if(shutdownEvent ~= 0) then
        stopEvent(shutdownEvent)
    end
    prepareShutdown(math.abs(math.ceil(param)))


    return TRUE
end