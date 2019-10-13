 function onUse(cid, item, frompos, item2, topos)

if item.uid == 7131 then
queststatus = getPlayerStorageValue(cid,5027)
if queststatus == -1 then
doPlayerSendTextMessage(cid,22,"You have found Magma Legs.")
doPlayerAddItem(cid,7894,1)
setPlayerStorageValue(cid,5027,1)
else
doPlayerSendTextMessage(cid,22,"It is empty.")
end

return 1
else
return 0
end
end