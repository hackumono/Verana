 function onUse(cid, item, frompos, item2, topos)

if item.uid == 7150 then
queststatus = getPlayerStorageValue(cid,5043)
if queststatus == -1 then
doPlayerSendTextMessage(cid,22,"You have found Mushroom spores.")
doPlayerAddItem(cid,7251,1)
setPlayerStorageValue(cid,5043,1)
else
doPlayerSendTextMessage(cid,22,"It is empty.")
end

return 1
else
return 0
end
end