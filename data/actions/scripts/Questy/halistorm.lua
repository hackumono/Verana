function onUse(cid, item, frompos, item2, topos)
if item.uid == 7264 then
queststatus = getPlayerStorageValue(cid,5127)
if queststatus == -1 then
doPlayerSendTextMessage(cid,22,"You have found Halistorm Rod!.")
doPlayerAddItem(cid,2183,1 )
setPlayerStorageValue(cid,5127,1)
else
doPlayerSendTextMessage(cid,22,"It is empty.")
end

return 1
else
return 0
end
end