 function onUse(cid, item, frompos, item2, topos)

if item.uid == 7160 then
queststatus = getPlayerStorageValue(cid,5053)
if queststatus == -1 then
doPlayerSendTextMessage(cid,22,"You have found Dwarven Armor.")
doPlayerAddItem(cid,2503,1)
setPlayerStorageValue(cid,5053,1)
else
doPlayerSendTextMessage(cid,22,"It is empty.")
end

return 1
else
return 0
end
end