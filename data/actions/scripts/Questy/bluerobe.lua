 function onUse(cid, item, frompos, item2, topos)

if item.uid == 7176 then
queststatus = getPlayerStorageValue(cid,5069)
if queststatus == -1 then
doPlayerSendTextMessage(cid,22,"You have found Blue Robe.")
doPlayerAddItem(cid, 2656,1)
setPlayerStorageValue(cid,5069,1)
else
doPlayerSendTextMessage(cid,22,"It is empty.")
end

return 1
else
return 0
end
end