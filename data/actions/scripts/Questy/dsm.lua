 function onUse(cid, item, frompos, item2, topos)

if item.uid == 7135 then
queststatus = getPlayerStorageValue(cid,5031)
if queststatus == -1 then
doPlayerSendTextMessage(cid,22,"You have found Dragon Scale Armor.")
doPlayerAddItem(cid,2492,1)
setPlayerStorageValue(cid,5031,1)
else
doPlayerSendTextMessage(cid,22,"It is empty.")
end

return 1
else
return 0
end
end