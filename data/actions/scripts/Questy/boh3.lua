 function onUse(cid, item, frompos, item2, topos)

if item.uid == 7147 then
queststatus = getPlayerStorageValue(cid,5040)
if queststatus == -1 then
doPlayerSendTextMessage(cid,22,"You have found Boots of haste.")
doPlayerAddItem(cid,2195,1)
setPlayerStorageValue(cid,5040,1)
else
doPlayerSendTextMessage(cid,22,"It is empty.")
end

return 1
else
return 0
end
end