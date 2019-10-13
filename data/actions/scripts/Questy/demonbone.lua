 function onUse(cid, item, frompos, item2, topos)

if item.uid == 7234 then
queststatus = getPlayerStorageValue(cid,5097)
if queststatus == -1 then
doPlayerSendTextMessage(cid,22,"You have found a DemonBone.")
doPlayerAddItem(cid,7431,1)
setPlayerStorageValue(cid,5097,1)
else
doPlayerSendTextMessage(cid,22,"It is empty.")
end

return 1
else
return 0
end
end