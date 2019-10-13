 function onUse(cid, item, frompos, item2, topos)

if item.uid == 7136 then
queststatus = getPlayerStorageValue(cid,5032)
if queststatus == -1 then
doPlayerSendTextMessage(cid,22,"You have found 100 bolt.")
doPlayerAddItem(cid,2543,100)
setPlayerStorageValue(cid,5032,1)
else
doPlayerSendTextMessage(cid,22,"It is empty.")
end

return 1
else
return 0
end
end