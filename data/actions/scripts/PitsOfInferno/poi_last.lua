function onUse(cid, item, fromPosition, itemEx, toPosition)
local charpos = getPlayerPosition(cid)
    if item.uid == 10281 and charpos.x == 32773 and (charpos.y == 32329 or charpos.y == 32329) and charpos.z == 8 then
        if getPlayerStorageValue(cid,2060) == -1 or getPlayerStorageValue(cid,2061) == -1 or getPlayerStorageValue(cid,2062) == -1 or getPlayerStorageValue(cid,2063) == -1 or getPlayerStorageValue(cid,2064) == -1 or getPlayerStorageValue(cid,2065) == -1 or getPlayerStorageValue(cid,2066) == -1 then
            doPlayerSendTextMessage(cid,25,'You did not absorb enough energy!')
        else
          local newPos = {x=32773, y=32327, z=8}
        doTeleportThing(cid, newPos)
        doSendMagicEffect(newPos, 10)
        end
        
        elseif item.uid == 10281 and charpos.x == 32773 and (charpos.y == 32327 or charpos.y == 32327) and charpos.z == 8 then
          local newPos = {x=32773, y=32329, z=8}
         doSendMagicEffect(getPlayerPosition(cid), 2)
        doTeleportThing(cid, newPos)

        doSendMagicEffect({x=32773,y=32329,z=8}, 10)
        end
    return 1
end