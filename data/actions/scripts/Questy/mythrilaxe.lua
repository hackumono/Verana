 function onUse(cid, item, frompos, item2, topos)

if item.uid == 7238 then
queststatus = getPlayerStorageValue(cid,5101)
if queststatus == -1 then
doPlayerSendTextMessage(cid,22,"You have found a Mythril Axe.")
doPlayerAddItem(cid,7455,1)
setPlayerStorageValue(cid,5101,1)
else
doPlayerSendTextMessage(cid,22,"It is empty.")
end

return 1
else
return 0
end
end