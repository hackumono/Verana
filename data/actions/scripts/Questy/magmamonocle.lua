 function onUse(cid, item, frompos, item2, topos)

if item.uid == 7156 then
queststatus = getPlayerStorageValue(cid,5049)
if queststatus == -1 then
doPlayerSendTextMessage(cid,22,"You have found Magma monocle.")
doPlayerAddItem(cid,7900,1)
setPlayerStorageValue(cid,5049,1)
else
doPlayerSendTextMessage(cid,22,"It is empty.")
end

return 1
else
return 0
end
end