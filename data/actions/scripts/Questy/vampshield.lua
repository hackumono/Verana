function onUse(cid, item, frompos, item2, topos)
if item.uid == 7265 then
queststatus = getPlayerStorageValue(cid,5128)
if queststatus == -1 then
doPlayerSendTextMessage(cid,22,"You have found Vampire Shield!.")
doPlayerAddItem(cid,2534,1 )
setPlayerStorageValue(cid,5128,1)
else
doPlayerSendTextMessage(cid,22,"It is empty.")
end

return 1
else
return 0
end
end