 function onUse(cid, item, frompos, item2, topos)

if item.uid == 7177 then
queststatus = getPlayerStorageValue(cid,5070)
if queststatus == -1 then
doPlayerSendTextMessage(cid,22,"You have found Crown Shield.")
doPlayerAddItem(cid, 2519,1)
setPlayerStorageValue(cid,5070,1)
else
doPlayerSendTextMessage(cid,22,"It is empty.")
end

return 1
else
return 0
end
end