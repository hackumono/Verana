 function onUse(cid, item, frompos, item2, topos)

if item.uid == 7157 then
queststatus = getPlayerStorageValue(cid,5050)
if queststatus == -1 then
doPlayerSendTextMessage(cid,22,"You have found Magma boots.")
doPlayerAddItem(cid,7891,1)
setPlayerStorageValue(cid,5050,1)
else
doPlayerSendTextMessage(cid,22,"It is empty.")
end

return 1
else
return 0
end
end