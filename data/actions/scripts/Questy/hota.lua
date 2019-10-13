 function onUse(cid, item, frompos, item2, topos)

if item.uid == 7262 then
queststatus = getPlayerStorageValue(cid,5125)
if queststatus == -1 then
doPlayerSendTextMessage(cid,22,"You have found Helmet Of The Ancient.")
doPlayerAddItem(cid, 2343,1)
setPlayerStorageValue(cid,5125,1)
else
doPlayerSendTextMessage(cid,22,"It is empty.")
end

return 1
else
return 0
end
end