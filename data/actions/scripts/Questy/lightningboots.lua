 function onUse(cid, item, frompos, item2, topos)

if item.uid == 7132 then
queststatus = getPlayerStorageValue(cid,5028)
if queststatus == -1 then
doPlayerSendTextMessage(cid,22,"You have found Lightning Boots.")
doPlayerAddItem(cid,7893,1)
setPlayerStorageValue(cid,5028,1)
else
doPlayerSendTextMessage(cid,22,"It is empty.")
end

return 1
else
return 0
end
end