 function onUse(cid, item, frompos, item2, topos)

if item.uid == 7243 then
queststatus = getPlayerStorageValue(cid,5106)
if queststatus == -1 then
doPlayerSendTextMessage(cid,22,"You have found a Zaoan Helmet.")
doPlayerAddItem(cid,11302,1)
setPlayerStorageValue(cid,5106,1)
else
doPlayerSendTextMessage(cid,22,"It is empty.")
end

return 1
else
return 0
end
end