 function onUse(cid, item, frompos, item2, topos)

if item.uid == 7253 then
queststatus = getPlayerStorageValue(cid,5116)
if queststatus == -1 then
doPlayerSendTextMessage(cid,22,"You have found Magic Lightwand.")
doPlayerAddItem(cid, 2163,1)
setPlayerStorageValue(cid,5116,1)
else
doPlayerSendTextMessage(cid,22,"It is empty.")
end

return 1
else
return 0
end
end