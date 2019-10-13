function onUse(cid, item, fromPosition, itemEx, toPosition)

    if blockingTree[itemEx.itemid] and itemEx.uid == blockingTree[itemEx.itemid][1] then

        local tree = toPosition
        if canEnter(cid, tree) ~= ERROR_NOERROR then
            return doPlayerSendCancel(cid, getError(canEnter(cid, tree), tree)) and doSendMagicEffect(tree, CONST_ME_POFF)
        end

        doTransformItem(itemEx.uid, blockingTree[itemEx.itemid][2])
        doSendMagicEffect(tree, CONST_ME_POFF)
        doMoveCreature(cid, getDirectionTo(getCreaturePosition(cid), toPosition))
        doCreatureSetStorage(cid, storages.treeCut, 1)
        return true

    elseif isInArray(demonOak, itemEx.itemid) then

        local get = getCreatureStorage(cid, itemEx.itemid)
        if get == -1 then doCreatureSetStorage(cid, itemEx.itemid, 1) end

        local k = 0
        for i = demonOak[1], demonOak[table.maxn(demonOak)] do
            if(getCreatureStorage(cid, i) == 12) then
                k = k + 1
            end
        end

        if killAllBeforeCut or k == table.maxn(demonOak) then
            if getCreaturesInRange(TYPE_MONSTER, areaPosition[1], areaPosition[2], GET_COUNT, false) > 0 then
                doPlayerSendTextMessage(cid, MESSAGE_INFO_DESCR, "You need to kill all monsters first.")
                doSendMagicEffect(getCreaturePosition(cid), CONST_ME_POFF)
                return true
            end
        end

        if(k == table.maxn(demonOak)) then
            doTeleportThing(cid, positions.kick)
            doCreatureSetStorage(cid, storages.done, 1)
            return true
        end

        if getCreatureStorage(cid, itemEx.itemid) >= 12 then
            return doSendMagicEffect(toPosition, CONST_ME_POFF)
        end

        if(math.random(100) == 1) then
            return doCreatureSetStorage(cid, itemEx.itemid, 12)
        end


        if summons[get] then
            for i = 1, table.maxn(summons[get]) do
                if monsterExists(summons[get][i]) then
                    doCreateMonster(summons[get][i], positions.summon[math.random(table.maxn(positions.summon))])
                end
            end
            doSendMagicEffect(toPosition, CONST_ME_DRAWBLOOD)
            doCreatureSetStorage(cid, itemEx.itemid, get + 1)
            if math.random(100) >= 50 then
                doTargetCombatHealth(0, cid, floorDamage.type, -floorDamage.min, -floorDamage.max, floorDamage.effect)
            end
        end
    return false
    end
end