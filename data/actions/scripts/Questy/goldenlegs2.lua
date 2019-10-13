 function onUse(cid, item, frompos, item2, topos)

if item.uid == 7227 then
queststatus = getPlayerStorageValue(cid,5090)
if queststatus == -1 then
doPlayerSendTextMessage(cid,22,"You have found a Golden Legs.")
doPlayerAddItem(cid,2470,1)
setPlayerStorageValue(cid,5090,1)
else
doPlayerSendTextMessage(cid,22,"It is empty.")
end

return 1
else
return 0
end
end