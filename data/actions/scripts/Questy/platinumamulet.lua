 function onUse(cid, item, frompos, item2, topos)

if item.uid == 7158 then
queststatus = getPlayerStorageValue(cid,5051)
if queststatus == -1 then
doPlayerSendTextMessage(cid,22,"You have found Platinum amulet.")
doPlayerAddItem(cid,2171,1)
setPlayerStorageValue(cid,5051,1)
else
doPlayerSendTextMessage(cid,22,"It is empty.")
end

return 1
else
return 0
end
end