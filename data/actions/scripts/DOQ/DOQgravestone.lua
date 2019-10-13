function onUse(cid, item, fromPosition, itemEx, toPosition)

    if getCreatureStorage(cid, storages.done) > 1 then
        doTeleportThing(cid, positions.rewardRoom)
        doSendMagicEffect(positions.rewardRoom, CONST_ME_TELEPORT)
        return true
    end
    return false
end