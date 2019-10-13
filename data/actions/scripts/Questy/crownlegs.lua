 function onUse(cid, item, frompos, item2, topos)

if item.uid == 7256 then
queststatus = getPlayerStorageValue(cid,5119)
if queststatus == -1 then
doPlayerSendTextMessage(cid,22,"You have found Crown Legs.")
doPlayerAddItem(cid, 2488,1)
setPlayerStorageValue(cid,5119,1)
else
doPlayerSendTextMessage(cid,22,"It is empty.")
end

return 1
else
return 0
end
end