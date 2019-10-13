 function onUse(cid, item, frompos, item2, topos)

if item.uid == 7146 then
queststatus = getPlayerStorageValue(cid,5042)
if queststatus == -1 then
doPlayerSendTextMessage(cid,22,"You have found Eternal Flames.")
doPlayerAddItem(cid,8304,1)
setPlayerStorageValue(cid,5042,1)
else
doPlayerSendTextMessage(cid,22,"It is empty.")
end

return 1
else
return 0
end
end