 function onUse(cid, item, frompos, item2, topos)

if item.uid == 7169 then
queststatus = getPlayerStorageValue(cid,5062)
if queststatus == -1 then
doPlayerSendTextMessage(cid,22,"You have found Magic Plate Armor.")
doPlayerAddItem(cid, 2472,1)
setPlayerStorageValue(cid,5062,1)
else
doPlayerSendTextMessage(cid,22,"It is empty.")
end

return 1
else
return 0
end
end