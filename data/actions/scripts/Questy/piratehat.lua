 function onUse(cid, item, frompos, item2, topos)

if item.uid == 7172 then
queststatus = getPlayerStorageValue(cid,5065)
if queststatus == -1 then
doPlayerSendTextMessage(cid,22,"You have found Pirate Hat.")
doPlayerAddItem(cid,6096,1)
setPlayerStorageValue(cid,5065,1)
else
doPlayerSendTextMessage(cid,22,"It is empty.")
end

return 1
else
return 0
end
end