 function onUse(cid, item, frompos, item2, topos)

if item.uid == 7127 then
queststatus = getPlayerStorageValue(cid,5023)
if queststatus == -1 then
doPlayerSendTextMessage(cid,22,"You have found Knight Armor.")
doPlayerAddItem(cid,2476,1)
setPlayerStorageValue(cid,5023,1)
else
doPlayerSendTextMessage(cid,22,"It is empty.")
end

return 1
else
return 0
end
end