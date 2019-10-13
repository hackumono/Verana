 function onUse(cid, item, frompos, item2, topos)

if item.uid == 7181 then
queststatus = getPlayerStorageValue(cid,5074)
if queststatus == -1 then
doPlayerSendTextMessage(cid,22,"You have found Iron Worker.")
doPlayerAddItem(cid, 8853,1)
setPlayerStorageValue(cid,5074,1)
else
doPlayerSendTextMessage(cid,22,"It is empty.")
end

return 1
else
return 0
end
end