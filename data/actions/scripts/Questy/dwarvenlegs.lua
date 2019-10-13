 function onUse(cid, item, frompos, item2, topos)

if item.uid == 7187 then
queststatus = getPlayerStorageValue(cid,5080)
if queststatus == -1 then
doPlayerSendTextMessage(cid,22,"You have found Dwarven Legs.")
doPlayerAddItem(cid,2504,1)
setPlayerStorageValue(cid,5080,1)
else
doPlayerSendTextMessage(cid,22,"It is empty.")
end

return 1
else
return 0
end
end