 function onUse(cid, item, frompos, item2, topos)

if item.uid == 7533 then
queststatus = getPlayerStorageValue(cid,5096)
if queststatus == -1 then
doPlayerSendTextMessage(cid,22,"You have found a 10cc.")
doPlayerAddItem(cid,2160,10)
setPlayerStorageValue(cid,5096,1)
else
doPlayerSendTextMessage(cid,22,"It is empty.")
end

return 1
else
return 0
end
end