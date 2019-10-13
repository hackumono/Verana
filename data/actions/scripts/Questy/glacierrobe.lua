 function onUse(cid, item, frompos, item2, topos)

if item.uid == 7175 then
queststatus = getPlayerStorageValue(cid,5068)
if queststatus == -1 then
doPlayerSendTextMessage(cid,22,"You have found Glacier Robe.")
doPlayerAddItem(cid, 7897,1)
setPlayerStorageValue(cid,5068,1)
else
doPlayerSendTextMessage(cid,22,"It is empty.")
end

return 1
else
return 0
end
end