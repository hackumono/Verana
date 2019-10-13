 function onUse(cid, item, frompos, item2, topos)

if item.uid == 7124 then
queststatus = getPlayerStorageValue(cid,5020)
if queststatus == -1 then
doPlayerSendTextMessage(cid,22,"You have found Firewalker Boots.")
doPlayerAddItem(cid,9933,1)
setPlayerStorageValue(cid,5020,1)
else
doPlayerSendTextMessage(cid,22,"It is empty.")
end

return 1
else
return 0
end
end