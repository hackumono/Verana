 function onUse(cid, item, frompos, item2, topos)

if item.uid == 7139 then
queststatus = getPlayerStorageValue(cid,5035)
if queststatus == -1 then
doPlayerSendTextMessage(cid,22,"You have found Tower shield.")
doPlayerAddItem(cid,2528,1)
setPlayerStorageValue(cid,5035,1)
else
doPlayerSendTextMessage(cid,22,"It is empty.")
end

return 1
else
return 0
end
end