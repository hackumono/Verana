 function onUse(cid, item, frompos, item2, topos)

if item.uid == 7129 then
queststatus = getPlayerStorageValue(cid,5025)
if queststatus == -1 then
doPlayerSendTextMessage(cid,22,"You have found Noble AXe.")
doPlayerAddItem(cid,7456,1)
setPlayerStorageValue(cid,5025,1)
else
doPlayerSendTextMessage(cid,22,"It is empty.")
end

return 1
else
return 0
end
end