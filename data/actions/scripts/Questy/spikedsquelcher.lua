 function onUse(cid, item, frompos, item2, topos)

if item.uid == 7159 then
queststatus = getPlayerStorageValue(cid,5052)
if queststatus == -1 then
doPlayerSendTextMessage(cid,22,"You have found Spiked Squelcher.")
doPlayerAddItem(cid,7452,1)
setPlayerStorageValue(cid,5052,1)
else
doPlayerSendTextMessage(cid,22,"It is empty.")
end

return 1
else
return 0
end
end