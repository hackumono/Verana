 function onUse(cid, item, frompos, item2, topos)

if item.uid == 7128 then
queststatus = getPlayerStorageValue(cid,5024)
if queststatus == -1 then
doPlayerSendTextMessage(cid,22,"You have found Knight Legs.")
doPlayerAddItem(cid,2477,1)
setPlayerStorageValue(cid,5024,1)
else
doPlayerSendTextMessage(cid,22,"It is empty.")
end

return 1
else
return 0
end
end