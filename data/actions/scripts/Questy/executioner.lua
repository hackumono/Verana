 function onUse(cid, item, frompos, item2, topos)

if item.uid == 7259 then
queststatus = getPlayerStorageValue(cid,5120)
if queststatus == -1 then
doPlayerSendTextMessage(cid,22,"You have found Executioner.")
doPlayerAddItem(cid, 7453,1)
setPlayerStorageValue(cid,5120,1)
else
doPlayerSendTextMessage(cid,22,"It is empty.")
end

return 1
else
return 0
end
end