function onStepIn(cid, item, position, fromPosition)
--by Mef
storage1 = getPlayerStorageValue(cid,13100)
storage2 = getPlayerStorageValue(cid,13101)
storage3 = getPlayerStorageValue(cid,13102)
storage4 = getPlayerStorageValue(cid,13103)
storage5 = getPlayerStorageValue(cid,13104)
storage6 = getPlayerStorageValue(cid,13105)
storage7 = getPlayerStorageValue(cid,13106)
storage8 = getPlayerStorageValue(cid,13107)
text = "You aren't complete all seals!"
    if item.actionid == 13101 then
        if storage1 == 1 then
            doMoveCreature(cid,2)
            doPlayerSendTextMessage(cid,20,text)
        end
    elseif item.actionid == 13102 then
        if storage2 == 1 then
            doMoveCreature(cid,2)
            doPlayerSendTextMessage(cid,20,text)
        end
    elseif item.actionid == 13103 then
        if storage3 == 1 then
            doMoveCreature(cid,2)
            doPlayerSendTextMessage(cid,20,text)
        end
    elseif item.actionid == 13104 then
        if storage4 == 1 then
            doMoveCreature(cid,2)
            doPlayerSendTextMessage(cid,20,text)
        end
    elseif item.actionid == 13105 then
        if storage5 == 1 then
            doMoveCreature(cid,2)
            doPlayerSendTextMessage(cid,20,text)
        end
    elseif item.actionid == 13106 then
        if storage6 == 1 then
            doMoveCreature(cid,2)
            doPlayerSendTextMessage(cid,20,text)
        end
    elseif item.actionid == 13107 then
        if storage7 == 1 then
            doMoveCreature(cid,2)
            doPlayerSendTextMessage(cid,20,text)
        end
    elseif item.actionid == 13108 then
        if storage8 == 1 then
            doMoveCreature(cid,2)
            doPlayerSendTextMessage(cid,20,text)
        end
    end
    return 1
end
