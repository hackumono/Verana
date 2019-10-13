local config = {
    [2060] = {storage = 2060, name = "Verminor큦", efekt = 20},
    [2061] = {storage = 2061, name = "Infernatil큦", efekt = 15},
    [2062] = {storage = 2062, name = "Tafariel큦", efekt = 2},
    [2063] = {storage = 2063, name = "Apocalypse큦", efekt = 4},
    [2064] = {storage = 2064, name = "Pumina's", efekt = 7},
    [2065] = {storage = 2065, name = "Ashfalor큦", efekt = 17},
    [2066] = {storage = 2066, name = "Andrzej's", efekt = 17}
}
function onStepIn(cid, item, pos)
local cfg = config[item.uid]
local pos = getCreaturePosition(cid)
    if getPlayerStorageValue(cid, cfg.storage) == -1 then
        setPlayerStorageValue(cid,cfg.storage,1)
        doCreatureSay(cid, 'You have touched '..cfg.name..' throne and absorbed some of his spirit.', TALKTYPE_ORANGE_1)
        doSendMagicEffect(getCreaturePosition(cid),cfg.efekt)
        doTeleportThing(cid, {x=pos.x, y=pos.y+2, z=pos.z})
        doCreatureSay(cid,"Begone.", TALKTYPE_ORANGE_1)
    else
        doCreatureSay(cid, 'You have already absorbed some of '..cfg.name..' spirit.', TALKTYPE_ORANGE_1)
        doTeleportThing(cid, {x=pos.x, y=pos.y+2, z=pos.z})    
    end    
return true
end  