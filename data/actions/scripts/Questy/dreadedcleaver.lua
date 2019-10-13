 function onUse(cid, item, frompos, item2, topos)

if item.uid == 7162 then
queststatus = getPlayerStorageValue(cid,5055)
if queststatus == -1 then
doPlayerSendTextMessage(cid,22,"You have found Dreaded Cleaver.")
doPlayerAddItem(cid, 7419,1)
setPlayerStorageValue(cid,5055,1)
else
doPlayerSendTextMessage(cid,22,"It is empty.")
end

return 1
else
return 0
end
end