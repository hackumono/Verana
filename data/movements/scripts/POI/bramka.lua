   local config = {
        [2067] = {storage = 2060, name="Verminor큦", efekt = 20},
        [2068] = {storage = 2061, name="Infernatil큦", efekt = 15},
        [2069] = {storage = 2062, name="Tafariel큦", efekt = 2},
        [2070] = {storage = 2063, name="Apocalypse큦", efekt = 4},
        [2071] = {storage = 2064, name="Pumina's", efekt = 7},
        [2072] = {storage = 2065, name="Ashfalor큦", efekt = 17},
        [2073] = {storage = 2066, name ="Andrzej's", efekt = 17}
    }
    function onStepIn(cid, item, pos)
    local pos = {x=33753, y=32070, z=11}
    local cfg = config[item.uid]
        if getPlayerStorageValue(cid, cfg.storage) ~= 1 then
            doTeleportThing(cid, pos)
            doCreatureSay(cid, "Sorry, but you did not absorb enough energy! You must touch " ..cfg.name.. " throne!", TALKTYPE_ORANGE_1)
            doSendMagicEffect(getCreaturePosition(cid),cfg.efekt)
        end
        return true
    end  