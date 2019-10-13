-- Made by Leon Zawodowiec --
function onStepIn(cid, item, pos)

local pozycja = {x=32493, y=32381, z=7}
local level = 100

    if isCreature(cid) == TRUE then
        if getPlayerLevel(cid) > level then
            doTeleportThing(cid, pozycja)
            doSendMagicEffect(getPlayerPosition(cid), 10)
        else
            doPlayerSendTextMessage(cid, MESSAGE_INFO_DESCR, "You don't have 100 level to pass.")
            return 0
        end
    else
        return 0
    end
return true
end
