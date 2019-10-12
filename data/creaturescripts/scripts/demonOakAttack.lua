function onAttack(cid, target)

    if not isPlayer(cid) or not isMonster(target) then return true end
    if not isInRange(getCreaturePosition(cid), areaPosition[1], areaPosition[2]) and isInRange(getCreaturePosition(target), areaPosition[1], areaPosition[2]) then
        return false
    end
    return true
end