 function onUse(cid, item, frompos, item2, topos)

if item.uid == 7239 then
queststatus = getPlayerStorageValue(cid,5102)
if queststatus == -1 then
doPlayerSendTextMessage(cid,22,"You have found a Drakinata.")
doPlayerAddItem(cid,11305,1)
setPlayerStorageValue(cid,5102,1)
else
doPlayerSendTextMessage(cid,22,"It is empty.")
end

return 1
else
return 0
end
end