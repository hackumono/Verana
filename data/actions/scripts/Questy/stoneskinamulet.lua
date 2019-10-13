 function onUse(cid, item, frompos, item2, topos)

if item.uid == 7141 then
queststatus = getPlayerStorageValue(cid,5037)
if queststatus == -1 then
doPlayerSendTextMessage(cid,22,"You have found Stone skin amulet.")
doPlayerAddItem(cid,2197,3)
setPlayerStorageValue(cid,5037,1)
else
doPlayerSendTextMessage(cid,22,"It is empty.")
end

return 1
else
return 0
end
end