 function onUse(cid, item, frompos, item2, topos)

if item.uid == 7240 then
queststatus = getPlayerStorageValue(cid,5103)
if queststatus == -1 then
doPlayerSendTextMessage(cid,22,"You have found a Zaoan Armor.")
doPlayerAddItem(cid,11301,1)
setPlayerStorageValue(cid,5103,1)
else
doPlayerSendTextMessage(cid,22,"It is empty.")
end

return 1
else
return 0
end
end