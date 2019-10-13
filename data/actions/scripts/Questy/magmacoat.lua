 function onUse(cid, item, frompos, item2, topos)

if item.uid == 7130 then
queststatus = getPlayerStorageValue(cid,5026)
if queststatus == -1 then
doPlayerSendTextMessage(cid,22,"You have found Magma Coat.")
doPlayerAddItem(cid,7899,1)
setPlayerStorageValue(cid,5026,1)
else
doPlayerSendTextMessage(cid,22,"It is empty.")
end

return 1
else
return 0
end
end