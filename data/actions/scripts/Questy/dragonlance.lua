function onUse(cid, item, frompos, item2, topos)
if item.uid == 7266 then
queststatus = getPlayerStorageValue(cid,5129)
if queststatus == -1 then
doPlayerSendTextMessage(cid,22,"You have found Dragon Lance!.")
doPlayerAddItem(cid,2414,1 )
setPlayerStorageValue(cid,5129,1)
else
doPlayerSendTextMessage(cid,22,"It is empty.")
end

return 1
else
return 0
end
end