 function onUse(cid, item, frompos, item2, topos)

if item.uid == 7133 then
queststatus = getPlayerStorageValue(cid,5029)
if queststatus == -1 then
doPlayerSendTextMessage(cid,22,"You have found Haunted Blade.")
doPlayerAddItem(cid,7407,1)
setPlayerStorageValue(cid,5029,1)
else
doPlayerSendTextMessage(cid,22,"It is empty.")
end

return 1
else
return 0
end
end