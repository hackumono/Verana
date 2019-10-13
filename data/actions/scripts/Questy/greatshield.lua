 function onUse(cid, item, frompos, item2, topos)

if item.uid == 6235 then
queststatus = getPlayerStorageValue(cid,2522)
if queststatus == -1 then
doPlayerSendTextMessage(cid,22,"You have found Great Shield.")
doPlayerAddItem(cid,2522,1)
setPlayerStorageValue(cid,2522,1)
else
doPlayerSendTextMessage(cid,22,"It is empty.")
end

return 1
else
return 0
end
end