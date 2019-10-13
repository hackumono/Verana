 function onUse(cid, item, frompos, item2, topos)

if item.uid == 7145 then
queststatus = getPlayerStorageValue(cid,5041)
if queststatus == -1 then
doPlayerSendTextMessage(cid,22,"You have found Fire sword.")
doPlayerAddItem(cid,2392,1)
setPlayerStorageValue(cid,5041,1)
else
doPlayerSendTextMessage(cid,22,"It is empty.")
end

return 1
else
return 0
end
end