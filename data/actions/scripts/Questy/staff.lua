 function onUse(cid, item, frompos, item2, topos)

if item.uid == 7225 then
queststatus = getPlayerStorageValue(cid,5088)
if queststatus == -1 then
doPlayerSendTextMessage(cid,22,"You have found a Enchanted Staff.")
doPlayerAddItem(cid,2433,1)
setPlayerStorageValue(cid,5088,1)
else
doPlayerSendTextMessage(cid,22,"It is empty.")
end

return 1
else
return 0
end
end