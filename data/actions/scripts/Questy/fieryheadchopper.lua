 function onUse(cid, item, frompos, item2, topos)

if item.uid == 7134 then
queststatus = getPlayerStorageValue(cid,5030)
if queststatus == -1 then
doPlayerSendTextMessage(cid,22,"You have found fiery Headchopper.")
doPlayerAddItem(cid,7752,1)
setPlayerStorageValue(cid,5030,1)
else
doPlayerSendTextMessage(cid,22,"It is empty.")
end

return 1
else
return 0
end
end