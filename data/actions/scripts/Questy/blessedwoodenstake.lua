 function onUse(cid, item, frompos, item2, topos)

if item.uid == 7163 then
queststatus = getPlayerStorageValue(cid,5056)
if queststatus == -1 then
doPlayerSendTextMessage(cid,22,"You have found Blessed Wooden Stake.")
doPlayerAddItem(cid, 5942,1)
setPlayerStorageValue(cid,5056,1)
else
doPlayerSendTextMessage(cid,22,"It is empty.")
end

return 1
else
return 0
end
end