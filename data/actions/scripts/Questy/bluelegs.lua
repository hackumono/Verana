 function onUse(cid, item, frompos, item2, topos)

if item.uid == 7261 then
queststatus = getPlayerStorageValue(cid,5124)
if queststatus == -1 then
doPlayerSendTextMessage(cid,22,"You have found Blue Legs.")
doPlayerAddItem(cid, 7730,1)
setPlayerStorageValue(cid,5124,1)
else
doPlayerSendTextMessage(cid,22,"It is empty.")
end

return 1
else
return 0
end
end