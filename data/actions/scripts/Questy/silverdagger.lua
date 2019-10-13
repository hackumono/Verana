 function onUse(cid, item, frompos, item2, topos)

if item.uid == 7161 then
queststatus = getPlayerStorageValue(cid,5054)
if queststatus == -1 then
doPlayerSendTextMessage(cid,22,"You have found Silver Dagger.")
doPlayerAddItem(cid,2402,1)
setPlayerStorageValue(cid,5054,1)
else
doPlayerSendTextMessage(cid,22,"It is empty.")
end

return 1
else
return 0
end
end