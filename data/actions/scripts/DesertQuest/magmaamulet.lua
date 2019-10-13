 function onUse(cid, item, frompos, item2, topos)

if item.uid == 7532 then
queststatus = getPlayerStorageValue(cid,5095)
if queststatus == -1 then
doPlayerSendTextMessage(cid,22,"You have found a Magma Amulet.")
doPlayerAddItem(cid,7890,1)
setPlayerStorageValue(cid,5095,1)
else
doPlayerSendTextMessage(cid,22,"It is empty.")
end

return 1
else
return 0
end
end