 function onUse(cid, item, frompos, item2, topos)

if item.uid == 7184 then
queststatus = getPlayerStorageValue(cid,5077)
if queststatus == -1 then
doPlayerSendTextMessage(cid,22,"You have found a Relic Sword.")
doPlayerAddItem(cid, 7383,1)
setPlayerStorageValue(cid,5077,1)
else
doPlayerSendTextMessage(cid,22,"It is empty.")
end

return 1
else
return 0
end
end