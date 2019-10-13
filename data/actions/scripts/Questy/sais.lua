 function onUse(cid, item, frompos, item2, topos)

if item.uid == 7247 then
queststatus = getPlayerStorageValue(cid,5110)
if queststatus == -1 then
doPlayerSendTextMessage(cid,22,"You have found a Sais.")
doPlayerAddItem(cid,11306,1)
setPlayerStorageValue(cid,5110,1)
else
doPlayerSendTextMessage(cid,22,"It is empty.")
end

return 1
else
return 0
end
end